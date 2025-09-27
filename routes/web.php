<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;



Route::get('reboot', function () {
    Artisan::call('storage:link');
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('route:clear');
    Artisan::call('config:cache');
         dd("Ready to Start.");
});



//others route
Route::get('_public/others', 'Admin\OthersController@others')->middleware('auth');
//:::::start the backend route::::::

###### ADMIN API ROUTES ######
require 'admin.php';
###### ADMIN API ROUTES ######


###### Merchant API ROUTES ######
require 'merchant.php';
###### Merchant API ROUTES ######



###### Reseller API ROUTES ######
require 'reseller.php';
###### Reseller API ROUTES ######



Route::post('api/verify/otp/admin/login', 'Admin\LoginController@otpVerification');
Route::get('check/session/admin', 'Admin\LoginController@sessionCheck');
Route::get('/reseller', 'Reseller\HomeController@home');


Route::get('api/get/city/for/order/checkout', 'Admin\SubCityController@cityList');
Route::get('city/wise/sub/city/{id}', 'Admin\SubCityController@cityWiseSubCity');

Route::get('login/google', 'Frontend\Social\GoogleLoginController@redirectToProvider');
Route::get('callback/google', 'Frontend\Social\GoogleLoginController@handleProviderCallback');

//start the ssl route
Route::group(
    [
        // 'middleware' => 'auth',
    ],
    function () {
        Route::post('/pay', 'SslCommerzPaymentController@index');
        Route::post('/pay-via-ajax', 'SslCommerzPaymentController@payViaAjax');

        Route::post('/success', 'SslCommerzPaymentController@success');
        Route::post('/fail', 'SslCommerzPaymentController@fail');
        Route::post('/cancel', 'SslCommerzPaymentController@cancel');

        Route::post('/ipn', 'SslCommerzPaymentController@ipn');

        Route::get('api/get/order/{id}', 'SslCommerzPaymentController@getOrder');
    }
);

Route::get('/sociallogin/google', 'SocialiteController@login')->name('login.google');
Route::get('callback/google', 'SocialiteController@redirect');

Route::get('login/facebook', 'SocialiteController@loginFacebook');
Route::get('facebook/callback', 'SocialiteController@redirectFacebook');


//admin mix routes
Route::get('/admin/{any}', function () {
    return view('admin.master');
})->where('any', '^(?!api\/)[\/\w\.\,-]*');


//merchant mix routes
Route::get('/merchant/{any}', function () {
    return view('merchant.app');
})->where('any', '^(?!api\/)[\/\w\.\,-]*');


//reseller mix routes
Route::get('/reseller/{any}', function () {
    return view('reseller.app');
})->where('any', '^(?!api\/)[\/\w\.\,-]*');

