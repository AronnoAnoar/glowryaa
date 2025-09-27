<?php

namespace App\View\Composers;

use App\Models\Category;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class GeneralComposer {

    public function __construct() {
        //
    }

    public function compose(View $view): void
    {
         $categories = Category::with(['subCategory:id,name,slug,status,category_id','subSubCategory:id,name,slug,status,category_id,subcategory_id'])
                                ->select('id','name','slug','status')    
                                ->where('status', 1)->orderBy('position', 'ASC')->limit(8)->get();
        
        $footer_settings    = DB::table('footer_settings')->first();
        $pages = DB::table('pages')->get();
        $view->with([
            "categories"        => $categories,
            'footer_settings'   => $footer_settings,
            'pages'             => $pages,
        ]);
    }


}