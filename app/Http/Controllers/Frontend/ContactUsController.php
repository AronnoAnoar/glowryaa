<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use Illuminate\Http\Request;

class ContactUsController extends Controller
{
    public function index(){
        return view('frontend.pages.contact_us');
    } 

    public function store(Request $request){
        $request->validate([
            'name' => 'required|string',
            'phone' => 'required|numeric',
            'message' => 'required'
        ]);

        Contact::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'message' => $request->message,
        ]);

        return back();
    }
}
