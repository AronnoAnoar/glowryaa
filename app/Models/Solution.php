<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Solution extends Model
{
    public function landingPage(){
        return $this->belongsTo('App\Models\LandingPage','landing_page_id');
    }
}
