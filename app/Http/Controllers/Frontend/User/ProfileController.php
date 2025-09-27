<?php

namespace App\Http\Controllers\Frontend\User;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use Auth;
use DB;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function profile(){
        return view('frontend.pages.user.profile');
    }

    public function profileEdit(){
        $cities = DB::table('cities')->where('status', 1)->get();
        $data = [
            'cities' => $cities
        ];
        return view('frontend.pages.user.profile_edit', $data);
    }

    public function profileUpdate(Request $request, $id){
        $validate = $request->validate([
            'name' => 'required',
            'email' => 'nullable|email',
            'phone' => 'required|digits:11|unique:customers,phone,'.$id,
            'city_id' => 'required',
            'address' => 'required',
        ]);

        $customer = Customer::find($id);
        $customer->name = $request->name;
        $customer->phone = $request->phone;
        $customer->email = $request->email;
        $customer->address = $request->address;
        $customer->city_id = $request->city_id;

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('images/user-photos', 'public');
            $customer->image = $path;
        }
        
        $customer->save();

        return back()->with('message','Update Successfully');
    }
}
