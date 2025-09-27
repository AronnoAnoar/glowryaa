<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Exception;

class PrintHouse extends Model
{
      public function print_details(){
         return  $this->hasMany('App\Models\ProductForPrint','company_id');
      }


}
