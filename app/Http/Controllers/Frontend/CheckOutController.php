<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\City;
use App\Models\SubCity;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\User;
use Gloudemans\Shoppingcart\Facades\Cart;

class CheckOutController extends Controller
{
    public function index(){
        $cities = City::all();
        $cart_sub_total = Cart::subtotal();
        $delivery_charges = DB::table('delivery_charges')->select('id','name','delivery_charge')->get();
        $data = [
            'cart_sub_total' => $cart_sub_total,
            'delivery_charges' => $delivery_charges,
            'cities' => $cities
        ];
        $cart_count = Cart::count();
        $name = 'Cart';
        if($cart_count > 0){
            return view('frontend.pages.check_out', $data);
        }else{
            return view('frontend.pages.cart_blank',compact('name'));
        }
    }

    public function getSubCity(Request $request){
        $subcitys = SubCity::where('city_id', $request->city_id)->get();
        return response()->json([
            'status' => true,
            'subcitys' => $subcitys
        ]);
    }


//     public function getsubcategories(Request $request){
//         $subcategories = SubCategory::where('category_id',$request->category_id)->get();
//         if($subcategories->count()==0){
//             $Str_to_send = "<option value=''>- No Data at Database -</option>";
//         }else{
//             $Str_to_send = "<option value=''>-Select One SubCategory-</option>";

//         }
//          foreach($subcategories as $subcategory){
//             //  echo $subcategory->subcategory_name. $subcategory->id;
//              $Str_to_send .= "<option value='$subcategory->id'>$subcategory->subcategory_name</option>" ;
//          }
//          echo $Str_to_send;
//     }

}