<?php

use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Reseller'], function () {
    //route for reseller login and registration and authorization
    Route::post('api/reseller/login', 'LoginController@check_login');
    Route::get('api/reseller/login/session/check', 'LoginController@checkSession');
    Route::post('api/reseller/register', 'LoginController@register_reseller')->name('reseller.register');
    Route::post('api/reseller/password/reset/send/code', 'LoginController@send_reset_code');
    Route::post('api/reseller/verify/reset/code/{phone}','LoginController@reseller_reset_code_verified');
    Route::post('api/reseller/new/password/set/{phone}', 'LoginController@reseller_set_new_password');
});

Route::group(
    [
        'middleware' => 'reseller',
        'namespace' => 'Reseller',
    ],
    function () {
        Route::get('api/reseller/logout', 'LoginController@logout');
        Route::get('api/get/reseller/dashboard/data','HomeController@get_dashboard_highlight_info');
        Route::get('api/get/cities', 'HomeController@cityList');
        Route::get('api/get/sub_city/of/city/{id}', 'HomeController@subCityList');
        Route::post('api/create/reseller/order', 'OrderController@ResellerOrderStore');
        Route::get('api/reseller/order', 'OrderController@get_reseller_order');
        Route::get('api/reseller/order/view/{id}', 'OrderController@reseller_order_details');
        Route::get('api/reseller/cashbook', 'OrderController@resellerCashbook');
        Route::get('api/get/single/reseller', 'HomeController@get_current_reseller');
        Route::post('api/get/single/reseller/update', 'HomeController@current_reseller_update');
        Route::post('api/get/single/reseller/password/update','LoginController@current_reseller_password_update');
        //reseller payment 
        Route::get('api/reseller/withdraw/transaction','HomeController@paymentWithDrawTransactions');
        Route::post('api/payment/withdraw/request','HomeController@paymentWithDrawRequest');
        //reseller product info 
        Route::get('/api/reseller/show/product/list', 'HomeController@productList');
        Route::get('/api/search/product/{search}', 'HomeController@searchProduct');
        Route::get('/api/refer/list', 'HomeController@referList');

        
    }
);

Route::group(
    [
        'namespace' => 'Admin',
        'middleware' => 'reseller',
    ],
    function () {
        Route::get('search/customer/with/phone/number/{number}','ProductController@searchCustomer');
        Route::get('/search/product/with/code/{search}', 'ProductController@searchWithCode');
    }
);

?>
