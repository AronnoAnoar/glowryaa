<?php

namespace App\Http\Controllers\Frontend\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\Request;
use Auth;

class LogInController extends Controller
{
    public function index(){
        return view('frontend.pages.auth.login');
    }

    public function store(Request $request){
        $data = $request->validate([
            'phone' => ['required', 'string', 'max:11'],
            'password' => ['required'],
        ]);

        $credential = ['phone' => $data['phone'], 'password' => $data['password']];
        if (!Auth::guard('customer')->attempt($credential)) {
            return redirect()->route('login')->withErrors(['error' => 'Your given credentials do not match our records']);
        }
        else{
            return redirect(RouteServiceProvider::DASHBOARD);
        }

    }


}
