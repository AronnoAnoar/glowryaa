<?php

namespace App\Http\Controllers\Merchant;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\session;
use App\Models\Merchant ;
use App\Models\MerchantCashbook;
use App\Models\MerchantContactNumber;
use App\Models\MerchantPaymentTransaction;
use App\Models\MerchantSlider;
use App\Models\OrderItem ;
use App\Models\Product ;
use App\Models\Order ;
use App\Models\ResellerPaymentTransaction;
use App\Services\HelperService;
use App\Services\SmsService;
use Carbon\Carbon;
use App\Services\LogTracker;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
      
      public  function index(){

           return view ('merchant.index');
      }




      public function  get_current_merchant(){

            if (session::has('merchant')) {
                 $merchant = session()->get('merchant') ;  
                 return response()->json([
                       'status' => 'OK',
                       'merchant' => $merchant ,
                 ]);
            }
           
      }




      
      public function  current_merchant_update(Request $request){

            $validatedData = $request->validate([
                  'name'  => 'required',
                  'email'  => 'required|unique:merchants,email,'.session()->get('merchant')['id'],
                  'phone'  => 'required|digits:11,unique:merchants,phone,'.session()->get('merchant')['id'],
                  'address'  => 'required',
                
              ]);
      
      
               $merchant= session()->get('merchant');
               $merchant->name=$request->name ;
               $merchant->phone=$request->phone ;
               $merchant->email=$request->email ;
               $merchant->address=$request->address ;
               $merchant->company_name=$request->company_name ;
               $merchant->status=1;
               if ($request->hasFile('image')) {
                
                   $file_path=$request->file('image')->store('images/merchant','public'); 
                   $merchant->image=$file_path ;
               }
             
               if ($merchant->save()) {
                   return response()->json([
                       'success' => 'OK',
                        'message' => 'Information updated successfully '
                   ]);
               }
           
      }

 

      public function  get_dashboard_highlight_info(){

              $merchant_id = session()->get('merchant')['id'];
              $products=array();
              $products['product_total']=Product::where('merchant_id',$merchant_id)->count() ;
              $products['product_approved']=Product::where('merchant_id',$merchant_id)->where('status',1)->count() ;
              $products['product_pending']=Product::where('merchant_id',$merchant_id)->where('status',2)->count() ;
             
              $orders=array();
              $product_id=Product::where('merchant_id',session()->get('merchant')['id'])->select('id')->pluck('id');
              $order_id=OrderItem::whereIn('product_id',$product_id)->select('order_id')->pluck('order_id');
              //total order items counter
              $orders['total_order_items']=$order_id->count();
              $order = Order::whereIn('id',$order_id)->with(['customer'])->get();
              //total order counter
              $orders['total_order']=$order->count();
              //today order counter
              $orders['today_order']=$order->where('created_at', '>=', Carbon::today()->startOfDay())
                                            ->where('created_at', '<=', Carbon::today()->endOfDay())->count();
              //cancel order counter 
              $orders['cancel_order']=$order->where('status',6)->count();                              
              $orders['total_delivered_order']=$order->where('status',5)->count();
           

     
              return response()->json([
                     "status" => "OK",
                     'wallet_value' => self::merchantWalletValue() ,
                     'products' => $products ,
                     'orders' => $orders ,
                     'total_income' => MerchantCashbook::where('merchant_id',$merchant_id)->where('is_income',1)->sum('amount') ,
                     'total_pay_off' => MerchantCashbook::where('merchant_id',$merchant_id)->where('is_income',0)->sum('amount') ,
              ]);

      }

      public static function merchantWalletValue(){

            $merchant_id = session()->get('merchant')['id'] ;
            $credit = MerchantCashbook::where('merchant_id',$merchant_id)->where('is_income',1)->sum('amount');
            $debit = MerchantCashbook::where('merchant_id',$merchant_id)->where('is_income',0)->sum('amount');
            $current_balance = intval($credit) - intval($debit) ;
            return $current_balance ;

      }

       public function paymentWithDrawTransactions(Request $request) {

            $item = $request->item ?? 30 ;
            $transactions = MerchantPaymentTransaction::where('merchant_id',session()->get('merchant')['id'])->orderBy('id','desc')->paginate($item);
            return response()->json([
                  'status' => 'OK' ,
                  'transactions' => $transactions ,
            ]);

       }


      public function paymentWithDrawRequest(Request $request){

            $merchant_id = session()->get('merchant')['id'] ;
            $reseller = Merchant::findOrFail($merchant_id) ;
            $data= $request->validate([
                  'amount' => 'required',
                  'payment_method' => 'required',
                  'account_no' => 'required|min:11',
                  'note' => 'nullable',
            ]);
            DB::beginTransaction();
            try {

            //check withdraw balance
            $amount = self::merchantWalletValue() - $data['amount'] ;
            if($amount <= 100 ){ return response()->json([
                  "status" => 0,
                  'message' => 'you have no sufficient balance for withdraw. your balance should be greater than reserved
                  amount 100.' ,
                  ]);
            }

            $data['merchant_id'] = $merchant_id ;
            $data['status'] = 0 ;
            $transaction = MerchantPaymentTransaction::query()->create($data);
            //debit from cashbook
            $cashbook = new MerchantCashbook();
            $cashbook->merchant_id = $merchant_id;
            $cashbook->invoice_no = HelperService::uniqueInvoiceMaker(5) ;
            $cashbook->is_income = 0 ;
            $cashbook->amount = $transaction->amount ;
            $cashbook->is_commission = $transaction->amount ;
            $cashbook->created_by = session()->get('admin')['id'] ;
            $cashbook->note = ' BDT '.$transaction->amount.' debited for payment with draw request ' ;
            $cashbook->save();
            (new SmsService())->resellerPaymentWithDrawRequest($reseller,$transaction->amount);
            DB::commit();
            return response()->json([
                  "status" => 1,
                  'message' => 'request successful' ,
            ]);

            }catch (\Throwable $e) {
                        LogTracker::failLog($e,$merchant_id);
                        DB::rollBack();
                        return response()->json([
                        "status" => 0,
                        'message' => $e->getMessage() ,
                  ]);
            }
      }



      public function getContact()
      {
            
            $number = MerchantContactNumber::latest()->take(1)->first();
            return response()->json([
                  'success' => true,
                  'number' => $number
            ]);
      }

      public function updateContact(Request $request, $id)
      {
            
            $request->validate([
                  'contact_number' => 'required',
            ]);
            $number = MerchantContactNumber::findOrFail($id);
            $number->merchant_id = session()->get('merchant')['id'] ;
            $number->contact_number = $request->contact_number;
            $number->bkash_personal = $request->bkash_personal;
            $number->nagad_personal = $request->nagad_personal;
            $number->update();
            return response()->json([
                  'success' => true,
                  'message' => 'Number updated Successfully'
            ]);
      }


      



}
