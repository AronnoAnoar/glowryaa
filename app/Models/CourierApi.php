<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourierApi extends Model
{
    use HasFactory;
    protected $fillable = ['id', 'steadfast_api_key', 'steadfast_secret_key', 'pathao_client_id', 'pathao_client_secret', 'pathao_store_id', 'pathao_client_email', 'pathao_client_password', 'pathao_access_token', 'redx_store_id', 'redx_access_token', 'created_at', 'updated_at'] ;
}
