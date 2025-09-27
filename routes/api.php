<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/



Route::group(['middleware' => 'authApi','prefix' => '_data','namespace' => 'Frontend\API'],function(){

        //categories
        Route::get('categories', 'HomeController@categories');
        Route::get('category/{slug}', 'HomeController@category');
        Route::get('sub/category/{slug}', 'HomeController@subCategory');
        Route::get('sub/sub/category/{slug}', 'HomeController@subSubCategory');
        //commons
        Route::get('sliders', 'HomeController@slider');
        Route::get('landing/category/wise/products', 'HomeController@landingCategoryWiseProducts');
        Route::get('search/product/{search}', 'HomeController@searchProduct');
        Route::get('product/{slug}', 'HomeController@product');
        Route::get('product/images/{slug}', 'HomeController@productImage');
        Route::get('related/products/{slug}', 'HomeController@relatedProducts');
        Route::get('category/wise/product/{slug}', 'HomeController@categoryWiseProduct');
        Route::get('sub/category/wise/product/{slug}','HomeController@subCategoryWiseProduct');
        Route::get('sub/sub/category/wise/product/{slug}','HomeController@subSubCategoryWiseProduct');
        Route::get('all/products', 'HomeController@allProducts');
        //cart routes
        Route::post('add/to/cart', 'CartController@add');
        Route::get('get/cart/content', 'CartController@index');
        Route::post('cart/item/remove', 'CartController@removeItem');
        Route::post('cart/item/update', 'CartController@update');
        Route::post('cart/destroy', 'CartController@destroy');
        //city
        Route::get('get/cities', 'HomeController@cityList');
        Route::get('get/city-wise/sub-cities/{id}', 'HomeController@subCities');
        //checkout
        Route::post('checkout/order', 'OrderController@checkout');
        Route::post('apply/coupon/code', 'HomeController@applyCoupon');


});
