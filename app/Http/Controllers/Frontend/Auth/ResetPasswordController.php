<?php

namespace App\Http\Controllers\Frontend\Auth;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use Illuminate\Http\Request;
use DB;

class ResetPasswordController extends Controller
{
    public function index(){
        return view('frontend.pages.auth.reset_password');
    }

    public function resetPassword(Request $request){
        // return $request;
    $customer = DB::table('customers')->where('phone', $request->phone)->first();
    if($customer){
        
    }
       return Customer::find('phone', $request->phone)->first();
    }
}
