<?php

namespace App\Http\Controllers\Frontend\user;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use Hash;
use Illuminate\Http\Request;

class ChangePasswordController extends Controller
{
    public function changePassword(){
        return view('frontend.pages.user.change_password');
    }

    public function updatePassword(Request $request, $id){
        $request->validate([
            'password' => 'required|min:6',
            'confirm_password' => 'required|min:6|same:password',
        ]);

        Customer::find($id)->update([
            'password' => Hash::make($request->confirm_password)
        ]);
        
        return back()->with('message','Update Successfully');
        
    }
}
