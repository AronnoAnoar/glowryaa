<?php

namespace App\Http\Middleware;

use Closure;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class Reseller
{
    
    public function handle($request, Closure $next, $guard = 'reseller')
    {
        if (Session::has('reseller')){
             return $next($request);
        }
        if (Auth::guard($guard)->guest()) {

          
            return redirect('/reseller/login');

            
        }
        return $next($request);
    }

}
