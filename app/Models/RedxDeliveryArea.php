<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RedxDeliveryArea extends Model
{
    use HasFactory;

    protected $table = 'redx_delivery_areas';

    protected $fillable = ['id', 'district_name', 'area_id', 'area_name', 'zone_id', 'status', 'created_at', 'updated_at'];
}
