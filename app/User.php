<?php

namespace App;

use Exception;
use Illuminate\Support\Facades\Hash;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table='users';


    public function userCity(){
       return   $this->belongsTo('App\Models\City','city_id');
    }


    protected $fillable = ['id', 'name', 'mobile_no', 'email', 'facebook_id', 'password', 'address', 'city_id', 'sub_city_id', 'image', 'status', 'created_at', 'updated_at'];



    public static function storeUser($data){
          $data=$data ;
          $data['mobile_no']=$data['customer_phone'] ;
          $data['password']=Hash::make($data['customer_phone']) ;
          $data['name']= $data['name'];
          $data['city_id']= $data['city_id'];
          $data['sub_city_id']= $data['sub_city_id'];
          $data['address']= $data['address'];
          $data['email']= $data['email'] ?? null ;
          $data['status']= 1 ;
          User::query()->create($data);
          return;
    }



    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];










}
