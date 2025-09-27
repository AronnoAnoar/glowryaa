<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseItem extends Model
{
    protected $fillable = [ 'id', 'purchase_id','product_id', 'price', 'stock', 'created_at', 'updated_at'] ;
    public function merchant(){
        return $this->belongsTo('App\Models\Merchant','merchant_id');
    }
    public function product(){
        return $this->belongsTo('App\Models\Product','product_id');
    }
}
