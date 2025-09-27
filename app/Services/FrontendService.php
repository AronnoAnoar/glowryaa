<?php 
namespace App\Services;

use App\Models\Product;
use Illuminate\Support\Facades\DB;

class FrontendService{

    public static function productIds($column_name,$column_value){
        return DB::table('products')->where($column_name, $column_value)->where('show_homepage', 1)->select('id')->pluck('id');
    }

    public static function productFetcher($products_ids)
    {
        return  Product::whereIn('id', $products_ids)
                        ->select('id','category_id','name','status','thumbnail_img','slug','sale_price','discount','price')
                        ->where('status', 1)
                        ->inRandomOrder()
                        ->latest()
                        ->paginate(12);
    }


    public static function getProducts(){
        return DB::table('products')->select(
            'id',
            'category_id',
            'name',
            'status',
            'thumbnail_img',
            'slug',
            'sale_price',
            'discount',
            'price'
            )
            ->where('select_home_page', 1)
            ->where('status', 1)
            ->inRandomOrder();
    }


}