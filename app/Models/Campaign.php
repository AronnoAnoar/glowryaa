<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Campaign extends Model
{
     public function campaign_products()
    {
        return $this->hasMany('App\Models\CampaignProduct','campaign_id');
    }


    public function sliders(){
        return $this->hasMany('App\Models\CampaignSlider','campaign_id');
    }


}
