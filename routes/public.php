<?php

use App\Http\Controllers\Frontend\auth\LogInController;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return "ok";
});

/* ====================== Guest Router ====================== */

Route::namespace('Frontend\Auth')->group(function () {
    /* ==================== Login Controller ==================== */
    Route::get('/login', 'LogInController@index')->name('login');
    Route::post('/login', 'LogInController@store')->name('login');

    Route::get('/login-otp', 'OtpController@otpIndex')->name('login.otp');
    Route::post('/send-otp', 'OtpController@SendOtp')->name('send.otp');
    Route::get('/get/session-otp', 'OtpController@getSessionOtp')->name('get.session.otp');
    Route::get('/clear/session-otp/{mobile_no}', 'OtpController@clearSessionOtp')->name('clear.session.otp');
    Route::get('/receive/otp', 'OtpController@receiveOtp')->name('receive.otp');
    Route::post('/otp-verify', 'OtpController@verifyCodeOtp')->name('verify.otp');

    /* ==================== Register Controller ==================== */
    Route::get('/register', 'RegisterController@index')->name('register');
    Route::post('/register', 'RegisterController@store');

    /* ==================== ResetPassword Controller ==================== */
    // Route::get('/reset-password','ResetPasswordController@index')->name('reset.password');
    // Route::post('/reset-password','ResetPasswordController@resetPassword');
});


/* ======================== Authenticate router ======================== */
Route::namespace('Frontend\User')->prefix('user')->middleware('customer')->name('user.')->group(function () {
    Route::get('/dashboard', 'HomeController@index')->name('dashboard');
    Route::get('/profile', 'ProfileController@profile')->name('profile');
    Route::get('/profile/edit', 'ProfileController@profileEdit')->name('profile.edit');
    Route::post('/profile-update/{id}', 'ProfileController@profileUpdate')->name('profile.update');
    Route::get('/change-password', 'ChangePasswordController@changePassword')->name('change.password');
    Route::post('/update-password/{id}', 'ChangePasswordController@updatePassword')->name('update.password');
    Route::get('/logout', 'HomeController@logout')->name('logout');

    Route::get('/delete-details/{id}', 'OrderController@orderDetails')->name('order.details');
    Route::get('/order-update/{id}', 'OrderController@orderUpdate')->name('order.Update');
    // Route::get('address', 'AccountController@address')->name('address');

});

Route::group(
    [
        'namespace' => 'Frontend',
    ],
    function () {
        Route::get('/', 'HomeController@index')->name('root');
        Route::get('/landing-page', 'HomeController@landingPage')->name('landing.page');
        Route::get('/products', 'ProductController@index')->name('products');
        Route::post('/add/cart', 'CartController@addToCart')->name('card.add');
        Route::get('/cart/index', 'CartController@index')->name('cart.index');
        Route::post('/cart/remove', 'CartController@cartRemoveItem')->name('cart.remove');
        Route::post('/cart/update', 'CartController@cartUpdate')->name('cart.update');
        Route::get('/cart/view', 'CartController@cartView')->name('cart.view');
        Route::get('/cart/ecp', 'CartController@cartECP');
        Route::post('/buy-now', 'CartController@buyNow')->name('buy.now');

        //wish list
        Route::get('/wish-list', 'WishListController@index')->name('wish.list');
        Route::get('/get/wish-list', 'WishListController@getWishList')->name('wish.list.get');
        Route::post('/delete/wish-list', 'WishListController@deleteWishList')->name('wish.list.delete');
        Route::post('/wish-list', 'WishListController@addToWishlist')->name('wish.list');

        //----------------get data product view event-------------------
        Route::Post('/get/product/content', 'ProductController@getProductContent');
        Route::get('/get/cart-items', 'ProductController@getCartItems');

        //coupon apply
        Route::post('/coupon-apply', 'CouponController@applyCoupon')->name('coupon.apply');
        Route::get('/coupon/calculation', 'CouponController@calculationCoupon')->name(('coupon.calculation'));
        Route::post('/forget-coupon', 'CouponController@forgetCouponSession')->name('forget_coupon');
        //---about--------
        Route::get('/about', 'AboutController@index')->name('about');
        Route::get('/custom/page/{slug}', 'CustomPageController@index')->name('custom.page');

        //----------------contact-us-------------------
        Route::get('/contact-us', 'ContactUsController@index')->name('contact-us');
        Route::post('/contact-us', 'ContactUsController@store')->name('contact-us');

        //----------------Product review-------------------
        Route::post('/re-view', 'ReviewController@store')->name('product.review');

        //------checkout-----------
        Route::get('/checkout', 'CheckOutController@index')->name('checkout.index');
        Route::post('/checkout/order', 'OrderController@order')->name('checkout.order');
        Route::get('/order/tracking', 'OrderController@index')->name('order.tracking');
        Route::post('/order/tracking', 'OrderController@orderTrack')->name('order.tracking');
        Route::get('/clear/all-cart', 'CartController@clearCart');
        Route::get('/order-success/{invoice_no}', 'OrderController@showOrderSuccess');
        Route::get('/check/ecp', 'CheckecpController@checkECP');
        Route::get('get/subcity','CheckOutController@getSubCity');


        // Route::get('dashboard/welcome', 'DashboardController@dashboard');
        Route::post('/product-search', 'ProductController@searchProduct')->name('product.search');
        Route::post('/load-more/category-product', 'HomeController@loadMoreCategoryProduct')->name('load.more.category.product');
        Route::post('/load-more-data', 'ProductController@loadMoreData')->name('load.more');
        Route::get('/product/{slug}', 'ProductController@singleProduct')->name('single.product');
        Route::get('/{slug}/{subCategory?}/{subSubCategory?}', 'ProductController@getCategoryProduct')->name('product.category');   
    }
);
