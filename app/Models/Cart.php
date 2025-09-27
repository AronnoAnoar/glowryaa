<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{

    
    protected $fillable = ['id','user_id', 'product_id', 'quantity', 'variant_id', 'price', 'user_ip','size','weight', 'color','created_at', 'updated_at'] ;

  
    public function product(){

        return $this->belongsTo('App\Models\Product','product_id')->select('id','name','thumbnail_img','slug', 'sale_price', 'price' ) ;

    }


    public function variant(){

        return $this->belongsTo('App\Models\Variant','variant_id')->select('id','name') ;

    }





}
