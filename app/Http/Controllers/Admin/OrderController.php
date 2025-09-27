<?php

namespace App\Http\Controllers\Admin;

use Picqer;
use Exception;
use Throwable;
use Carbon\Carbon;
use App\Models\City;
use App\Models\Sale;
use App\Models\Admin;
use App\Models\Debit;
use App\Models\Order;
use App\Models\Credit;
use App\Models\Balance;
use App\Models\Comment;
use App\Models\Courier;
use App\Models\Product;
use App\Models\SubCity;
use App\Models\Customer;
use App\Models\Reseller;
use App\Models\OrderItem;
use App\Models\CustomerDue;
use App\Models\ComboProduct;
use App\Models\OrderBarcode;
use App\Services\CourierApi;
use App\Services\LogTracker;
use App\Services\SmsService;
use Illuminate\Http\Request;
use App\Models\GeneralSetting;
use App\Services\HelperService;
use App\Models\ResellerCashbook;
use App\Services\AccountService;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Services\SteadFast\BulkCreate;
use Illuminate\Support\Facades\Response;
use App\Services\SteadFast\TrackingOrder;
use App\Http\Requests\Order\Admin\StoreRequest;
use App\Http\Requests\Order\Admin\UpdateRequest;
use App\Http\Controllers\Reseller\HomeController;

class OrderController extends Controller
{
    public function __construct(Request $request)
    {
        $this->middleware('admin');
    }


    

    public function index(Request $request) {
        // dd($request->all());

        if (!empty($request->search)) {
            //search type 1 = order search & search type = 2 product search
            if ($request->search_type == 1) {
                
                if ($request->type == 'all') {

                    if (strlen($request->search) <  7 ) {
                        $orders = Order::where('invoice_no','like', '%' .$request->search .'%')
                                    ->orderBy('id', 'DESC')
                                    ->with(['customer:id,name,address','createAdmin:id,name','approvedBy:id,name','courier','orderItem.product:id,name,thumbnail_img,product_code'])
                                    ->paginate(5);
        
                    }else {        
                        $orders = Order::where('customer_phone','like', '%' .$request->search .'%')
                                    ->orderBy('id', 'DESC')
                                    ->with(['customer:id,name,address','createAdmin:id,name','approvedBy:id,name','courier','orderItem.product:id,name,thumbnail_img,product_code'])
                                    ->paginate(5);
                    }

                }else {
                    if (strlen($request->search) <  7) {
                        $orders = Order::where('status',$request->status)
                                    ->where('invoice_no','like', '%' .$request->search .'%')
                                    ->orderBy('id', 'DESC')
                                    ->with(['customer:id,name,address','createAdmin:id,name','approvedBy:id,name','courier','orderItem.product:id,name,thumbnail_img,product_code'])
                                    ->paginate(5);
        
                    }else {        
                        $orders = Order::where('status',$request->status)
                                    ->where('customer_phone','like', '%' .$request->search .'%')
                                    ->orderBy('id', 'DESC')
                                    ->with(['customer:id,name,address','createAdmin:id,name','approvedBy:id,name','courier','orderItem.product:id,name,thumbnail_img,product_code'])
                                    ->paginate(5);
                    }
                }
            } else {
                $search = $request->search ;
                if ($request->type == 'all' &&  $request->status == 'all' && !empty($request->start_date) && !empty($request->end_date)) {
                    
                    $orders = Order::orderBy('id', 'desc')
                                ->whereDate('created_at','>=',$request->start_date)->whereDate('created_at','<=',$request->end_date)
                                ->with(['customer:id,name,address','createAdmin:id,name','approvedBy:id,name','courier','orderItem.product:id,name,thumbnail_img,product_code'])
                                ->WhereHas('orderItem.product', function ($query) use ($search) {
                                    $query->where('product_code',$search);
                                })                               
                                ->paginate(40);
    
                }else if($request->type == 'all' && !empty($request->start_date) && !empty($request->end_date)){
                    $orders = Order::orderBy('id', 'desc')
                    ->where('status', $request->status)
                    ->whereDate('created_at','>=',$request->start_date)->whereDate('created_at','<=',$request->end_date)
                    ->with(['customer:id,name,address','createAdmin:id,name','approvedBy:id,name','courier','orderItem.product:id,name,thumbnail_img,product_code'])
                    ->WhereHas('orderItem.product', function ($query) use ($search) {
                        $query->where('product_code',$search);
                    })
                   
                    ->paginate(40);
                }else if ($request->type == 'all' && $request->status != 'all') {
                    $orders = Order::orderBy('id', 'desc')->where('status', $request->status)
                                ->with(['customer:id,name,address','createAdmin:id,name','approvedBy:id,name','courier','orderItem.product:id,name,thumbnail_img,product_code'])
                                ->WhereHas('orderItem.product', function ($query) use ($search) {
                                    $query->where('product_code',$search);
                                })
                                ->paginate(40);
    
                }else if ($request->type == 'all') {
                    $orders = Order::orderBy('id', 'desc')
                                ->with(['customer:id,name,address','createAdmin:id,name','approvedBy:id,name','courier','orderItem.product:id,name,thumbnail_img,product_code'])
                                ->WhereHas('orderItem.product', function ($query) use ($search) {
                                    $query->where('product_code',$search);
                                })
                                ->paginate(40);
    
                }else{    

                   $orders = Order::where('status',$request->status)->orderBy('id', 'desc')
                              ->with(['customer:id,name,address','createAdmin:id,name','approvedBy:id,name','courier','orderItem.product:id,name,thumbnail_img,product_code'])
                              ->WhereHas('orderItem.product', function ($query) use ($search) { $query->where('product_code',$search); })                              
                              ->paginate(40);
                }
            }           


            return response()->json([
                'status'=>'SUCCESS',
                'orders'=>$orders,
                'order_count'=> Order::orderStatusCount(),
                'comments'=>Comment::all(),
            ]);

        }else{

            // when only $request city
            if(!empty($request->start_date) && !empty($request->end_date) && !empty($request->city)){
                return Order::orderFilterWithStartAndEndDateAndCity($request);
            }
            // when only $request city
            if(empty($request->start_date) && empty($request->end_date) && !empty($request->city)){
                return Order::orderFilterWithCity($request);
            }
            
            if(empty($request->start_date) && empty($request->end_date) && empty($request->courier_id)){
                return Order::ordersAll($request);
            }
            // when only $request start date
            if(!empty($request->start_date) && empty($request->end_date) && empty($request->courier_id)){
                return Order::orderFilterWithStartDate($request);
            }
            // when  $request start date and end date
            if(!empty($request->start_date) && !empty($request->end_date) && empty($request->courier_id)){
                return Order::orderFilterWithStartAndEndDate($request);
            }
            //filtering with courier
            if(!empty($request->courier_id)){
                return Order::orderFilterWithCourier($request);
            }

        }

    }

    public function orderStatistic()
    {
        return response()->json([
            'status' => 'OK',
            'order_count' => Order::orderStatusCount(),
        ]);
    }

