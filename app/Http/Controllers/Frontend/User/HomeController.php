<?php

namespace App\Http\Controllers\Frontend\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\User\ProfileUpdateRequest;
use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    
    public function index(){
        $orders = DB::table('orders')
                    ->where('customer_id',Auth::guard('customer')->user()->id)
                    ->select('id','invoice_no','status','discount','total','created_at')->get();
        $data = [
            'orders' => $orders
        ];
        return view('frontend.pages.user.index', $data);
    }

    /* ==================== Logout ==================== */ 
    public function logout(){
        Auth::guard('customer')->logout();
        return redirect()->route('root')->with('message','Logout Successfully');
    }
}
