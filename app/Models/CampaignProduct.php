<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CampaignProduct extends Model
{
    public function product(){
        return $this->belongsTo('App\Models\Product','product_id')->select(['id','name','slug','price','sale_price','discount','thumbnail_img']);
    }
}
