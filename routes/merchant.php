
<?php
use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Merchant'], function () {
    Route::post('api/merchant/login', 'LoginController@check_login');
    Route::get('api/merchant/login/session/check', 'LoginController@check_session');
    Route::post('api/merchant/register', 'LoginController@register_merchant')->name('merchant.register');

    Route::post('api/merchant/password/reset/send/code', 'LoginController@send_reset_code');
    Route::post('api/merchant/verify/reset/code/{phone}','LoginController@merchant_reset_code_verified');
    Route::post('api/merchant/new/password/set/{phone}','LoginController@merchant_set_new_password');
});

Route::group(
    [
        'middleware' => 'merchant',
        'namespace' => 'Merchant',
    ],
    function () {

        Route::get('api/merchant/logout', 'LoginController@logout');
        Route::get('api/merchant/products', 'ProductController@index');
        Route::post('api/merchant/product/store', 'ProductController@storeProduct');
        Route::get('api/merchant/cashbook', 'OrderController@merchantCashbook');
        Route::get('api/merchant/cashbook/payoff', 'OrderController@merchantCashbookPayOff');
        // route for dashboard data
        Route::get('api/get/merchant/dashboard/data','HomeController@get_dashboard_highlight_info');
        //start the others  route . to load other data of products
        Route::get('api/product/others', 'OthersController@others');
        //depended route
        Route::get('api/category/wise/subCategory/{id}','CategoryController@categoryWiseSubCategory');
        Route::get('api/subCategory/wise/subSubCategory/{id}','SubCategoryController@subCategoryWiseSubCategory');
        Route::get('api/attribute/wise/variant/{id}','AttributeAndVariantController@attributeWiseVariant');
        //route for search product, edit product and delete product if it pending situation
        Route::get('api/merchant/search/product/{search}', 'ProductController@searchProducts');
        Route::get('api/merchant/get/edit/product/{id}', 'ProductController@getProduct');
        Route::post('api/merchant/edit/product/{id}', 'ProductController@updateProduct');
        Route::get('api/merchant/delete/existing/product/image/{id}','ProductController@deleteProductImage');
        //route for merchant order
        Route::get('api/merchant/order', 'OrderController@get_merchant_order');
        Route::get('api/merchant/order/view/{id}', 'OrderController@merchant_order_details');
        //merchant profile route
        Route::get('api/get/single/merchant', 'HomeController@get_current_merchant');
        Route::post('api/get/single/merchant/update', 'HomeController@current_merchant_update');
        Route::post('api/get/single/merchant/password/update','LoginController@current_merchant_password_update');
        //merchant payment
        Route::get('api/merchant/withdraw/transaction','HomeController@paymentWithDrawTransactions');
        Route::post('api/payment/withdraw/request','HomeController@paymentWithDrawRequest');

        /****** Slider Controller Start ******/
        Route::get('api/merchant/sliders', 'SliderController@index');
        Route::post('api/merchant/slider/add', 'SliderController@store');
        Route::get('api/merchant/get/edit/slider/{id}', 'SliderController@edit');
        Route::post('api/merchant/slider/update/{id}', 'SliderController@update');
        Route::get('api/merchant/active/slider/{id}', 'SliderController@active');
        Route::get('api/merchant/deActive/slider/{id}', 'SliderController@deActive');
        Route::get('api/merchant/delete/slider/{id}', 'SliderController@destroy');
        /****** Slider Controller End ******/


        /****** Merchant Contact Number Start ******/
        Route::get('api/get/merchant/contact/number', 'HomeController@getContact');
        Route::post('api/merchant/contact/number/{id}', 'HomeController@updateContact');
        /****** Merchant Contact Number End ******/
    }
    
);

