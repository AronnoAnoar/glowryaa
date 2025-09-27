<?php

namespace App\Providers;


use DB;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\View\Composers\GeneralComposer;
use Illuminate\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Paginator::useBootstrap();
        Schema::defaultStringLength(191);
        View::composer(['frontend.app'],GeneralComposer::class);
        
        $general_settings   = DB::table('general_settings')->first();
        View::share('general_settings',$general_settings);

    }
}
