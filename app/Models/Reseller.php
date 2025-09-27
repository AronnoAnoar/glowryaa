<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;


class Reseller extends Authenticatable
{

    use Notifiable;
    protected $guard = 'reseller';

    protected $fillable = ['id', 'refer_id', 'name', 'company_name', 'page_name', 'username', 'email', 'phone', 'password', 'bkash_no', 'address', 'image', 'status', 'commission', 'order_return_cost', 'updated_at', 'created_at'];



}
