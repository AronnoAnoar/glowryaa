<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use DB;
use Illuminate\Http\Request;

class CustomPageController extends Controller
{
    public function index($slug){
        $page = DB::table('pages')->where('slug', $slug)->select('id','name','slug','details')->first();
        $data = [
            'page' => $page
        ];
        return view('frontend.pages.custom_page', $data);
    }
}
