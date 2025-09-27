<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Product;
use Carbon\Carbon;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\User;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
class OrderController extends Controller
{
    
    public function order(Request $request)
    {

        $request->validate([
            'mobile_no' => 'required|digits:11',
            'shipping_charge' => 'required',
            'name' => 'required ',
            'city_id' => 'required',
            'subcity_id' => 'nullable',
            'address' => 'required',
        ]);

        if (Cart::count() <= 0) {
            return response()->json([
                'status' => 'your cart is empty',
            ]);
        }
        //=======================set variable =============================
        $delivery_charge = $request->shipping_charge;
        $discount = 0;
        // =======================================================================
        # Rule of customer create and update.
        # customer buy product with phone number.
        # when customer info is exit then customer info update
        # when customer not exit then create new customer with customer phone number.
        # customer is authentic.
        //========================================================================
        
        DB::beginTransaction();
        try {

            $customer = Customer::where('phone', $request->mobile_no)->first();
            if ($customer) {                
                $customer->address = $request->address;
                $customer->name    = $request->name;
                $customer->total_order =  ++$customer->total_order;
                $customer->save();
            }else{
                $customer = new Customer();
                $customer->name = $request->name;
                $customer->phone = $request->mobile_no;
                $customer->password = Hash::make($request->mobile_no);;
                $customer->address = $request->address;
                $customer->status = 1;
                $customer->total_order = 1;
                $customer->ip_address = $request->ip();
                $customer->customer_type = 1;
                $customer->save();
            }

            $total = Cart::total();
            $sub_total = Cart::subtotal();
            
            //====================coupon check and set discount=============================
            # check coupon
            # check coupon expire date
            # set coupon discount
            //===============================================================================
            
            // $coupon_id = session()->get('coupon_id');
            // $shipping_charge = session()->get('shipping');
            $coupon = null;
            if(isset($request->coupon)):
                $coupon = DB::table('coupons')->where('code', $request->coupon)->where('status', 1)->first();
                if($coupon):
                    if(Carbon::today()<= $coupon->expire_date):
                        if($coupon->discount_type == 'percentage'):
                            $discount = $sub_total * $coupon->discount_amount / 100;
                        else:
                            $discount = $coupon->discount_amount;
                        endif;
                    endif;
                endif;
            endif;


            //save the order
            $order = new Order();
            $order->customer_id = $customer->id;
            $order->customer_phone = $request->mobile_no;
            $order->invoice_no = 123;
            $order->order_type = 1;
            $order->shipping_cost = $delivery_charge ?? 0;
            $order->city_id = $request->city_id;
            $order->sub_city_id  = $request->subcity_id;              
            $order->discount = $discount;
            $order->total = $total;
            $order->status = 1;
            $order->save();

            //inserting order items
            $items = [];
            foreach (Cart::content() as $cart) {
                OrderItem::create([
                    'order_id' => $order->id,
                    'product_id' => $cart->id,
                    'price' => $cart->price,
                    'quantity' => $cart->qty,
                    'size' => $cart->options->variant_name ?? null,
                    'weight' => $cart->weight,
                    'total' => $cart->qty * $cart->price,
                ]);


                $data = [];
                $data['product_id'] = $cart->id;
                $data['item_id'] = $cart->options->product_code;
                $data['item_name'] = $cart->name;
                $data['affiliation'] = "Google Merchandise Store";
                $data['coupon'] = $coupon != null ? $coupon->code : "";
                $data['discount'] = intval($cart->options->discount);
                $data['index'] = 0;
                $data['item_brand'] = "Google";
                $data['item_category'] = $cart->options->category_name;
                $data['item_category2'] = $cart->options->subcategory_name;
                $data['item_category3'] = $cart->options->sub_subcategory_name;
                $data['item_category4'] = "";
                $data['item_category5'] = "";
                $data['item_list_id'] = "related_products";
                $data['item_list_name'] = "Related Products";
                $data['item_variant'] = $cart->options->variant_name ?? "";
                $data['location_id'] = "ChIJIQBpAG2ahYAR_6128GcTUEo";
                $data['price'] = intval($cart->price) ?? 0;
                $data['quantity'] = intval($cart->qty) ?? 0;
                array_push($items, $data);
            }
            //---------this 123 is prefix for invoice_no----------------
            $order->invoice_no = 123 + $order->id;
            $order->save();
            
            /* Online Payment */
            $order_amount = ($order->total + $order->shipping_cost) - $order->discount ;
            // $url = '';
            // if($request->payment_method == 2){
            //     $url = $this->initiatePayment($order,$order_amount);
            // } 
            // (new SmsService())->SendMessageCustomer($order->customer_phone,$customer->name,$order->invoice_no);
            
            Auth::guard('customer')->loginUsingId($customer->id);
            DB::commit();
           
            return response()->json([
                'status' => true,
                'items' => $items,
                'transaction_id' => $order->invoice_no,
                'invoice_no' => $order->invoice_no,
                'shipping' => $order->shipping_cost,
                'coupon' => $coupon->code ?? "",
                'message' => 'order successfully',
            ]);

           
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ]);
        }
    }


    public function showOrderSuccess($invoice_no){
        $order = Order::with(['orderItem'])->where('invoice_no', $invoice_no)->first();
        $data = [
            'order' => $order,
        ];
        return view('frontend.pages.order_success', $data);
    }
    
    public function index(Request $request){
        return view('frontend.pages.order_tracking');
    }

    public function orderTrack(Request $request){
        
        $data = $request->validate([
            'invoice_no' => 'required',
        ]);
        
        $order = Order::with(['customer:id,name,phone,address','courier:id,name,status'])->select('id','invoice_no','customer_id','courier_id','status','customer_phone','total','created_at')->where('invoice_no', $request->invoice_no)->first();
            if (!empty($order)) {
                $order_status = '' ;
                switch ($order->status) {
                    case 1:
                        $order_status .= 'New';
                       break;
                    case 2:
                        $order_status .= 'Pending';
                       break;
    
                    case 3:
                        $order_status .= 'Approved';
                       break;
    
                    case 4:
                        $order_status .= 'Shipment';
                       break;
    
                    case 5:
                        $order_status .= ' Delivered';
                       break;
    
                    case 6:
                        $order_status .= 'Cancel';
                       break;
    
                    case 7:
                        $order_status .= 'Return';
                       break;

                    case 8:
                        $order_status .= 'Packaging Ready';
                        break;
        
                    default:
                        $order_status .= 'Unknown Order';
                        break;
                }
               return response()->json([
                   'status' => true,
                   'message' => 'order find successfully',
                   'courier_name' => @$order->courier->name ?? "",
                   'data' => view('frontend.components.order_tracking_content',compact('order','order_status'))->render(),
               ]);
            } else {
               return response()->json([
                'status' => false,
                'message' => 'Unknown Order',
               ]);
            }
    }
}
