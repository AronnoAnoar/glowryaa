<?php

namespace App\Http\Controllers\Frontend\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Hash;
use Illuminate\Http\Request;
use App\Models\Customer;
use Illuminate\Support\Facades\Auth;

class RegisterController extends Controller
{
    public function index(){
        return view('frontend.pages.auth.register');
    }

    public function store(Request $request){
        $data = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['nullable', 'string', 'email', 'max:255', 'unique:'.Customer::class],
            'phone' => ['required', 'string', 'max:11', 'unique:'.Customer::class],
            'password' => ['required', 'min:4'],
        ]);

        $data['password'] = Hash::make($data['password']);
        $customer = Customer::create($data);
        Auth::guard('customer')->login($customer);
        return redirect(RouteServiceProvider::HOME);
    }
}
