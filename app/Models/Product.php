<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable=['id', 'name', 'merchant_id', 'category_id', 'sub_category_id', 'sub_sub_category_id', 'brand_id', 'product_code', 'thumbnail_img', 'slug', 'is_manual_stock', 'stock', 'sale_price', 'discount', 'price', 'reselling_price', 'show_reseller_panel', 'status', 'product_position', 'product_placement', 'details', 'short_details', 'select_home_page', 'show_homepage', 'expired_date', 'single_checkout','is_combo', 'merchant_commission', 'feature_product', 'video_url', 'is_free_delivery','meta_title','meta_description','meta_key','meta_content', 'created_at', 'updated_at'] ;

    public function productImage()
    {
        return $this->hasMany('App\Models\ProductImage', 'product_id');
    }

    public function productAttribute()
    {
        return $this->hasOne('App\Models\ProductAttribute', 'product_id');
    }

    
    
    public function productVariant()
    {
        return $this->hasMany('App\Models\ProductVariant', 'product_id');
    }

    public  function supplier(){
        return $this->belongsTo('App\Models\Supplier','merchant_id');
    }

    public  function productBarcode(){
        return $this->hasOne('App\Models\ProductBarcode','product_id');
    }

    public function purchaseItem()
    {
        return $this->hasMany('App\Models\PurchaseItem','product_id');

    }


    public function category()
    {
        return $this->belongsTo('App\Models\Category','category_id');
    }

    public function subCategory()
    {
        return $this->belongsTo('App\Models\SubCategory','sub_category_id');

    }

    public function subSubCategory()
    {
        return $this->belongsTo('App\Models\SubSubCategory','sub_sub_category_id');

    }

    public function brand()
    {
        return $this->belongsTo('App\Models\Brand','brand_id');
    }

    public function productReviews()
    {
        return $this->hasMany('App\Models\ProductReview','product_id')->where('status',1)->orderBy('id','desc');

    }

    public function merchant(){

        return $this->belongsTo('App\Models\Merchant','merchant_id');
    }

    public function carts(){
        return $this->hasMany('App\Models\Cart', 'product_id');
    }


}