    public function store(Request $request)
    {
        // return $request->all();
        $data = $request->validate([
            'customer_phone' => 'required|digits:11 ',
            'name' => 'required ',
            'address' => 'required ',
            'paid_by' => 'nullable',
            'city_id' => 'nullable',
            'courier_id' => 'nullable|integer',
            'shipping_cost' => 'required',
            'sub_city_id' => 'nullable',
            'order_type' => 'required',
            'discount' => 'nullable|integer',
            'total' => 'required|integer',
            'paid' => 'nullable|integer',
            'status' => 'required|integer',
            'note' => 'nullable',
            'redx_delivery_area_id' => 'nullable',
        ]);

        DB::beginTransaction();
        try {

            //first find find the customer
            $customer = Customer::where('phone', $data['customer_phone'])->first();
            !empty($customer) ? $customer->update($data) :    $customer = Customer::storeCustomer($data)  ;
            $customer = Customer::where('phone', $data['customer_phone'])->first();
            //order data
            $data['customer_id'] = $customer->id;
            $data['invoice_no'] = 123;
            $data['create_admin_id'] = session()->get('admin')['id'];
            //store who is approved
            if ($data['status'] == 3) {
                $data['approved_admin_id'] = session()->get('admin')['id'];
                $data['approved_date'] = Carbon::now();
            }
            //store who is pending
            if ($data['status'] == 2) {
                $data['pending_admin_id'] = session()->get('admin')['id'];
                $data['pending_date'] = Carbon::now();
            }
            $order =Order::query()->create($data);
            //if order save then save the order details
            foreach ($request->products as $product) {
                $details = new OrderItem();
                $details->order_id = $order->id;
                $details->product_id = $product['id'];
                $details->price = $product['price'];
                $details->quantity = $product['quantity'];
                $details->total = $product['quantity'] * $product['price'];
                // $details->attribute_id = $product['attribute_id'] ?? null;
                // $details->variant_id = $product['variant_id'] ?? null;
                $details->size = $product['size'] ?? null;
                $details->color = $product['color'] ?? null;
                $details->weight = $product['weight'] ?? null;
                $details->save();
            }
            $order->invoice_no = 2222 + $order->id;
            $order->save();
            //create a credit
            if ($order->paid > 0) {
                $comment = "Order Paid Amount '$order->paid' Paid by '$order->paid_by'. Order Invoice Number '$order->invoice_no";
                AccountService::creditStore('Order Paid Amount', $order->paid,$order->paid_by,$order->id,null,$comment );
            }
            //create a barcode for order
            HelperService::orderBarcodeStore($order->id,$order->invoice_no);
            //send message
            (new SmsService())->SendMessageCustomer($order->customer_phone,$customer->name,$order->invoice_no);

            DB::commit();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Order created successfully',
            ]);

        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ]);
        }




    }

    public function resellerOrderStore(Request $request)
    {
        // return $request->all();
        $data = $request->validate([
            'customer_phone' => 'required|digits:11 ',
            'name' => 'required ',
            'address' => 'required ',
            'reseller_id' => 'required|integer',
            'city_id' => 'required|integer|min:1',
            'shipping_cost' => 'required|integer|min:1',
            'order_type' => 'required|integer|min:1',
            'sub_city_id' => 'required|integer|min:1',
            'status' => 'required|integer|min:1',
            'total' => 'required|integer|min:1',
            'discount' => 'nullable|integer|min:0',
            'paid' => 'required|integer|min:0',
            'due' => 'required|integer|min:0',
            'courier_id' => 'nullable|integer',
            'note' => 'nullable',
        ]);

        DB::beginTransaction();
        try {
            //check balance
            if ($request->paid > 0) {
                $currentBalance =
                    HomeController::resellerWalletValue($data['reseller_id']) ;
                if ($currentBalance + $data['paid'] < -300) {
                    return response()->json([
                        'status' => 0,
                        'message' => 'wallet balance  can not be less   than  BDT -300.',
                    ]);
                }
            }
            //first find find the customer
            $reseller = Reseller::findOrFail($data['reseller_id']);
            $customer = Customer::where('phone', $data['customer_phone'])->first();
            !empty($customer) ? $customer->update($data) :  Customer::storeCustomer($data)  ;
            $customer = Customer::where('phone', $data['customer_phone'])->first();
            $data['customer_id'] = $customer->id;
            $data['invoice_no'] = 123;
            $order = Order::query()->create($data);
            //if order save then save the order details
            foreach ($request->products as $product) {
                //order items
                $details = new OrderItem();
                $details->order_id = $order->id;
                $details->product_id = $product['id'];
                $details->price = $product['price'];
                $details->quantity = $product['quantity'];
                $details->total = $product['quantity'] * $product['price'];
                // $details->attribute_id = $product['attribute_id'] ?? null;
                // $details->variant_id = $product['variant_id'] ?? null;
                $details->size = $product['size'] ?? null;
                $details->color = $product['color'] ?? null;
                $details->weight = $product['weight'] ?? null;
                $details->save();
            }
            $order->invoice_no = $order->id + 2222;
            $order->save();
            //create a barcode for order
            HelperService::orderBarcodeStore($order->id,$order->invoice_no);
            //send message
            (new SmsService())->SendMessageToCustomerFromResellerOrder($order->customer_phone,$customer->name,$order->invoice_no,$reseller);

            DB::commit();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Order created successfully',
            ]);

        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ]);
        }
    }



    public static function stockRemover($products)
    {
        foreach ($products as $product) {
            $product_stock = Product::where('id', $product['id'])->first();
            $product_stock->stock = $product_stock->stock - $product['quantity'];
            $product_stock->save();
        }
    }



    public function update(Request $request, $id)
    {
        // return $request->all();
        $data = $request->validate([
            'customer_phone' => 'required|digits:11 ',
            'name' => 'required ',
            'address' => 'required ',
            'city_id' => 'nullable',
            'courier_id' => 'nullable|integer',
            'shipping_cost' => 'required',
            'sub_city_id' => 'nullable',
            'order_type' => 'required',
            'discount' => 'nullable|integer',
            'total' => 'required|integer',
            'paid' => 'nullable|integer',
            'paid_by' => 'nullable',
            'note' => 'nullable',
            'status' => 'nullable',
            'redx_delivery_area_id' => 'nullable',
            'total_order' => 'nullable',
        ]);

        $order = Order::findOrFail($id);
        DB::beginTransaction();
        try {

            //first find find the customer
            $customer = Customer::where('phone', $data['customer_phone'])->first();
            !empty($customer) ? $customer->update($data) : Customer::storeCustomer($data);

            if ($order->status == 4 || $order->status == 5) {
                return \response()->json('Order can not edit in shipment and delivered');
            }

            //update credit
            if($order->order_type != 4 &&   $data['paid'] > 0){
                $credit=Credit::where('order_id',$order->id)->first();
                if($credit){
                    $credit->amount=$data['paid'] ;
                    $credit->purpose = "order advance paid amount updated ";
                    $credit->comment = "order advance paid amount updated previous amount ".$credit->amount. ' updated amount '.$data['paid'] ;
                    $credit->save();
                }else{
                    $comment ="order advance paid amount " .$data['paid'] ." the order invoice number is ".$order->invoice_no;
                    AccountService::creditStore('order advance payment', $data['paid'],$request->paid_by,$order->id,null,$comment );
                }
            }

            $data['customer_id'] = $customer->id;
            $order->update($data);
            //delete previous items
            OrderItem::where('order_id', $order->id)->delete();
            //re-insert items
            foreach ($request->products as $product) {
                $details = new OrderItem();
                $details->order_id = $order->id;
                $details->product_id = $product['product_id'];
                $details->price = $product['price'];
                $details->quantity = $product['quantity'];
                $details->total = $product['quantity'] * $product['price'];
                $details->size = $product['size'] ?? null;
                $details->color = $product['color'] ?? null;
                $details->weight = $product['weight'] ?? null;
                $details->save();
            }

            DB::commit();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Order updated successfully',
            ]);

        }catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ]);
        }


    }





    public function approved($id)
    {
        // return $response = (new TrackingOrder())->tracking('438723B61');
        $order = Order::findOrFail($id);
        try {
            $order->status = 3;
            if(empty($order->approved_admin_id)){
                $order->approved_admin_id=session()->get('admin')['id'];
                $order->approved_date=Carbon::now();
            }
            $order->save();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Order  approved  successfully',
            ]);
        }catch (Exception $e) {
            return $e->getMessage();
        }
    }





    public function packaging($id)
    {
        $order = Order::findOrFail($id);
        try {
            $order->status = 8;
            $order->packaging_admin_id = session()->get('admin')['id'];
            $order->packaging_date = Carbon::now();
            $order->save();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Order  packaging  successfully done',
            ]);
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }



    public function pending($id)
    {
        $order = Order::findOrFail($id);
        $order->status = 2;
        $order->pending_admin_id = session()->get('admin')['id'];
        $order->pending_date = Carbon::now();
        $order->save();
        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'Order  pending  successfully',
        ]);
    }




    public function delivered(Request $request, $id){

        $order = Order::findOrFail($id);
        if ($order->status != 4) {
            return response()->json('order not shipment');
        }
        DB::beginTransaction();
        try {
            //when order delivered,then order amount is created at a new credit.....
            //if order is reseller order. then store reseller cashbook
            if (!empty($order->reseller_id) && $order->order_type == 4) {
                $order_items = OrderItem::where('order_id', $order->id)->get();
                $reselling_amount = 0;
                foreach ($order_items as $item) {
                    $product = Product::findOrFail($item->product_id);
                    $reselling_amount +=(intval($product->price) - intval($product->reselling_price)) * intval($item->quantity);
                }
                //reseller commission inserted
                $reseller = Reseller::findOrFail($order->reseller_id);
                $amount = intval($reselling_amount) - intval($order->discount);
                $note = 'successful order  delivered commission received ' .$amount .' BDT order discount ' .$order->discount .' BDT the order invoice number is ' .$order->invoice_no;
                HelperService::resellerCashbookStore($order->id, $reseller->id, $amount, 1, $note);
                //company commission inserted
                $comment ='Delivered reseller order amount ' .intval($order->total) .' BDT, shipping charge ' . intval($order->shipping_cost) . ' BDT company profit ' .(intval($order->total) - $reselling_amount) .' BDT reseller commission  ' .$amount .' BDT  Order Invoice number is ' .$order->invoice_no .' paid by reseller ' .$order->paid .' BDT and discount ' .$order->discount .' BDT';
                $c_amount =  (intval($order->total) + intval($order->shipping_cost)) - intval($order->discount);
                AccountService::creditStore('Delivered Order', $c_amount,$request->credit_in,$order->id,null,$comment );
                //debit credit for reseller paid amount
                if($order->paid > 0 ){
                    //company expense to match calculation the paid amount of reseller order create paid
                    AccountService::storeDebit(111,$order->paid,'Cash','expense of dropshipper order paid amount ',$order->paid .' the order invoice number is '.$order->invoice_no );
                }

                //if the reseller is referred by any reseller then apply referred commission to referred reseller
                if (!empty($reseller->refer_id)) {
                    $referred_reseller = Reseller::where('username', $reseller->refer_id)->firstOrFail();
                    $commission_value = GeneralSetting::latest()->first()->reseller_refer_commission;
                    $without_shipping_amount = intval($c_amount) - intval($order->shipping_cost);
                    $commission_amount = intval(($without_shipping_amount / 100) * $commission_value);
                    $c_note ='referred commission received ' .$commission_amount .' BDT. the referred reseller is ' .$reseller->name .' the order invoice number is ' .$order->invoice_no;
                    HelperService::resellerCashbookStore($order->id,$referred_reseller->id,$commission_amount,1,$c_note);
                }
            } else {
                $total = intval($order->total) + intval($order->shipping_cost) - (intval($order->paid) + intval($order->discount));
                if ($total > 0) {
                    $comment ='Delivered Order. Order Amount BDT ' .$total .' Order Invoice number is ' .$order->invoice_no;
                    $c_amount =($order->total + $order->shipping_cost) - ($order->paid + $order->discount);
                    AccountService::creditStore('Delivered Order', $c_amount,$request->credit_in,$order->id,null,$comment );
                }
            }

            $order->status = 5;
            $order->delivered_admin_id = session()->get('admin')['id'];
            $order->delivery_date = Carbon::now();
            $order->save();

            DB::commit();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Order  delivered successfully',
            ]);
        } catch (Throwable $e) {
            DB::rollBack();
            LogTracker::failLog($e, session()->get('admin')['id']);
            return response()->json([
                'status' => 'FAILED',
                'message' => $e->getMessage(),
            ]);
        }
    }



    public function shipment($id)
    {
        $order = Order::findOrFail($id);
        DB::beginTransaction();
        try {
            if (!empty($order->courier_id) && !empty($order->memo_no)) {
                //check product stock before order approved
                $order_items = OrderItem::where('order_id', $order->id)->get();
                foreach ($order_items as $order_item) {
                    $product = Product::where('id', $order_item->product_id)->firstOrFail();
                    //combo campaign products
                    if ($product->is_combo == 1) {
                        $combo_products_id = ComboProduct::where('combo_product_id', $product->id)->select('general_product_id')->pluck('general_product_id');
                        $combo_products = Product::whereIn('id', $combo_products_id)->select('id', 'stock', 'product_code')->get();
                        foreach ($combo_products as $item) {
                            if ($item->stock < 1) {
                                return response()->json(['message' => 'this product ' .$item->product_code .' stock available ' . $item->stock .' and ordered quantity is ' .$order_item->quantity],400);
                            } else {
                                $item->stock = $item->stock - 1;
                                $item->save();
                                //for exchange order items. re-stocking exchange items
                                if($order_item->status == 3 ) {
                                    $product = Product::findOrFail($order_item->product_id);
                                    $product->stock = $product->stock + $order_item->quantity ;
                                    $product->save();
                                }
                            }
                        }
                    } else {
                        if ($product->stock <= 0 || $product->stock < $order_item->quantity) {
                            return response()->json(['message' => 'This product ' .$product->product_code .'  available stock is ' .$product->stock .'. but ordered quantity is ' .$order_item->quantity . ' . So please stock the product first ',],400);
                        } else {
                            //for exchange order items. re-stocking exchange items
                            if($order_item->status == 3 ){
                                $product = Product::findOrFail($order_item->product_id);
                                $product->stock = $product->stock + $order_item->quantity;
                                $product->save();
                            }else{
                                $product->stock = $product->stock - $order_item->quantity;
                                $product->save();
                            }
                        }
                    }
                }

                $order->status = 4;
                $order->shipment_admin_id = session()->get('admin')['id'];
                $order->shippment_date = Carbon::now();
                $order->save();
                // (new SmsService())->sendShipmentMessage($order);
                DB::commit();
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'Order shipped successfully',
                ]);
            }
        } catch (Throwable $th) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $th->getMessage(),
            ]);
        }
    }




    public function return($id)
    {
        $order = Order::findOrFail($id);
        DB::transaction(function () use ($order) {

            $order_items = OrderItem::where('order_id', $order->id)->get();
            foreach ($order_items as $order_item) {
                if($order_item->status == 1){
                    $product = Product::where('id', $order_item->product_id)->firstOrFail();
                    //if combo campaign products
                    if ($product->is_combo == 1) {
                        $combo_products_id = ComboProduct::where('combo_product_id', $product->id)->select('general_product_id')->pluck('general_product_id');
                        $combo_products = Product::whereIn('id', $combo_products_id)->select('id', 'stock', 'product_code')->get();
                        foreach ($combo_products as $item) {
                            $item->stock = $item->stock + 1;
                            $item->save();
                        }
                    } else {
                        $product->stock = $product->stock + $order_item->quantity;
                        $product->save();
                    }
                }
                
            }

            $order->status = 7;
            $order->return_admin_id = session()->get('admin')['id'];
            $order->return_date = Carbon::now();
            $order->save();
            $return_amount = $order->total - $order->discount;
            (new SmsService())->sendReturnMessage(session()->get('admin')['name'], $order->invoice_no, $return_amount);

            //if order is reseller order. and order is returned then apply return charge from reseller cashbook
            if (!empty($order->reseller_id) && $order->order_type == 4) {
                $reseller = Reseller::findOrFail($order->reseller_id);
                $shipping_amount = ($order->shipping_cost / 100) * $reseller->order_return_cost;
                //debit from cashbook
                $cashbook = new ResellerCashbook();
                $cashbook->reseller_id = $order->reseller_id;
                $cashbook->invoice_no = HelperService::uniqueInvoiceMaker(4);
                $cashbook->is_income = 0;
                $cashbook->amount = $shipping_amount;
                $cashbook->order_id = $order->id;
                $cashbook->created_by = session()->get('admin')['id'];
                $cashbook->note = 'order return amount BDT ' . $shipping_amount . ' pay off from cashbook';
                $cashbook->save();

                if ($order->paid > 0) {
                    //checking if order is paid by admin
                    $credit = Credit::where('order_id', $order->id)->first();
                    if (!$credit) {
                        //refund reseller cashbook
                        $cashbook = new ResellerCashbook();
                        $cashbook->reseller_id = $order->reseller_id;
                        $cashbook->invoice_no = HelperService::uniqueInvoiceMaker(4);
                        $cashbook->is_income = 1;
                        $cashbook->amount = $order->paid;
                        $cashbook->order_id = $order->id;
                        $cashbook->created_by = session()->get('admin')['id'];
                        $cashbook->note = 'order  amount refund BDT ' . $shipping_amount .  ' order invoice no' . $order->invoice_no;
                        $cashbook->save();
                    }
                }
            }
        });

        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'Order  returned successfully',
        ]);
    }


    public function cancel(Request $request)
    {     
        $request->validate([
            'cancel_order_id' => 'required|integer',
            'status' => 'required'
        ]);


        if (empty($request->cancel_order_id) || empty($request->status)) {
            return response()->json([
                'status' => false,
                'message' => 'Please select any order with customer status'
            ]);
        }
        
        $order = Order::findOrFail($request->cancel_order_id);
        DB::beginTransaction();
        try {
            if ($order->status != 1 && $order->status != 2 && $order->status != 3) {
                $details = OrderItem::where('order_id', $order->id)->get();
                foreach ($details as $detail) {
                    $product = Product::where('id', $detail->product_id)->first();
                    $product->stock = $product->stock + $detail->quantity;
                    $product->save();
                }
            }

            $order->status = 6;
            $order->cancel_admin_id = session()->get('admin')['id'];
            $order->cancel_date = Carbon::now();
            $order->save();

            if (!empty($request->status)) {  
                $customer = Customer::where('phone', $order->customer_phone)->first();
                $customer->status = $request->status;
                $customer->save();
            }
            //if order is reseller order. and order has paid amount then restore reseller cashbook
            if ($order->paid > 0 && !empty($order->reseller_id) && $order->order_type == 4) {
                //checking if order is paid by admin
                $credit_check = Credit::where('order_id', $order->id)->first();
                if (!$credit_check) {
                    $cashbook = new ResellerCashbook();
                    $cashbook->reseller_id = $order->reseller_id;
                    $cashbook->invoice_no = 123;
                    $cashbook->is_income = 1;
                    $cashbook->amount = $order->paid;
                    $cashbook->order_id = $order->id;
                    $cashbook->created_by = session()->get('admin')['id'];
                    $cashbook->note = 'order canceled amount restored in cashbook';
                    $cashbook->save();
                    $cashbook->invoice_no = $cashbook->id + 2222;
                    $cashbook->save();
                }
            }

            DB::commit();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Order canceled successfully',
            ]);
        } catch (Throwable $e) {
            DB::rollBack();
            LogTracker::failLog($e, session()->get('admin')['id']);
            return response()->json([
                'status' => 'FAILED',
                'message' => $e->getMessage(),
            ]);
        }
    }

    public function OrderCoutierUpdate(Request $request, $id)
    {
        $order = Order::find($id);
        //  return $request->all();
        if ($order) {
            $order->courier_id = $request->courier_id;
            $order->memo_no = $request->memo_no;

            if ($order->save()) {
                $courier = Courier::where('id', $order->courier_id)->first();

                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'Courier Updated Successfully',
                    'order' => $order,
                    'courier' => $courier,
                ]);
            }
        }
    }

    public function OrderFilter(Request $request)
    {

        $orders = '';
        $paginate = $request->item ?? 10;

        if (!empty($request->start_date) && empty($request->end_date)) {
            if ($request->status != 'all') {
                $orders = Order::whereDate('created_at', '=', $request->start_date)
                    ->where('status', $request->status)
                    ->with([
                        'customer:id,name,address',
                        'createAdmin:id,name',
                        'courier',
                        'reseller:id,phone,name',
                        'orderItem.product.productImage',
                    ])
                    ->paginate($paginate);
            } else {
                $orders = Order::whereDate('created_at', '=', $request->start_date)
                    ->with([
                        'customer:id,name,address',
                        'createAdmin:id,name',
                        'courier',
                        'reseller:id,phone,name',
                        'orderItem.product.productImage',
                    ])
                    ->paginate($paginate);
            }
        }
        if (!empty($request->end_date) && !empty($request->start_date)) {
            if ($request->status != 'all') {
                $orders = Order::whereDate('created_at', '>=', $request->start_date)
                    ->whereDate('created_at', '<=', $request->end_date)
                    ->where('status', $request->status)
                    ->with([
                        'customer:id,name,address',
                        'createAdmin:id,name',
                        'courier',
                        'reseller:id,phone,name',
                        'orderItem.product.productImage',
                    ])
                    ->paginate($paginate);
            } else {
                $orders = Order::whereDate('created_at', '>=', $request->start_date)
                    ->whereDate('created_at', '<=', $request->end_date)
                    ->with([
                        'customer:id,name,address',
                        'createAdmin:id,name',
                        'courier',
                        'reseller:id,phone,name',
                        'orderItem.product.productImage',
                    ])
                    ->paginate($paginate);
            }
        }

        return response()->json([
            'status' => 'SUCCESS',
            'orders' => $orders,
            'order_count' => Order::orderStatusCount(),
            'couriers' => Courier::where('status', 1)->get(),
            'comments' => Comment::all(),
        ]);
    }

    public function OrderStatusWise(Request $request)
    {

        $paginate = $request->item ?? 20;
        $orders = Order::orderBy('id', 'DESC')
            ->where('status', $request->status)
            ->with(['customer:id,name,address', 'createAdmin:id,name', 'courier'])
            ->paginate($paginate);

        return \response()->json([
            'status' => 'SUCCESS',
            'orders' => $orders,
        ]);
    }

    public function orderSearchStatusWise(Request $request, $search)
    {
        if (strlen($search) == 11) {
            return 'ok';
            $orders = Order::where('customer_phone', 'like', '%' . $search . '%')
                ->where('status', $request->status)
                ->orderBy('id', 'DESC')
                ->with([
                    'customer:id,name,address',
                    'createAdmin:id,name',
                    'courier',
                    'reseller:id,phone,name',
                ])
                ->paginate(30);
        } else {
            $orders = Order::where('invoice_no', 'like', '%' . $search . '%')
                ->orWhere('memo_no', 'like', '%' . $search . '%')
                ->where('status', $request->status)
                ->orderBy('id', 'DESC')
                ->with([
                    'customer:id,name,address',
                    'createAdmin:id,name',
                    'courier',
                    'reseller:id,phone,name',
                ])
                ->paginate(30);
        }

        return response()->json([
            'status' => 'SUCCESS',
            'orders' => $orders,
        ]);
    }
    public function orderSearch($search)
    {
        $orders = Order::where('invoice_no', 'like', '%' . $search . '%')
            ->orWhere('customer_phone', 'like', '%' . $search . '%')
            ->orWhere('memo_no', 'like', '%' . $search . '%')
            ->orderBy('id', 'DESC')
            ->with([
                'customer:id,name,address',
                'createAdmin:id,name',
                'courier',
                'reseller:id,phone,name',
                'orderItem.product.productImage',
            ])
            ->paginate(10);

        return response()->json([
            'status' => 'SUCCESS',
            'orders' => $orders,
            'order_count' => Order::orderStatusCount(),
            'couriers' => Courier::where('status', 1)->get(),
            'comments' => Comment::all(),
        ]);
    }

    public function OrderFilterStatusWise(Request $request)
    {
        $orders = '';
        if (!empty($request->start_date) && empty($request->end_date)) {
            $orders = Order::whereDate('created_at', '=', $request->start_date)
                ->with([
                    'customer:id,name,address',
                    'createAdmin:id,name',
                    'courier',
                    'reseller:id,phone,name',
                    'orderItem.product.productImage',
                ])
                ->where('status', $request->status)
                ->paginate(30);
        }
        if (!empty($request->end_date) && !empty($request->start_date)) {
            $orders = Order::whereDate('created_at', '>=', $request->start_date)
                ->whereDate('created_at', '<=', $request->end_date)
                ->where('status', $request->status)
                ->with([
                    'customer:id,name,address',
                    'createAdmin:id,name',
                    'courier',
                    'reseller:id,phone,name',
                    'orderItem.product.productImage',
                ])
                ->paginate(30);
        }

        return response()->json([
            'status' => 'SUCCESS',
            'orders' => $orders,
            'order_count' => Order::orderStatusCount(),
            'couriers' => Courier::where('status', 1)->get(),
            'comments' => Comment::all(),
        ]);
    }

    public function orderView($id)
    {
        $order = Order::where('id', $id)->with(['customer:id,name,address','courier','city','sub_city','approvedBy','orderBarcode','orderPayment','createAdmin:id,name','pendingBy','shipmentBy', 'deliveredBy', 'returnBy', 'cancelBy'])->first();

        $order_items = OrderItem::where('order_id', $order->id)->with([ 'product.productVariant.variant.attribute', 'attribute', 'variant', 'product.productImage'])->get();
        return response()->json([
            'status' => 'SUCCESS',
            'order' => $order,
            'items' => $order_items,
        ]);
    }

    public function labelPrint($id)
    {
        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->get();
        return view('admin.pdf.print.labelPrint', \compact('orders'));
    }

    public function approvedAll($id)
    {
        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->get();
        foreach ($orders as $order) {
            $order_items = OrderItem::where('order_id', $order->id)->get();

            //check product srock before order approved
            foreach ($order_items as $order_item) {
                $product = Product::where('id', $order_item->product_id)->first();
                if ($product->stock <= 0) {
                    return \response()->json($product->code . '- Stock out');
                } elseif ($product->stock < $order_item->quantity) {
                    return \response()->json(
                        'this product ' .
                            $product->product_code .
                            ' Stock Available-' .
                            $product->stock .
                            '. But created quantity ' .
                            $order_item->quantity
                    );
                } else {
                    $product->stock = $product->stock - $order_item->quantity;
                    $product->save();
                }
            }

            $order->status = 3;
            $order->approved_admin_id = session()->get('admin')['id'];
            $order->approved_date = Carbon::now();
            $order->save();

            return \response()->json([
                'status' => 'OK',
            ]);
        }

        return \response()->json('Order successfully approved');
    }

    public function pendingAll($id)
    {
        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->get();
        foreach ($orders as $order) {
            $order->status = 2;
            $order->pending_admin_id = session()->get('admin')['id'];
            $order->pending_date = Carbon::now();
            $order->save();
        }

        return \response()->json('Order successfully pending');
    }

    public function packagingAll($id)
    {
        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->get();
        foreach ($orders as $order) {
            $order->status = 8;
            $order->pending_admin_id = session()->get('admin')['id'];
            $order->pending_date = Carbon::now();
            $order->save();
        }
        return \response()->json('Order successfully Packaging');
    }



     public function shipmentAll(Request $request)
    {
        if (empty($request->courier_id) || empty($request->memo_no)) {
            return response()->json(' courier or memo number not set');
        }
       
        DB::beginTransaction();
        try {
            foreach ($request->orders_id as $order_id) {
                $order = Order::findOrFail($order_id);
                
                $order_items = OrderItem::where('order_id', $order->id)->get();
                foreach ($order_items as $order_item) {
                    $product = Product::where('id', $order_item->product_id)->firstOrFail();
                    //combo campaign products
                    if ($product->is_combo == 1) {
                        $combo_products_id = ComboProduct::where('combo_product_id', $product->id)->select('general_product_id')->pluck('general_product_id');
                        $combo_products = Product::whereIn('id', $combo_products_id)->select('id', 'stock', 'product_code')->get();
                        foreach ($combo_products as $item) {
                            if ($item->stock < 1) {
                                return response()->json('this product ' .$item->product_code .' stock available ' .$item->stock .' and ordered quantity is ' .$order_item->quantity);
                            } else {
                                $item->stock = $item->stock - 1;
                                $item->save();
                            }
                        }
                    } else {
                        if ($product->stock <= 0 || $product->stock < $order_item->quantity) {
                            return response()->json('this product ' . $product->product_code . ' stock available-' . $product->stock . '. but created quantity ' . $order_item->quantity);
                        } else {
                            //for exchange order items. re-stocking exchange items
                            if($order_item->status == 3 ){
                                $product = Product::findOrFail($order_item->product_id);
                                $product->stock = $product->stock + $order_item->quantity ;
                                $product->save();
                            }else{
                                $product->stock = $product->stock - $order_item->quantity;
                                $product->save();
                            }
                        }
                    }
                }
                $order->courier_id = $request->courier_id;
                $order->memo_no = $request->memo_no;
                $order->status = 4;
                $order->shipment_admin_id = session()->get('admin')['id'];
                $order->shippment_date = Carbon::now();
                $order->save();
            }
            DB::commit();
            return response()->json([
                'status' => 'OK',
                'message' => 'Selected orders sent to shipment successfully ',
            ]);
        } catch (Throwable $th) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $th->getMessage(),
            ]);
        }

    }




   
    /* ==================== Bulk order assigned into courier Api Start ===================== */
    public function orderBulkAssignToCourier(Request $request)
    {
        $request->validate([
            'courier_id' => 'required|integer',
            'orders_id' => 'required|array',
            'orders_id.*' => 'integer'
        ]);

        if (empty($request->courier_id) || empty($request->orders_id)) {
            return response()->json([
                'status' => false,
                'message' => 'Courier ID or Order IDs are not set'
            ]);
        }

        DB::beginTransaction();
        try {

            //stead fast
            if ($request->courier_id == 14) {
                $data = array();
                foreach ($request->orders_id as $order_id) {
                    $order = Order::findOrFail($order_id);
                    $item = [
                        'invoice' => strval($order->invoice_no),
                        'recipient_name' => $order->customer->name,
                        'recipient_address' => $order->customer->address,
                        'recipient_phone' => strval($order->customer_phone),
                        'cod_amount' => ($order->total + $order->shipping_cost) - ($order->discount + $order->paid),
                        'note' => '',
                    ];
                    array_push($data, $item);
                }
                $response = (new CourierApi())->store(json_encode($data), 'steadfast');                
                if (!empty($response['data'])) {
                    foreach ($response['data'] as $value) {
                        $order = Order::where('invoice_no', $value['invoice'])->first();
                        
                        if ($order) {
                            $order->memo_no =  'https://steadfast.com.bd/t/' . $value['tracking_code'];
                            $order->tracking_id =  $value['tracking_code'];
                            $order->courier_id = $request->courier_id;
                            $order->status = 4;
                            $order->save();
                        }
                    }
                }
            }
            //pathao
            if ($request->courier_id == 7) {
                foreach ($request->orders_id as $order_id) {
                    $order = Order::with('city', 'sub_city', 'orderItem')->findOrFail($order_id);

                    if (!$order->city || !$order->sub_city) {
                        return response()->json([
                            'status' => false,
                            'message' => 'City or Sub-City information is missing for order ID: ' . $order_id,
                        ], 400);
                    }
                    if ($order->status > 2) {
                        $item = [
                            'store_id' => intval(config('courier.pathao_store_id')),
                            'merchant_order_id' => strval($order->invoice_no),
                            'recipient_name' => $order->customer->name,
                            'recipient_phone' => strval($order->customer_phone),
                            'recipient_address' => $order->customer->address,
                            'recipient_city' => intval($order->city->pathao_city_id),
                            'recipient_zone' => intval($order->sub_city->pathao_zone_id),
                            'delivery_type' => 48,
                            'item_type' => 2,
                            'special_instruction' => '',
                            'item_description' => '',
                            'item_quantity' => count($order->orderItem),
                            'item_weight' => 0.5,
                            'amount_to_collect' => ($order->total + $order->shipping_cost) - ($order->discount + $order->paid),
                        ];

                        $response = (new CourierApi())->store($item, 'pathao');

                        if (!empty($response['data'])) {
                            $parcel = $response['data'];
                            $order = Order::where('invoice_no', $parcel['merchant_order_id'])->firstOrFail();
                            $order->memo_no =  'https://merchant.pathao.com/tracking?consignment_id=' . $parcel['consignment_id'] . '&phone=' . $order->customer_phone;
                            $order->tracking_id = $parcel['consignment_id'];
                            $order->courier_id = $request->courier_id;
                            $order->status = 4;
                            $order->save();
                        }
                    }
                }
            }
            
            //redx
            if ($request->courier_id == 11) {
                foreach ($request->orders_id as $order_id) {
                    $order = Order::with('redxDeliveryArea')->findOrFail($order_id);
                    
                    if (!$order->redxDeliveryArea) {
                        return response()->json([
                            'status' => false,
                            'message' => 'RedX Delivery Area information is missing for this order invoice :  ' . $order->invoice_no,
                        ], 400);
                    }
                    if ($order->status > 2) {
                        $item = [
                            'customer_name' => $order->customer->name,
                            'customer_phone' => strval($order->customer_phone),
                            'delivery_area' => $order->redxDeliveryArea->area_name,
                            'delivery_area_id' => $order->redxDeliveryArea->area_id,
                            'customer_address' => $order->customer->address,
                            'merchant_invoice_id' => strval($order->invoice_no),
                            'cash_collection_amount' => ($order->total + $order->shipping_cost) - ($order->discount + $order->paid),
                            'parcel_weight' => 500,
                            'instruction' => '',
                            'value' => 100,
                            'is_closed_box' => true,
                            'parcel_details_json' => [],
                        ];
                 
                        $response = (new CourierApi())->store($item, 'redx');

                        if (!empty($response['tracking_id'])) {
                            $order->memo_no =  'https://redx.com.bd/track-parcel/?trackingId=' . $response['tracking_id'] . '&shopId=' . config('courier.redx_store_id');
                            $order->tracking_id = $response['tracking_id'];
                            $order->courier_id = $request->courier_id;
                            $order->status = 4;
                            $order->save();
                        }
                    }
                }
            }

            // return $response; 

            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'Selected orders assigned to selected courier'
            ]);
        } catch (Throwable $th) {
            DB::rollBack();
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ]);
        }
    }
    
    
    /* ==================== Bulk order assigned into courier Api End ===================== */


    

     public function returnAll($id)
    {
        DB::beginTransaction();
        try {
            $order_id = explode(',', $id);
            $orders = Order::whereIn('id', $order_id)->get();
            foreach ($orders as $order) {
                $order->status = 7;
                $order->return_admin_id = session()->get('admin')['id'];
                $order->return_date = Carbon::now();
                $order->save();
                //re-stock product
                $order_items = OrderItem::where('order_id', $order->id)->get();
                foreach ($order_items as $order_item) {
                    $product = Product::where('id', $order_item->product_id)->firstOrFail();
                    //if combo campaign products
                    if ($product->is_combo == 1) {
                        $combo_products_id = ComboProduct::where('combo_product_id', $product->id)
                            ->select('general_product_id')
                            ->pluck('general_product_id');
                        $combo_products = Product::whereIn('id', $combo_products_id)
                            ->select('id', 'stock', 'product_code')
                            ->get();
                        foreach ($combo_products as $item) {
                            $item->stock = $item->stock + 1;
                            $item->save();
                        }
                    } else {
                        $product->stock = $product->stock + $order_item->quantity;
                        $product->save();
                    }
                }
            }
            DB::commit();
            return response()->json('Order successfully returned');
        } catch (Throwable $th) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $th->getMessage(),
            ]);
        }


    }
    
    



    public function invoicePrint($id)
    {
        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->with('orderItem.product:id,name,thumbnail_img,product_code')->get();
        foreach ($orders as $order) {
            $order->print_status = 1;
            $order->save();
        }

        return view('admin.pdf.print.invoicePrint', \compact('orders'));
    }



    public function comment(Request $request)
    {
        $order = Order::where('id', $request->order_id)->first();
        $order->comment = $request->comment;
        $order->save();
        return response()->json([
            'status' => 'OK',
            'message' => $order->comment . '  is added as comment ',
        ]);
    }


    public function returnItem(Request $request){

        $data = $request->validate([
            'item_id' => 'required|integer',
            'quantity' => 'required|integer|min:1',
        ]);

        $item = OrderItem::findOrFail($data['item_id']);
        if ($data['quantity'] >  $item->quantity) {
            return response()->json([
                'message' => 'return quantity is greater than order quantity',
            ]);
        }

        //checking is already returned
        if($item->status == 2){
            return response()->json('Item Already Returned');
        }

        DB::beginTransaction();
        try{

            if ($data['quantity']  == $item->quantity) {
                $item->status = 2;
            } else {
                $item->quantity = $item->quantity - $data['quantity'];
            }
            $item->save();
            //update order
            $order = Order::where('id',$item->order_id)->first();
            $order->total = $order->total - ($item->price * $data['quantity']);
            $order->save();

            $product = Product::where('id',$item->product_id)->first();
            $product->stock = $product->stock + $data['quantity'];
            $product->save();

            DB::commit();
            return response()->json([
                'success'=> true,
                'message'=>"Order Was Update"
            ]);

        }catch(Throwable $th){

            DB::rollBack();
            return response()->json([
               'success' => false,
               'message' => $th->getMessage()
            ]);
        }

    }



    public function exportOrder($status, $courier_id)
    {

        $orders = Order::where('status', $status)->where('courier_id', $courier_id)->get();
        $filename = 'order-export-' . date('d-m-Y') . '-' . time() . '.csv';
        $file = fopen($filename, 'w');

        fputcsv($file, [
            'invoice' => 'invoice',
            'Name' => 'Name',
            'Phone' => 'Phone',
            'Address' => 'Address',
            'District' => 'District',
            'Area' => 'Area',
            'AreaID' => 'AreaID',
            'Division' => 'Division',
            'Cash' => 'Cash',
            'Comment' => 'Comment',
            'product selling price' => "product selling price'",
        ]);

        foreach ($orders as $k => $line) {
            $customer = Customer::where('id', $line->customer_id)->first();
            $city = City::where('id', $line->city_id)->first();
            $sub_city = SubCity::where('id', $line->sub_city_id)->first();
            $total = $line->total - $line->discount - $line->paid + $line->shipping_cost;
            $s_price = $line->total + $line->shipping_cost;
            if ($total < 0) {
                $total = 0;
            }

            fputcsv($file, [
                'Invoice' => $line->invoice_no,
                'Name' => $customer->name,
                'Phone' => $line->customer_phone,
                'Address' => $customer->address,
                'District' => $city->name ?? '',
                'Area' => $sub_city->name ?? '',
                'AreaID' => '',
                'Division' => '',
                'Cash' => $total,
                'Comment' => '',
                'product selling price' => $s_price,
            ]);
        }
        fclose($file);

        return Response::download('./' . $filename);
    }

    public function exportOrderSelectedItem($id)
    {
        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->get();
        $filename = 'order-export-' . date('d-m-Y') . '-' . time() . '.csv';
        $file = fopen($filename, 'w');

        fputcsv($file, [
            'ActualAmount' => 'ActualAmount',
            'CollectionAmount' => 'CollectionAmount',
            'CustomerMobile' => 'CustomerMobile',
            'District' => 'District',
            'CustomerAddress' => 'CustomerAddress',
            'CustomerName' => 'CustomerName',
            'CollectionName' => 'CollectionName',
        ]);

        foreach ($orders as $k => $line) {
            $customer = Customer::where('id', $line->customer_id)->first();
            $city = City::where('id', $line->city_id)->first();
            $sub_city = SubCity::where('id', $line->sub_city_id)->first();

            $total = $line->total - $line->discount - $line->paid;
            $g_total = $line->total - $line->discount - $line->paid + $line->shipping_cost;

            $address = $customer->address;
            if (!empty($sub_city->name)) {
                $address .= ',' . $sub_city->name;
            }
            if (!empty($city->name)) {
                $address .= ',' . $city->name;
            }
            fputcsv($file, [
                'ActualAmount' => $line->total - $line->discount,
                'CollectionAmount' => $g_total,
                'CustomerMobile' => $line->customer_phone,
                'District' => $city->name ?? '',
                'CustomerAddress' => $address,
                'CustomerName' => $customer->name,
                'CollectionName' => $line->invoice_no,
            ]);
        }
        fclose($file);
        return Response::download('./' . $filename);
    }

    public function officeSaleInvoicePrint($id)
    {
        $order = Sale::with('saleItems')->findOrFail($id);
        return view('admin.pdf.print.saleInvoice', compact('order'));
    }










    public function orderProcessorsList(Request $request) {

        $admins = Admin::select('id', 'name','image')->orderBy('id','desc')->where('status',1)->paginate($request->item ?? 10);
        foreach($admins as $admin){

           $admin->{'today_report'}  = Order::orderPressingReport($admin->id, Carbon::today()->startOfDay(), Carbon::today()->endOfDay());
           $admin->{'yesterday_report'}  = Order::orderPressingReport($admin->id, Carbon::yesterday()->startOfDay(), Carbon::yesterday()->endOfDay());
           $admin->{'this_week_report'}  = Order::orderPressingReport($admin->id, Carbon::today()->subDays('7')->startOfDay(),Carbon::today()->endOfDay());
           $admin->{'this_month_report'}  = Order::orderPressingReport($admin->id, Carbon::today()->subDays('30')->startOfDay(),Carbon::today()->endOfDay());
           $admin->{'custom_date_report'}  = !empty($request->start_date && $request->end_date) ?  Order::orderPressingReport($admin->id, $request->start_date,$request->end_date) : [] ;
        }

        return response()->json([
            'success' => true,
            'admins' => $admins,
        ]);

    }



    public function orderProcessorDetails(Request $request,$id) {

        $admin = Admin::select('id', 'name','image')->findOrFail($id);
        $admin->{'today_report'}  = Order::orderPressingReport($admin->id, Carbon::today()->startOfDay(), Carbon::today()->endOfDay());
        $admin->{'yesterday_report'}  = Order::orderPressingReport($admin->id, Carbon::yesterday()->startOfDay(), Carbon::yesterday()->endOfDay());
        $admin->{'this_week_report'}  = Order::orderPressingReport($admin->id, Carbon::today()->subDays('7')->startOfDay(),Carbon::today()->endOfDay());
        $admin->{'this_month_report'}  = Order::orderPressingReport($admin->id, Carbon::today()->subDays('30')->startOfDay(),Carbon::today()->endOfDay());
        $admin->{'custom_date_report'}  = !empty($request->start_date && $request->end_date) ?  Order::orderPressingReport($admin->id, $request->start_date,$request->end_date) : [] ;

        return response()->json([
            'success' => true,
            'admin' => $admin,
        ]);

    }




    public function exportOrderPickList($id){
        
        $orders_id = explode(',', $id);
        $order_invoices = Order::whereIn('id',$orders_id)->select('invoice_no')->get();
        $orders = DB::table('orders')->join('order_items','orders.id','=','order_id')
                        ->join('products','order_items.product_id','=','products.id')
                        ->whereIn('orders.id', $orders_id)
                        ->groupBy('order_items.product_id')
                        ->groupBy('products.thumbnail_img')
                        ->groupBy('products.slug')->groupBy('products.product_code')
                        ->select('order_items.product_id','products.product_code','products.thumbnail_img','products.slug', DB::raw('SUM(order_items.quantity) as total_qty'))
                        ->get();
        $company_info = GeneralSetting::latest()->first();       
        foreach ($orders as $item) {
            $product = $item->{'items'} = OrderItem::whereIn('order_id', $orders_id)->where('product_id', $item->product_id)->select('size', DB::raw('SUM(order_items.quantity) as qty'))->groupBy('size')->get();
        }          
        return view('admin.pdf.orderPickList', \compact('orders','order_invoices', 'company_info'));    
    }





    public function exportOrderForPaperFly($id){

        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->get();
        $filename = 'order-export-' . date('d-m-Y') . '-' . time() . '.csv';
        $file = fopen($filename, "w");

        fputcsv($file, array(
            'Merchant Code' => "Merchant Code",
            'Merchant Order Reference' => 'Merchant Order Reference',
            'Package Price' => "Package Price",
            'Customer Name' => "Customer Name",
            'Customer Address' => "Customer Address",
            'Customer Thana' => "Customer Thana",
            'Customer District' => "Customer District",
            'Customer Phone' => "Customer Phone"
        ));

        foreach ($orders as $k => $line) {

            $customer = Customer::where('id', $line->customer_id)->first();
            $city = City::where('id', $line->city_id)->first();
            $sub_city = SubCity::where('id', $line->sub_city_id)->first();

            $total = (($line->total - ($line->discount + $line->paid)) + $line->shipping_cost);

            $address=$customer->address;
            if(!empty($sub_city->name)){
                $address.=','.$sub_city->name;
            }
            if(!empty($city->name)){
                $address.=','.$city->name;
            }
            fputcsv($file, array(
                'Merchant Code' =>  'C-1-30163',
                'Merchant Order Reference' =>   $line->invoice_no,
                'Package Price' => $total,
                'Customer Name' => $customer->name,
                'Customer Address' => $address,
                'Customer Thana' => $sub_city,
                'Customer District' => $city->name,
                'Customer Phone' => $line->customer_phone
            ));
        }
        fclose($file);
        return Response::download('./' . $filename);

    }



    public function exportOrderForRedx($id){

        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->get();
        $filename = 'order-export-for-redx' . date('d-m-Y') . '-' . time() . '.csv';
        $file = fopen($filename, "w");

        fputcsv($file, array(
            'Invoice' => "Invoice",
            'Customer Name' => 'Customer Name',
            'Contact No.' => 'Contact No.',
            'Customer Address' => 'Customer Address',
            'District' => 'District',
            'Area' => "Area",
            'Area ID' => "Area ID",
            'Division' => "Division",
            'Price' => "Price",
            'Instruction' => "Instruction",
            'Product Selling Price' => "Product Selling Price",
            'Seller Name' => "Seller Name",
            'Seller Phone' => "Seller Phone",
        ));

        foreach ($orders as $k => $line) {

            $company_name = GeneralSetting::latest()->first()->title;
            $customer = Customer::where('id', $line->customer_id)->first();
            $city = City::where('id', $line->city_id)->first();
            $sub_city = SubCity::where('id', $line->sub_city_id)->first();

            $total = (($line->total - ($line->discount + $line->paid)) + $line->shipping_cost);

            $address=$customer->address;
            if(!empty($sub_city->name)){
                $address.=','.$sub_city->name;
            }
            if(!empty($city->name)){
                $address.=','.$city->name;
            }
            fputcsv($file, array(
                'Invoice' =>  $line->invoice_no,
                'Customer Name' => $customer->name,
                'Contact No.' => $line->customer_phone,
                'Customer Address' => $address,
                'District' => ucwords($city->name) ?? "",
                'Area' => ucwords($sub_city->name) ?? "",
                'Area ID' => 44,
                'Division' => "Division",
                'Price' => $total,
                'Instruction' =>  '',
                'Product Selling Price' => $total,
                'Seller Name' => $company_name,
                'Seller Phone' =>  '09636203040',
            ));
        }
        fclose($file);
        return Response::download('./' . $filename);

    }



    public function exportOrderForPathao($id){

        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->get();
        $filename = 'order-export-for-pathao-' . date('d-m-Y').'.csv';
        $file = fopen($filename, "w");

        fputcsv($file, array(
            'ItemType' => "ItemType",
            'StoreName' => "StoreName",
            'MerchantOrderId' => "MerchantOrderId",
            'RecipientName' => 'RecipientName',
            'RecipientPhone' => 'RecipientPhone',
            'RecipientCity' => 'RecipientCity',
            'RecipientZone' => "RecipientZone",
            'RecipientArea' => "RecipientArea",
            'RecipientAddress' => 'RecipientAddress',
            'AmountToCollect' => "AmountToCollect",
            'ItemQuantity' => "ItemQuantity",
            'ItemWeight' => "ItemWeight",
            'ItemDesc' => "ItemDesc",
            'SpecialInstruction' => "SpecialInstruction",
        ));

        foreach ($orders as $k => $line) {

            $company_name = GeneralSetting::latest()->first()->title;
            $customer = Customer::where('id', $line->customer_id)->firstOrFail();
            $city = City::where('id', $line->city_id)->firstOrFail();
            $sub_city = SubCity::where('id', $line->sub_city_id)->first();

            $total = (($line->total - ($line->discount + $line->paid)) + $line->shipping_cost);

            $address=$customer->address;
            if(!empty($sub_city->name)){
                $address.=','.$sub_city->name;
            }
            if(!empty($city->name)){
                $address.=','.$city->name;
            }
            fputcsv($file, array(
                'ItemType' =>  'parcel',
                'StoreName' =>  $company_name,
                'MerchantOrderId' =>  $line->invoice_no,
                'RecipientName' => $customer->name,
                'RecipientPhone' => $line->customer_phone,
                'RecipientCity' => ucwords($city->name) ?? "",
                'RecipientZone' => ucwords($sub_city->name) ?? "",
                'RecipientArea' => ucwords($sub_city->name) ?? "",
                'RecipientAddress' => $address,
                'AmountToCollect' => $total,
                'ItemQuantity' => OrderItem::where('order_id',$line->id)->sum('quantity'),
                'ItemWeight' => 500,
                'ItemDesc' =>  '',
                'SpecialInstruction' =>  '',

            ));
        }
        fclose($file);
        return Response::download('./' . $filename);

    }


    
    public function exportOrderForeCourier($id){

        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->get();
        $filename = 'order-export-for-eCourier-' . date('d-m-Y').'.csv';
        $file = fopen($filename, "w");

        fputcsv($file, array(
            'SL' => "SL",
            'CUSTOMER NAME' => "CUSTOMER NAME",
            'ADDRESS' => "ADDRESS",
            'MOBILE' => "MOBILE",
            'ACTUAL PRODUCT PRICE' => "ACTUAL PRODUCT PRICE",
            'COLLECTED AMOUNT' => "COLLECTED AMOUNT",
            'PRODUCT ID OR INVOICE NUMBER' => "PRODUCT ID",
            'INSTRUCTION' => "INSTRUCTION",
        ));

        foreach ($orders as $k => $line) {


            $customer = Customer::where('id', $line->customer_id)->firstOrFail();
            $city = City::where('id', $line->city_id)->firstOrFail();
            $sub_city = SubCity::where('id', $line->sub_city_id)->first();

            $total = (($line->total - ($line->discount + $line->paid)) + $line->shipping_cost);

            $address=$customer->address;
            if(!empty($sub_city->name)){
                $address.=','.$sub_city->name;
            }
            if(!empty($city->name)){
                $address.=','.$city->name;
            }
            fputcsv($file, array(
                'SL' => $k + 1,
                'CUSTOMER NAME' =>  $customer->name,
                'ADDRESS' => $address,
                'MOBILE' =>  $line->customer_phone,
                'ACTUAL PRODUCT PRICE' =>  $total - $line->shipping_cost ,
                'COLLECTED AMOUNT' => $total,
                'PRODUCT ID' =>  $line->invoice_no,
                'INSTRUCTION' => '' ,

            ));
        }
        fclose($file);
        return Response::download('./' . $filename);

    }



    public function exportOrderForSteadFast($id){
        $order_id = explode(',', $id);
        $orders = Order::whereIn('id', $order_id)->get();
        $filename = 'order-export-for-steadfast-' . date('d-m-Y').'.csv';
        $file = fopen($filename, "w");

        fputcsv($file, array(
            'Invoice' => 'Invoice',
            'Name' => 'Name',
            'Address' => 'Address',
            'Phone' => 'Phone',
            'Amount' => 'Amount',
            'Note' => 'Note',
            'Contact Name' => 'Contact Name',
            'Contact Phone' => 'Contact Phone',
        ));

        foreach ($orders as $k => $order) {

            $customer = Customer::where('id', $order->customer_id)->firstOrFail();
            $total =  ($order->total + $order->shipping_cost ) - ($order->discount + $order->paid) ;

            fputcsv($file, array(
                'Invoice' =>  $order->invoice_no,
                'Name' => $customer->name,
                'Address' => $customer->address,
                'Phone' => $order->customer_phone,
                'Amount' => $total,
                'Note' => $order->note ?? '',
                'Contact Name' => GeneralSetting::latest()->first()->title ,
                'Contact Phone' => GeneralSetting::latest()->first()->header_contact_number ,
                
            ));
        }
        fclose($file);
        return Response::download('./' . $filename);
    }





    public function storeExchange(StoreRequest $request){


        DB::beginTransaction();
        try {

            $data=$request->validated();
            //first find find the customer
            $customer = Customer::where('phone', $data['customer_phone'])->first();
            !empty($customer) ? $customer->update($data) :    $customer = Customer::storeCustomer($data)  ;
            //order data
            $data['customer_id'] = $customer->id;
            $data['invoice_no'] = 123;
            $data['create_admin_id'] = session()->get('admin')['id'];
            //store who is approved
            if ($data['status'] == 3) {
                $data['approved_admin_id'] = session()->get('admin')['id'];
                $data['approved_date'] = Carbon::now();
            }
            $order =Order::query()->create($data);
            //save exchange items 
            foreach($request->exist_order_items as $item){
                if ($item['status'] == 3) {
                    $o_item=new OrderItem();
                    $o_item->order_id = $order->id;
                    $o_item->product_id = $item['product_id'];
                    $o_item->price = $item['price'];
                    $o_item->quantity = $item['quantity'];
                    $o_item->total = $item['quantity'] * $item['price'];
                    // $o_item->variant_id=$item['variant_id'] ?? null;

                    $o_item->size = $item['variant_id'] ?? null;
                    // $o_item->color = $product['color'] ?? null;
                    // $o_item->weight = $product['weight'] ?? null;


                    $o_item->status= 3 ;
                    $o_item->save();
                }
            }
            //save new items
            foreach($request->products as $item){
                $o_item=new OrderItem();
                $o_item->order_id=$order->id;
                $o_item->product_id=$item['id'];
                $o_item->price=$item['price'];
                $o_item->quantity=$item['quantity'];
                $o_item->total=$item['quantity']*$item['price'];
                $o_item->size=$item['variant_id'] ?? null;
                $o_item->save();
            }
            $order->invoice_no = 2222 + $order->id ;
            $order->save();
            //create a credit
            if($order->paid > 0 ){
                $balance = Balance::where('department','mohasagor.com')->where('id',$data['paid_by'])->first();
                $comment = "order paid amount '$order->paid' paid by '$order->paid_by'. order invoice number '$order->invoice_no";
                AccountService::creditStore('order paid amount',$order->paid, $balance->id,$order->id,null,$comment );
            }
            //create a barcode for order
            HelperService::orderBarcodeStore($order->id,$order->invoice_no);
            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'Order created successfully',
            ]);

        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ]);
        }


    }




    public function updateExchange(UpdateRequest $request, $id){
     
        $data=$request->validated();
        $order=Order::findOrFail($id);
        if($order->status!=1 && $order->status!=2  && $order->status!=3){
            return response()->json('Order New Or Pending not now');
        }

        DB::beginTransaction();
        try {
            //first find find the customer
            $customer = Customer::where('phone', $data['customer_phone'])->first();
            !empty($customer) ? $customer->update($data) : $customer = Customer::storeCustomer($data)  ;
      
            //update credit
            if($order->order_type != 4 &&   $data['paid'] > 0){
                $credit=Credit::where('order_id',$order->id)->first();
                if($credit){
                    $credit->amount=$data['paid'] ;
                    $credit->purpose = "order advance paid amount updated ";
                    $credit->comment = "order advance paid amount updated previous amount ".$credit->amount. ' updated amount '.$data['paid'] ;
                    $credit->save();
                }else{
                    $balance = Balance::where('department','mohasagor.com')->where('id',$data['paid_by'])->first();
                    $comment ="order advance paid amount " .$data['paid'] ." the order invoice number is ".$order->invoice_no;
                    AccountService::creditStore('order advance payment', $data['paid'],$balance->id,$order->id,null,$comment );
                }
            }
            //store who is approved
            if($data['status']==3 && empty($order->approved_admin_id)){
                $data['approved_admin_id']=session()->get('admin')['id'];
                $data['approved_date']=Carbon::now();
            }
            //store who is update
            if($data['status']==2){
                $data['pending_admin_id']=session()->get('admin')['id'];
                $data['pending_date']=Carbon::now();
            }
            $data['customer_id'] = $customer->id;
            $order->update($data);
            //update or insert items
            foreach ($request->products as $product) {
                if ($product['status'] == 1) {
                    //delete item
                    OrderItem::where('order_id',$order->id)->where('product_id',$product['id'])->orderBy('id','desc')->delete();
                    //store item
                    $item = new OrderItem();
                    $item->order_id = $order->id;
                    $item->product_id = $product['id'];
                    $item->price = $product['price'];
                    $item->quantity = $product['quantity'];
                    $item->total = $product['quantity'] * $product['price'];
                    $item->attribute_id = $product['attribute_id'] ?? null;
                    $item->size = $product['variant_id'] ?? null;
                    $item->save();
                }
            }

        DB::commit();
        return response()->json([
            'success'=>true,
            'message'=>'Order  updated successfully'
        ]);

        }catch(Throwable $th){
            DB::rollBack();
            return response()->json([
                'success'=> false,
                'message'=> $th->getMessage(),
            ]);
        }

    }




    public function searchForExchange($invoice_no){

        $order = Order::where('invoice_no',$invoice_no)->with(['customer:id,name,address','courier:id,name','city:id,name','sub_city:id,name'])->firstOrFail();
        $items = OrderItem::where('order_id',$order->id)->with(['product:id,name,product_code,thumbnail_img,price'])->get();
        return response()->json([
              'success' => true ,
              'order' => $order ,
              'items' => $items ,
        ]);
    }



    public function exchangeItemStatus($id)
    {
            $item = OrderItem::findOrFail($id);

            try{
                if ($item->status == 3) {
                    $item->status = 1;
                    $item->save();
                }else{
                    $item->status = 3;
                    $item->save();
                }

                return response()->json([
                    'success' => true,
                    'status' => $item->status,
                    'message' => 'set up exchanged item ',
                ]);

            }catch(Throwable $th){

                return response()->json([
                    'success' => false,
                    'message' => $th->getMessage(),
                ]);
            }

    }




    public function returnWithCost(Request $request, $id)
    {
        $order = Order::findOrFail($id);
        $order->paid = $request->return_cost + $order->paid;
        $order->save();
        AccountService::creditStore('Order return Charge', $order->paid, $request->credit_in, $order->id,null,'Order return Charge');
        return response()->json([
            'success' => true,
            'message'=>'Added order return cost successfully'
        ]);
    }















}
