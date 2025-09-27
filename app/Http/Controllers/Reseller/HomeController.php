<?php

namespace App\Http\Controllers\Reseller;
use Carbon\Carbon;
use App\Models\City;
use App\Models\Order ;
use App\Models\Product;
use App\Models\SubCity;
use App\Models\Category;
use App\Models\Reseller;
use App\Models\OrderItem ;
use App\Models\SubCategory;
use App\Services\LogTracker;
use App\Services\SmsService;
use Illuminate\Http\Request;
use App\Models\SubSubCategory;
use App\Services\HelperService;
use App\Models\ResellerCashbook;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;
use App\Models\ResellerPaymentTransaction;

class HomeController extends Controller
{

      public  function index(){

           return view ('reseller.index');
      }


      public  function cityList(){

           $cities = City::where('status',1)->orderBy('name')->get();
           return response()->json([
                 'cities' => $cities
           ]);
      }




      public  function subCityList($city_id){

            $sub_cities = SubCity::where('status',1)->where('city_id',$city_id)->orderBy('name')->get();
            return response()->json([
                  'sub_cities' => $sub_cities
            ]);
       }


      public function  get_current_reseller(){

            if (session::has('reseller')) {
                 $reseller = session()->get('reseller') ;
                 return response()->json([
                       'status' => 'OK',
                       'reseller' => $reseller ,
                 ]);
            }

      }





      public function  current_reseller_update(Request $request){

            $validatedData = $request->validate([
                  'name'  => 'required',
                  'email'  => 'required|unique:resellers,email,'.session()->get('reseller')['id'],
                  'phone'  => 'required|digits:11,unique:resellers,phone,'.session()->get('reseller')['id'],
                  'address'  => 'required',

              ]);


               $reseller= session()->get('reseller');
               $reseller->name=$request->name ;
               $reseller->phone=$request->phone ;
               $reseller->email=$request->email ;
               $reseller->address=$request->address ;
               $reseller->company_name=$request->company_name ;
               $reseller->status=1;
               if ($request->hasFile('image')) {
                   $file_path=$request->file('image')->store('images/reseller','public');
                   $reseller->image=$file_path ;
               }

               if ($reseller->save()) {
                   return response()->json([
                       'success' => 'OK',
                        'message' => 'Information updated successfully '
                   ]);
               }

      }



      public function  get_dashboard_highlight_info(){

              $reseller_id = session()->get('reseller')['id'];

              $orders=array();
              $order = Order::where('reseller_id',$reseller_id)->with(['customer'])->get();
              $orders_id = Order::where('reseller_id',$reseller_id)->select('id')->pluck('id');
              //total order items counter
              $orders['total_order_items']=OrderItem::whereIn('order_id',$orders_id)->count();
              //total order items
              $orders['total_order']=$order->count();
              //today order counter
              $orders['today_order']=$order->where('created_at', '>=', Carbon::today()->startOfDay())
                                            ->where('created_at', '<=', Carbon::today()->endOfDay())->count();
              //cancel order counter
              $orders['pending_order']=$order->where('status',2)->count();
              $orders['approved_order']=$order->where('status',3)->count();
              $orders['shipment_order']=$order->where('status',4)->count();
              $orders['return_order']=$order->where('status',7)->count();
              $orders['cancel_order']=$order->where('status',6)->count();
              $orders['total_delivered_order']=$order->where('status',5)->count();



              return response()->json([

                     "status" => "OK",
                     'orders' => $orders ,
                     'wallet_value' => self::resellerWalletValue() ,
                     'total_income' => ResellerCashbook::where('reseller_id',$reseller_id)->where('is_income',1)->sum('amount') ,
                     'total_pay_off' => ResellerCashbook::where('reseller_id',$reseller_id)->where('is_income',0)->sum('amount') ,
              ]);

      }


      public static function resellerWalletValue(){

             $reseller_id = session()->get('reseller')['id'] ;
             $credit = ResellerCashbook::where('reseller_id',$reseller_id)->where('is_income',1)->sum('amount');
             $debit = ResellerCashbook::where('reseller_id',$reseller_id)->where('is_income',0)->sum('amount');
             $current_balance = intval($credit) -  intval($debit) ;
             return $current_balance ;

      }





      public function paymentWithDrawTransactions(Request $request) {

            $item = $request->item ?? 30 ;
            $transactions = ResellerPaymentTransaction::where('reseller_id',session()->get('reseller')['id'])->orderBy('id','desc')->paginate($item);
            return response()->json([
                'status' => 'OK' ,
                'transactions' => $transactions ,
            ]);

      }



