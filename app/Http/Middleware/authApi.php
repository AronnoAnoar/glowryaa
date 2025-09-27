<?php

namespace App\Http\Middleware;

use Closure;

class authApi
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {




        if ($request->accepts(['text/html', 'application/json']) && $request->header('x-api-key') == '$2y$10$kzaYH2t9fgVMoyqKMWF7POjD45cilj') {

              return $next($request);

        }else{

             return response()->json(['message'=>'Api invalid or unauthorized '],403);
        }







    }
}