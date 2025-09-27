<?php

namespace App\Http\Controllers\Admin;

use App\Models\Product;
use App\Models\Merchant;
use App\Models\OrderItem;
use Illuminate\Http\Request;
use App\Exports\MerchantExport ;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Facades\Excel;


class MerchantController extends Controller
{





    //function for admin to merchant access
    public function adminAccessMerchant($id){

          $merchant = Merchant::findOrFail($id);

          if ($merchant) {
              session()->put('merchant',$merchant);
              return response()->json([
                  'status'=>"OK",
                  'token'=>'ASDF@#@@@#JH##FGH#GHD!####DFG',
                  'merchant'=>$merchant,
              ]);
          }
    }



    public  function index(Request $request){
        $item = $request->item ?? 10 ;
        $merchants= Merchant::orderBy('id','DESC')->paginate($item);
        foreach ($merchants as $key => $merchant) {
              $merchant->{'total_products'} = Product::where('merchant_id',$merchant->id)->where('status',1)->count();
              //counting merchant total orders
              $product_id=Product::where('merchant_id',$merchant->id)->select('id')->pluck('id');
              $order_id=OrderItem::whereIn('product_id',$product_id)->select('order_id')->pluck('order_id');
              $merchant->{'total_orders'}=$order_id->count();
        }
        return response()->json([
            "success" => "OK",
            "merchants" => $merchants ,
        ]);
    }



    public function addMerchant(Request $request){

        $validatedData = $request->validate([
            'name'  => 'required',
            'email'  => 'required|unique:merchants',
            'phone'  => 'required|unique:merchants|digits:11',
            'address'  => 'required',
            'company_name'  => 'required | unique:merchants',
        ]);


         $merchant= new Merchant ();
         $merchant->name=$request->name ;
         $merchant->phone=$request->phone ;
         $merchant->email=$request->email ;
         $merchant->address=$request->address ;
         $merchant->company_name=$request->company_name ;
         $merchant->password=Hash::make('123456');
         $merchant->status=1;
         if ($request->hasFile('image')) {
             $file_path=$request->file('image')->store('images/merchant','public');
              $merchant->image=$file_path ;
         }

         if ($merchant->save()) {
             return response()->json([
                 'success' => 'OK',
                  'message' => 'New  merchant added successfully '
             ]);
         }




    }



    public function getEditMerchant($id){

        $merchant  = Merchant::find($id);
         if ($merchant) {
            return response()->json([
                    "success"  => "OK",
                    "merchant"  => $merchant,  ]);
        }else {
            return  response()->json([
                            "success" => "Fail",
                            "message" => "something wrong "  ]);
            }

}

    public function searchMerchant($data){

           $merchants = Merchant::where('company_name','like','%'.$data.'%')
                                ->orWhere('email','like','%'.$data.'%')
                                ->orWhere('phone','like','%'.$data.'%')
                                ->orWhere('address','like','%'.$data.'%')
                                ->paginate(10);

           return response()->json([
                  "status" => "OK",
                  'merchants' => $merchants ,
                ]);
    }


    public function updateMerchant(Request $request, $id){


        $validatedData = $request->validate([
            'name'  => 'required',
            'email'  => 'required|unique:merchants,email,'.$id,
            'phone'  => 'required|digits:11,unique:merchants,phone,'.$id,
            'address'  => 'required',

        ]);


         $merchant= Merchant::find($id) ;
         $merchant->name=$request->name ;
         $merchant->phone=$request->phone ;
         $merchant->email=$request->email ;
         $merchant->address=$request->address ;
         $merchant->company_name=$request->company_name ;
         $merchant->status=1;
         if ($request->hasFile('image')) {

            if (file_exists('storage/'.$merchant->image)) {
                 unlink('storage/'.$merchant->image);
             }

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



     public function deactiveMerchant($id){

        $merchant  = Merchant::find($id);
        $merchant->status=0 ;
        if ($merchant->save()) {
           return response()->json([
                   "success"  => "OK",
                   "message"  => "This merchant de-activated",  ]);
       }else {
           return  response()->json([
                           "success" => "Fail",
                           "message" => "something wrong "  ]);
           }
     }




     public function activeMerchant($id){

        $merchant  = Merchant::find($id);
        $merchant->status=1 ;
        if ($merchant->save()) {
           return response()->json([
                   "success"  => "OK",
                   "message"  => "This merchant activated",  ]);
       }else {
           return  response()->json([
                           "success" => "Fail",
                           "message" => "something wrong "  ]);
           }
     }





    public function destroyMerchant($id){

        $merchant  = Merchant::find($id);
         if ($merchant->delete()) {
            return response()->json([
                    "success"  => "OK",
                    "message"  => "This merchant has removed",  ]);
        }else {
            return  response()->json([
                            "success" => "Fail",
                            "message" => "something wrong "  ]);
            }

    }


    public function exportMerchant(){

        return Excel::download(new MerchantExport, 'merchant.xlsx');
    }




}
