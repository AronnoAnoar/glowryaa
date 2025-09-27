<?php

namespace App\Http\Controllers\Reseller;

use Picqer;
use Exception;
use App\Models\Order ;
use App\Models\Customer;
use App\Models\OrderItem ;
use App\Models\OrderBarcode;
use Illuminate\Http\Request;
use App\Services\SmsService;
use App\Services\HelperService;
use App\Models\ResellerCashbook;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Reseller;

class OrderController extends Controller
{


      public function get_reseller_order(Request $request){
            $item = $request->item ?? 20 ;
            $orders=Order::where('reseller_id',session()->get('reseller')['id'])->orderBy('id','desc')->with(['customer','courier:id,name'])->paginate($item);
              return response()->json([
                  "status" => "OK",
                  "orders" => $orders ,
              ]);

      }




      public function reseller_order_details($id){

        $order=Order::where('id',$id)->where('reseller_id',session()->get('reseller')['id'])->with(['customer','courier','city','approvedBy'])->first();
        $order_items=OrderItem::where('order_id',$order->id)->with(['product.productVariant.variant.attribute','attribute','variant'])->get();

            return response()->json([
                  "status" => "SUCCESS",
                  "order"  => $order ,
                  "items"  => $order_items ,
            ]);

      }




    public function resellerCashbook(Request $request) {

         $cashbooks = ResellerCashbook::where('reseller_id',session()->get('reseller')['id'])->where('is_income',$request->is_income)->orderBy('id','desc')->with('order')->paginate(30);
         return response()->json([
             'status' => 'OK' ,
             'cashbooks' => $cashbooks ,
         ]);
    }



      public function ResellerOrderStore(Request $request){

            // return $request->all();
                $data = $request->validate([
                    'customer_mobile' => 'required|digits:11 ',
                    'customer_name' => 'required ',
                    'customer_address' => 'required ',
                    'city' => 'required|integer|min:1',
                    'shipping_cost' => 'required|integer|min:1',
                    'order_type' => 'required|integer|min:1',
                    'sub_city' => 'required|integer|min:1',
                    'status' => 'required|integer|min:1',
                    'total' => 'required|integer|min:1',
                    'note' => 'nullable',
                    'discount' => 'nullable|integer|min:0',
                    'paid' => 'required|integer|min:0',
                    'due' => 'required|integer|min:0',
                ]);

                DB::beginTransaction();
                try {
                    //check balance
                    if ($request->paid > 0) {
                        $amount = HomeController::resellerWalletValue() - $request->paid ;
                        if($amount < -500 ){
                            return response()->json([
                                "status" => 0,
                                'message' => 'wallet balance  can not be less more  thant  BDT 500.' ,
                            ]);
                        }
                    }
                    //first find find the customer
                    $reseller=Reseller::findOrFail(session()->get('reseller')['id']);
                    $customer=Customer::where('phone',$request->customer_mobile)->first();

                    //if not customer then save, as a new customer
                    if(!$customer){
                        $customer=new Customer();
                        $customer->name=$request->customer_name;
                        $customer->phone=$request->customer_mobile;
                        $customer->address=$request->customer_address;
                        $customer->city_id=$request->city;
                        $customer->customer_type=1;
                        $customer->save();
                    }else{
                        $customer->name=$request->customer_name;
                        $customer->address=$request->customer_address;
                        $customer->city_id=$request->city;
                        $customer->customer_type=1;
                        $customer->save();
                    }

                    $data['city_id']=$request->city;
                    $data['sub_city_id']=$request->sub_city;
                    $data['customer_id']=$customer->id;
                    $data['customer_phone']=$request->customer_mobile;
                    $data['invoice_no']=HelperService::uniqueInvoiceMaker(1);
                    $data['reseller_id']=session()->get('reseller')['id'];
                    $order = Order::query()->create($data);
                    //if order save then save the order details
                    foreach($request->products as $product){
                        //order items
                        $details=new OrderItem();
                        $details->order_id=$order->id;
                        $details->product_id=$product['id'];
                        $details->price=$product['price'];
                        $details->quantity=$product['quantity'];
                        $details->total=$product['quantity']*$product['price'];
                        $details->attribute_id=$product['attribute_id'] ?? null;
                        $details->variant_id=$product['variant_id'] ?? null;
                        $details->save();
                    }
                    //create a barcode for order
                    $generator = new Picqer\Barcode\BarcodeGeneratorHTML();
                    $barcode = $generator->getBarcode($order->invoice_no, $generator::TYPE_CODE_128);
                    $order_barcode = new OrderBarcode();
                    $order_barcode->order_id = $order->id;
                    $order_barcode->barcode = $barcode;
                    $order_barcode->barcode_number = $order->invoice_no;
                    $order_barcode->save();
                    //if paid amount then reduce amount from reseller cashbook
                    if ($request->paid > 0) {
                        $cashbook = new ResellerCashbook();
                        $cashbook->reseller_id = session()->get('reseller')['id'];
                        $cashbook->invoice_no = HelperService::uniqueInvoiceMaker(4) ;
                        $cashbook->is_income = 0 ;
                        $cashbook->amount = $request->paid ;
                        $cashbook->order_id = $order->id ;
                        $cashbook->created_by = session()->get('admin')['id'] ;
                        $cashbook->note = 'order paid payment at the time of order created' ;
                        $cashbook->save();
                    }
                    (new SmsService())->SendMessageToCustomerFromResellerOrder($order->customer_phone,$customer->name,$order->invoice_no,$reseller);
                    DB::commit();
                    return \response()->json([
                        'status'=>'SUCCESS',
                        'message'=>'Order created successfully'
                    ]);


                }catch(Exception $e){
                    return response()->json([
                        "status" => 0,
                        'message' => $e->getMessage(),
                    ]);
                }


            }







}
