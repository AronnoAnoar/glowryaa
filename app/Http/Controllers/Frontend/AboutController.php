<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use DB;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index(){
        $data = DB::table('pages')->where('slug','about-us')->first();
        $about = $data->details ?? null;
        $contacts = $data->contact_inf ?? null;
        $data = [
            'about'    => $about,
            'contacts' => $contacts
        ];
        
        return view('frontend.pages.about', $data);
    }
}