      public  function paymentWithDrawRequest(Request $request){

            $reseller_id = session()->get('reseller')['id'] ;
            $reseller = Reseller::findOrFail($reseller_id) ;
            $data= $request->validate([
                  'amount' => 'required',
                  'payment_method' => 'required',
                  'account_no' => 'required|min:11',
                  'note' => 'nullable',
            ]);
            DB::beginTransaction();
             try {

                 //check withdraw balance
                 $amount = self::resellerWalletValue() - $data['amount'] ;
                 if($amount <= 100 ){
                   return response()->json([
                        "status" => 0,
                        'message' => 'you have no sufficient balance for withdraw. your balance should be greater than reserved amount 100.' ,
                   ]);
                 }

                 $data['reseller_id'] = $reseller_id ;
                 $data['status'] = 0 ;
                 $transaction = ResellerPaymentTransaction::query()->create($data);
                 //debit from cashbook
                 $cashbook = new ResellerCashbook();
                 $cashbook->reseller_id = $reseller_id;
                 $cashbook->invoice_no = HelperService::uniqueInvoiceMaker(4) ;
                 $cashbook->is_income = 0 ;
                 $cashbook->amount = $transaction->amount ;
                 $cashbook->created_by = session()->get('admin')['id'] ;
                 $cashbook->note = ' BDT '.$transaction->amount.' debited for  payment with draw request ' ;
                 $cashbook->save();
                 (new SmsService())->resellerPaymentWithDrawRequest($reseller,$transaction->amount);
                 DB::commit();
                 return response()->json([
                        "status" => 1,
                        'message' => 'request successful' ,
                 ]);

             }catch (\Throwable $e) {
                  LogTracker::failLog($e,$reseller_id);
                  DB::rollBack();
                  return response()->json([
                        "status" => 0,
                        'message' => $e->getMessage() ,
                  ]);
            }



      }








      public function productList(Request $request)
      {


        $item=$request->item??20;
        $categories = Category::select('id','name')->get();
        $sub_categories='';
        $sub_sub_categories='';

        if ( !empty($request->category_id)  || !empty($request->sub_category_id)  || !empty($request->sub_sub_category_id) ) {
              //fetched sub category and stock
              $sub_categories = $request->category_id ? SubCategory::where('category_id',$request->category_id)->select('id','name')->get() : '';
              //sub categories
              $sub_sub_categories = $request->sub_category_id ? SubSubCategory::where('subcategory_id',$request->sub_category_id)->select('id','name')->get() : '' ;
              $category_column_name='';
              $category_id='';

              //only category wise
              if (!empty($request->category_id) && $request->category_type=='category' ) {
                     $category_column_name='category_id' ;
                     $category_id=$request->category_id;
                     $products= self::getCategoryWiseProducts($category_column_name,$category_id,$item);
               }
              //category and sub category wise
              if (!empty($request->sub_category_id) && $request->category_type=='sub_category' ) {
                     $category_column_name='sub_category_id' ;
                     $category_id=$request->sub_category_id;
                     $products= self::getCategoryWiseProducts($category_column_name,$category_id,$item);
              }

              //category and sub sub category wise
              if (!empty($request->sub_sub_category_id) && $request->category_type=='sub_sub_category' ) {
                     $category_column_name='sub_sub_category_id' ;
                     $category_id=$request->sub_sub_category_id;
                     $products= self::getCategoryWiseProducts($category_column_name,$category_id,$item);
              }

              return response()->json([
                  'categories' => $categories,
                  'products' => $products,
                  'sub_categories' => $sub_categories,
                  'sub_sub_categories' => $sub_sub_categories,
              ]);


          }else{

          if ($request->status == "all") {
              $products = Product::orderBy('id', 'DESC')->where('show_reseller_panel',1)->select('id','name','slug','category_id','sub_category_id','sub_sub_category_id','stock','product_code','price','sale_price','reselling_price','thumbnail_img')->with([ 'productBarcode','productImage'])->paginate($item);

          } elseif ($request->status == 0) {
              $products = Product::orderBy('id', 'DESC')->where('show_reseller_panel',1)->select('id','name','slug','category_id','sub_category_id','sub_sub_category_id','stock','product_code','price','sale_price','reselling_price','thumbnail_img')->with([ 'productBarcode','productImage'])->paginate($item);

          } else {
              $products = Product::orderBy('id', 'DESC')->where('show_reseller_panel',1)->select('id','name','slug','category_id','sub_category_id','sub_sub_category_id','stock','product_code','price','sale_price','reselling_price','thumbnail_img')->with([ 'productBarcode','productImage'])->where('status', $request->status)->paginate($item);

          }

          return response()->json([
            'categories' => $categories,
            'products' => $products,
            'sub_categories' => $sub_categories,
            'sub_sub_categories' => $sub_sub_categories,
          ]);

        }

      }




      public static function  getCategoryWiseProducts($category_column_name,$category_id,$paginate_item){

        return Product::where($category_column_name,$category_id)
                  ->where('show_reseller_panel',1)
                  ->select('id','name','category_id','sub_category_id','sub_sub_category_id','stock','product_code','price','sale_price','reselling_price','thumbnail_img')
                  ->with(['productBarcode','productImage'])
                  ->paginate($paginate_item);

     }



      public function searchProduct($search)
      {

          $products = Product::where('show_reseller_panel',1)->where('product_code',$search)
                         ->orWhere('details', 'like', '%' . $search . '%')
                         ->orWhere('name', 'like', '%' . $search . '%')
                        ->with([ 'productBarcode','productImage'])->paginate(10);
          return response()->json([
              'status' => 'SUCCESS',
              'products' => $products
          ]);
      }



      public function referList()
      {
            $refer_list = Reseller::where('refer_id',session()->get('reseller')->username)->get();
            return response()->json([
                  'status' => 'OK' ,
                  'refer_list' => $refer_list ,
            ]);

      }











}
