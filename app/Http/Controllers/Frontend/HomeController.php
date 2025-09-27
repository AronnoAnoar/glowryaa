<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Services\FrontendService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\HappyCustomer; // <-- যুক্ত করা হয়েছে

class HomeController extends Controller
{
    public function index(){
        //------------frontend silder------------------
        $sliders = DB::table('sliders')->select('id','image','status','url')
                            ->where('status', 1)
                            ->inRandomOrder()
                            ->latest()
                            ->limit(5)->get();
        //----------top section categoirs--------------
        $top_section_categories = DB::table('categories')->select('id','name','slug','icon_image')
                            ->where('is_selected', 1)
                            ->where('status', 1)
                            ->orderBy('position', 'asc')
                            ->inRandomOrder()
                            ->latest()
                            ->limit(10)
                            ->get();
        
        //----------- Happy Customers --------------
        $happyCustomers = HappyCustomer::where('status', true)->orderBy('order', 'asc')->get(); // <-- যুক্ত করা হয়েছে

        $data = [
            'sliders'                 => $sliders,
            'top_section_categories'  => $top_section_categories,
            'happyCustomers'          => $happyCustomers, // <-- যুক্ত করা হয়েছে
        ];

        return view('frontend.pages.index', $data);

    }


    public static function  getProducts($category_column_name,$category_id,$items){

            return Product::select('id','name','product_code','price','sale_price','slug', 'discount', 'thumbnail_img','created_at')
                            ->where($category_column_name,$category_id)
                            ->where('status',1)->where('show_homepage',1)
                            ->orderBy('id','desc')->take($items)->get();

            }

    
    //-----------------loadMoreCategoryProduct----------------
    public function loadMoreCategoryProduct(Request $request){
        $page = $request->page;
        $limit = $request->limit; 
        $start = ($page - 1) * $limit;
            //---------------category wise product---------
        $categories = Category::skip($start)->orderBy('position', 'asc')->where('status', 1)->select('id','name','slug')->with(['subCategory:id,category_id,name,slug'])->paginate($limit);
        foreach($categories as $category) {
            $category->{'products'} = $this::getProducts('category_id',$category->id,12);
        }

        $data = "";
        foreach($categories as $category) { 
            $data .= view('frontend.components.load_more_category_product', compact('category'))->render();
        }
        

        return response()->json([
            'status' => true,
            'data' => $data,
            'category_length' => $categories->count(),
            'message' => 'load Data with category product',
        ]);
    }

}