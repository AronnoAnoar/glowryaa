<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductReview extends Model
{
   protected $fillable = ['id', 'landing_page_id', 'product_id', 'user_name', 'status', 'review', 'image', 'rating_stars', 'review_source', 'created_at', 'updated_at'];


   public function reviewer()
   {

      return   $this->belongsTo('App\User', 'user_id');
   }


   public function review_product()
   {

      return   $this->belongsTo('App\Models\Product', 'product_id');
   }


   public function landingPage()
   {
      return $this->belongsTo('App\Models\LandingPage', 'landing_page_id');
   }
}
