<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="base_url" content="{{ url('') }}">


    <link rel="shortcut icon" href="{{ asset('storage/' . $general_settings->icon) }}" type="image/x-icon" />
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/fontawesome.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />


    <link rel="stylesheet" href="{{ asset('frontend') }}/css/plugin/owl.carousel.min.css">

    <link rel="stylesheet" href="{{ asset('frontend/css/jquery.loadMore.css') }}">

    @include('frontend.partials.css')
    <link rel="stylesheet" type="text/css"href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">




    <?php
    $setting = DB::table('general_settings')->latest()->first();
    ?>

    <meta property="og:type" content="website" />
    <meta name="description" content="{{ $setting->meta_content }}">
    <meta property="og:url" content="{{ $setting->title }}" />
    <meta property="og:title" content="{{ $setting->meta_content }}" />
    <meta property="og:description" content="{{ $setting->meta_content }}" />
    <meta property="og:image" content="{{ asset('storage/' . $setting->logo) }}" />


    <meta property="twitter:url" content="{{ $setting->title }}" />
    <meta property="twitter:title" content="{{ $setting->meta_content }}" />
    <meta property="twitter:description" content="{{ $setting->meta_content }}" />

    <meta name="title" content="@yield('meta_title')" />
    <meta name="keywords"content="@yield('meta_key')" />
    <meta name="content" content="@yield('meta_content')">

    @if (!empty($setting->facebook_domain_verification))
        {!! $setting->facebook_domain_verification !!}
    @endif
    @if (!empty($setting->facebook_pixel))
        {!! $setting->facebook_pixel !!}
    @endif
    @stack('facebook_open_graph')

    @if (!empty($setting->google_domain_verification))
        {!! $setting->google_domain_verification !!}
    @endif
    @if (!empty($general_settings->google_analytics))
        {!! $general_settings->google_analytics !!}
    @else
        <script>
            (function(w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({
                    'gtm.start': new Date().getTime(),
                    event: 'gtm.js'
                });
                var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s),
                    dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-MPT28Cfg');
        </script>
        @endif

    <style>
       
    </style>

</head>

<body>

    @if (!empty($setting->facebook_chat_plugin))
        {!! $setting->facebook_chat_plugin !!}
    @endif



    @include('frontend.partials.header')
    <div class="content">
        @yield('content')
    </div>


    @include('frontend.partials.footer')
    <div class="fixed_footer_menu">
        <ul>
            <li>
                <a href="{{ route('root') }}" class="fixed_footer_menu_link">
                    <i class="fa-solid fa-house-chimney"></i>
                    <p>Home</p>
                </a>
            </li>
            <li>
                <a href="{{ route('wish.list') }}" class="fixed_footer_menu_link">
                    <i class="fa-regular fa-heart"></i>
                    <p>Wishlist</p>
                    <span class="fixed_footer_wishlist_count wish_list_count">0</span>
                </a>
            </li>
            <li>
                <a data-bs-toggle="offcanvas" href="#fixed_product_sticky_id" class="fixed_footer_menu_link">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <p>Cart</p>
                    <span class="fixed_footer_cart_count cart_item_total">0</span>
                </a>
            </li>
            <li>
                <a href="tel:{{ $general_settings->header_contact_number }}" class="fixed_footer_menu_link">
                    <i class="fa-solid fa-phone"></i>
                    <p>Call</p>
                </a>
            </li>
            <li>
                <a href="{{ route('login') }}" class="fixed_footer_menu_link">
                    <i class="fa-regular fa-user"></i>
                    <p>Account</p>
                </a>
            </li>
        </ul>
    </div>
    <div class="header_mobile_menu offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample">
        <div class="header_mobile_top">
            <div class="header_mobile_logo">
                <a href="{{ route('root') }}">
                    <img src="{{ asset('storage/' . $general_settings->logo) }}" alt="{{ $general_settings->title }}">
                </a>
            </div>
            <div class="header_mobile_close_icon" data-bs-dismiss="offcanvas">
                <i class="fa-solid fa-xmark"></i>
            </div>
        </div>
        <div class="header_mobile_middle">
            <div class="mobile_main_menu">
                <ul>
                    @foreach ($categories as $category)
                        <li>
                            <a href="{{ route('product.category', [$category->slug]) }}"
                                class="mobile_main_menu_link">{{ $category->name }}</a>
                            @if (count($category->subCategory) > 0)
                                <i class="fa-solid fa-angle-down"
                                    onclick="mobileSubmenu('mobile_submenu_id_'+{{ $category->id }})"></i>
                            @endif
                            <ul id="mobile_submenu_id_{{ $category->id }}"
                                class="mobile_main_submenu mobile_submenu_class">
                                @foreach ($category->subCategory as $subCategory)
                                    <li>
                                        <a href="{{ route('product.category', [$category->slug, $subCategory->slug]) }}"
                                            class="mobile_main_submenu_link">{{ $subCategory->name }}</a>
                                        @if (count($subCategory->subSubCategory) > 0)
                                            <i class="fa-solid fa-angle-down"
                                                onclick="toggleSubMenu('mobile_sub_submenu_id_'+{{ $subCategory->id }})"></i>
                                        @endif
                                        <ul id="mobile_sub_submenu_id_{{ $subCategory->id }}"
                                            class="mobile_main_sub_submenu mobile_sub_submenu_class">
                                            @foreach ($subCategory->subSubCategory as $sub_SubCategory)
                                                <li>
                                                    <a href="{{ route('product.category', [$category->slug, $subCategory->slug, $sub_SubCategory->slug]) }}"
                                                        class="mobile_main_sub_submenu_link">{{ $sub_SubCategory->name }}</a>
                                                </li>
                                            @endforeach

                                        </ul>
                                    </li>
                                @endforeach

                            </ul>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
    <a class="fixed_product_sticky" data-bs-toggle="offcanvas" href="#fixed_product_sticky_id">
        <div class="fixed_product_sticky_icon">
            <i class="fa-solid fa-cart-shopping"></i>
        </div>
        <div class="fixed_product_sticky_price">
            <p calss="subTotal">
            </p>
        </div>
        <div class="fixed_product_sticky_count">
            <p id="item_count">0 items</p>
        </div>
    </a>
    <div class="fixed_product_card_content offcanvas offcanvas-end" id="fixed_product_sticky_id">
        <div class="fixed_product_card_header">
            <div class="fixed_product_card_header_icon">
                <i class="fa-solid fa-cart-shopping"></i>
                <span class="cart_item_total">0</span>
            </div>
            <div class="fixed_product_card_header_close" data-bs-dismiss="offcanvas">
                <i class="fa-solid fa-xmark"></i>
            </div>
        </div>
        <div class="fixed_product_card_body">
            <div class="fixed_product_card_list">
                <ul>
                    <li id="miniCart">

                    </li>
                </ul>
            </div>
        </div>
        <div class="fixed_product_card_footer">
            <div class="fixed_product_card_footer_count">
                <strong>Subtotal</strong>
                <strong class="subTotal">

                </strong>
            </div>
            <div class="fixed_product_card_footer_checkout">
                <a href="{{ route('checkout.index') }}"
                    class="fixed_product_card_footer_checkout_link cart_check_out">Checkout</a>
            </div>
            <div class="fixed_product_card_footer_view_cart">
                <a href="{{ route('cart.view') }}" class="fixed_product_card_footer_view_cart_link cart_view">View
                    Cart</a>
            </div>
        </div>
        </div>
    <div class="fab-container">
        <div class="fab-options">
            <a href="https://m.me/your-messenger-username" target="_blank" class="fab-link" style="background-color: #0084FF;" title="Messenger">
                <i class="fa-brands fa-facebook-messenger"></i>
            </a>
            <a href="tel:{{ $general_settings->header_contact_number }}" class="fab-link" style="background-color: #4CAF50;" title="Call Us">
                <i class="fa-solid fa-phone"></i>
            </a>
            <a href="https://wa.me/{{ $general_settings->whatsapp_number }}" target="_blank" class="fab-link" style="background-color: #25D366;" title="WhatsApp">
                <i class="fa-brands fa-whatsapp"></i>
            </a>
            <div id="fab-close" class="fab-link" style="background-color: #F44336;" title="Close">
                <i class="fa-solid fa-xmark"></i>
            </div>
        </div>

        <div id="fab-toggle" class="fab-toggle">
            <i class="fa-solid fa-comment-dots"></i>
        </div>
    </div>


    @stack('popup')

    @include('frontend.partials.js')
    @yield('scripts')

    <script>
        function toggleSubMenu(subMenuId) {
            // console.log('toggle working');
            var subMenu = document.getElementById(subMenuId);
            if (subMenu.style.display === 'block') {
                subMenu.style.display = 'none';
            } else {
                subMenu.style.display = 'block';
            }
        };
        @if (Session::has('message'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.success("{{ session('message') }}");
        @endif

        @if (Session::has('error'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.error("{{ session('error') }}");
        @endif

        @if (Session::has('info'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.info("{{ session('info') }}");
        @endif

        @if (Session::has('warning'))
            toastr.options = {
                "closeButton": true,
                "progressBar": true
            }
            toastr.warning("{{ session('warning') }}");
        @endif
    </script>
    <script>
        //================setup ajax=======================
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        toastr.options = {
            "closeButton": true,
            "progressBar": true
        }

        //==============increment and decrement for single page start============
        var quantity = 1;
        let variant = null;
        var shipping_charge = 0;
        var sub_total = 0;
        var delivery_charge_id = 0;
        var payable_amount = 0;
        let intervalId;
        var otp_time = 0;
        var coupon = null;


        $(".product_qty").val(quantity);

        function Increment() {
            quantity++;
            $(".product_qty").val(quantity);
        }


        function decrement() {
            if (quantity > 1) {
                quantity--;
                $(".product_qty").val(quantity);
            }
        }

        //=================increment and decrement for single page start=============

        //get variant
        // function getVariant(id) {
        //     variant = id
        // }
        function getVariant(id, price, productPrice) {
            console.log('hit');
            variant = id;
            price = price ?? 0;
            productPrice = productPrice ?? 0;
            console.log('id is ' + variant);
            console.log('price is ' + price);
            console.log('product price is ' + productPrice);

            var attributPrice = "";

            attributPrice += `<span>${price} ৳</span>`;


            if (price == 0) {
                $('#variant_wise_price').empty();
                $('#variant_wise_price').append(productPrice + ' ৳');
            } else {
                $('#variant_wise_price').empty();
                $('#variant_wise_price').append(attributPrice);

            }
        }


        //======================addToWishList==========================
        function addToWishList(id, have_variant) {

            let quantity = $(".product_qty").val();
            //check have variant
            if (have_variant > 0) {
                if (variant == null) {
                    toastr.info('Please Select Variant');
                    return;
                }
            }
            var postData = {
                id,
                quantity,
                variant
            };
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                url: '/wish-list',
                type: 'POST',
                dataType: 'json',
                data: postData,
                success: function(res) {
                    if (res.status) {
                        getWishList();
                        toastr.success('Add to Wish-List Successfully');
                    }
                }
            });
        }

        //=========================get wish-list==========================
        function getWishList() {
            $.ajax({
                url: '/get/wish-list',
                type: 'GET',
                dataType: 'json',
                success: function(res) {
                    $('.wish_list_count').html(res.item_count)
                    console.log(res);
                }
            });
        }
        getWishList();

        //============================remove Wish-List==================
        function removeWishList(rowId) {
            $.ajax({
                url: '/delete/wish-list',
                type: 'POST',
                dataType: "json",
                data: {
                    rowId: rowId
                },
                success: function(res) {
                    if (res.status == true) {
                        toastr.success(res.message);
                        location.href = "/wish-list";
                    }
                    console.log(res);
                }
            });
        }


        //=========================add to cart=========================
        function addToCard(id, have_variant) {
            let quantity = $(".product_qty").val();
            //check have variant
            if (have_variant > 0) {
                if (variant == null) {
                    toastr.info('Please Select Variant');
                    return;
                }
            }

            var postData = {
                id,
                quantity,
                variant
            };

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                type: "POST",
                dataType: 'json',
                data: postData,
                url: "/add/cart",
                success: function(res) {
                    miniCart();
                    gtmEvent(id, 'add_to_cart', quantity);
                    toastr.success('Add To Cart Successfully');
                    $('#fixed_product_sticky_id').offcanvas(
                        'show');
                }
            });
        }

        //==========================show cart item========================
        function miniCart() {
            $.ajax({
                type: 'GET',
                url: '/cart/index',
                dataType: 'json',
                success: function(response) {
                    // couponCalculation();
                    sub_total = parseInt(response.cart_sub_total);
                    var total = parseInt(sub_total + shipping_charge);
                    $('.subTotal').html(sub_total + ' ৳');
                    $('.cart_item_total').html(response.cart_item_total);
                    $('#item_count').html(response.cart_item_total + ' items');
                    $('.total_amount').html(response.cart_total + ' ৳');

                    var miniCart = ""
                    $.each(response.carts, function(key, value) {

                        miniCart += `
                                <div class="fixed_product_card_list_table_cell">
                                <div class="fixed_product_card_image">
                                    <img src="{{ asset('storage/') }}/${value.options.image}" alt="${value.name}">
                                </div>
                                <div class="fixed_product_card_details">
                                    <div class="fixed_product_card_name_size_delete">
                                        <div class="fixed_product_card_name_size">
                                            <div class="fixed_product_card_name">
                                                <p>${value.name}</p>
                                            </div>
                                            <div class="fixed_product_card_size">
                                                <strong>Variant:</strong>
                                                <span>${value.options.variant_name}</span>
                                            </div>
                                            </div>
                                
                                        <div class="fixed_product_card_delete_icon">
                                            <a class="card_remove" id="${value.rowId}" onclick="miniCartRemove(this.id)" >
                                                <i style="color:red;" class="fa-solid fa-trash"></i>
                                            </a>
                                        </div>
                                        </div>
                                    <div class="fixed_product_card_qty_price">
                                        <div class="fixed_product_card_qty">
                                            <div class="fixed_product_card_qty_minus" id="${value.rowId}" onclick="cartDecrement(this.id)">
                                                
                                                <i class="fa-solid fa-minus"></i>
                                            </div>
                                            <input class="product_qty" type="text" value="${value.qty}">
                                            <div class="fixed_product_card_qty_plus" id="${value.rowId}" onclick="cartIncrement(this.id)">
                                                <i class="fa-solid fa-plus"></i>
                                            </div>
                                        </div>
                                        <div class="fixed_product_card_close_price">
                                            <p>${(value.qty * value.price)} ৳</p>
                                        </div>
                                        </div>
                                </div>
                            </div>
                        
                        `

                    });

                    $('#miniCart').html(miniCart);

                }
            });
        }
        miniCart();

        //======================miniCartRemove ===========================
        function miniCartRemove(rowId) {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: 'POST',
                url: '/cart/remove',
                dataType: 'json',
                data: {
                    rowId: rowId
                },
                success: function(data) {
                    checkOutCarts();
                    miniCart();
                    toastr.success('Delete Successfully');
                    location.href = '/checkout';
                }
            });
        }

        // ============ cart increment==============
        function cartIncrement(rowId) {
            var qty = $(".product_qty").val();
            var increment_value = parseInt(qty) + 1;
            $.ajax({
                type: 'POST',
                url: "/cart/update",
                dataType: 'json',
                data: {
                    rowId: rowId,
                    qty: increment_value,
                },
                success: function(data) {
                    miniCart();
                    checkOutCarts();
                    cartViewCarts();
                    couponCalculation();
                }
            });
        }

        // ============ cart deccrement==============
        function cartDecrement(rowId) {
            var qty = $(".product_qty").val();
            var decrement_value = parseInt(qty) == 1 ? parseInt(qty) : parseInt(qty) - 1;
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: 'POST',
                url: "/cart/update",
                dataType: 'json',
                data: {
                    rowId: rowId,
                    qty: decrement_value,
                },
                success: function(data) {
                    checkOutCarts();
                    cartViewCarts();
                    couponCalculation();
                    miniCart();
                }
            });
        }

        //=========show card items==============
        $('.fixed_product_sticky').click(function() {
            miniCart();
        });

        //==============check-out cart==========
        function checkOutCarts() {
            $.ajax({
                type: 'GET',
                url: '/cart/index',
                dataType: 'json',
                success: function(response) {
                    // couponCalculation();
                    //-----------set variables-----------
                    sub_total = parseInt(response.cart_sub_total);
                    payable_amount = parseInt(sub_total + shipping_charge);
                    var total = parseInt(sub_total + shipping_charge);
                    $('.subTotal').text(sub_total + ' ৳');
                    $('.total_amount').text(total + ' ৳');
                    $('.shipping_charge').text(shipping_charge + ' ৳');
                    $('.payable_amount').text(payable_amount + ' ৳' + "this");
                    // console.log(shipping_charge + "this");

                    var rows = ""
                    $.each(response.carts, function(key, value) {
                        let variant = '';
                        if ( value.options.variant_name) {
                            variant = `<p>${value.options.variant_name}</p>`;
                        }
                        rows += `
                                    <tr>
                                        <td class="checkout_product_td_left">
                                            <div class="checkout_product_name_image">
                                                <img src="{{ asset('storage/' . '${value . options . image}') }}" alt="${value.options.image}">
                                                <p>${value.name}</p>
                                                ${variant}
                                            </div>
                                        </td>
                                        <td>
                                            <div class="checkout_product_qty">
                                                <button id="${value.rowId}" onclick="cartDecrement(this.id)" class="checkout_product_qty_minus">
                                                    <i class="fa-solid fa-minus"></i>
                                                </button>
                                                <input type="text" class="product_qty" value="${value.qty}">
                                                <button id="${value.rowId}" onclick="cartIncrement(this.id)" class="checkout_product_qty_plus">
                                                    <i class="fa-solid fa-plus"></i>
                                                </button>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="checkout_product_price">
                                                <p>${value.price} ৳</p>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="checkout_product_total_price">
                                                <p>${(value.qty * value.price)} ৳</p>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="checkout_product_delete_icon">
                                                <button id="${value.rowId}" onclick="miniCartRemove(this.id)" class="checkout_product_delete_icon_link">
                                                    <i class="fa-solid fa-trash"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                `
                    });

                    $('#check_out_carts').html(rows);

                }
            });
        }
        checkOutCarts();

        //==============check-out cart============
        function cartViewCarts() {
            $.ajax({
                type: 'GET',
                url: '/cart/index',
                dataType: 'json',
                success: function(response) {
                    sub_total = parseInt(response.cart_sub_total);
                    var total = parseInt(sub_total + shipping_charge);
                    //--------set variable---------------
                    $('.subTotal').html(sub_total + ' ৳');
                    $('.total_amount').html(total + ' ৳');
                    // $('.shipping_charge').text('৳ ' + shipping_charge);
                    var rows = ""
                    $.each(response.carts, function(key, value) {

                        rows += `
                                <tr>
                                    <td class="padding_left_zero">
                                        <div class="view_cart_image">
                                            <a href="single_product.html">
                                                <img src="{{ asset('storage/' . '${value . options . image}') }}" alt="${value.name}">
                                            </a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="view_cart_name">
                                            <a href="#" class="view_cart_name_link">${value.name}</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="view_cart_price">
                                            <span>${(value.qty * value.price)} ৳</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="view_cart_qty">
                                            <button id="${value.rowId}" onclick="cartDecrement(this.id)" class="view_cart_qty_minus">
                                                <i class="fa-solid fa-minus"></i>
                                            </button>
                                            <input class="product_qty" type="text" value="${value.qty}">
                                            <button id="${value.rowId}" onclick="cartIncrement(this.id)" class="view_cart_qty_plus">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                        </div>
                                    </td>
                                    <td class="padding_right_zero" style="text-align: right;">
                                        <div class="view_cart_delete">
                                            <button id="${value.rowId}" onclick="miniCartRemove(this.id)" class="view_cart_delete_link">
                                                <i class="fa-solid fa-trash">
                                                </i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                `
                    });

                    $('#cart_view_carts').html(rows);

                }
            });
        }
        cartViewCarts();

        //==================shippingCharge==============
        function shippingCharge(id, ship_Charge) {
                $('#set_city_id').val(id);
            if(ship_Charge > 0){
                this.shipping_charge = ship_Charge;
            }else{
                shipping_charge = 0;
            }
            orderSummaryCalculation();

            $.ajax({
                type: 'GET',
                dataType: 'json',
                data: {city_id: id},
                url: 'get/subcity',
                success: function(res) {
                    console.log(res.subcitys);
                    if (res.status) {
                        if (res.subcitys == "") {
                                $('select[name="subcity_id"]').empty();
                                $('select[name="subcity_id"]').append(
                                    '<option value="">Sub City Not Found!</option>');
                            } else {
                                $('select[name="subcity_id"]').empty();
                                $('select[name="subcity_id"]').append(
                                    '<option value="">Select Upozila</option>');
                                // data load
                                $.each(res.subcitys, function(key, value) {
                                    $('select[name="subcity_id"]').append(
                                        '<option value="' + value.id + '">' + value
                                        .name + '</option>');
                                });
                                // data load
                            }
                    }
                }
            });

        }

        //===================== order calculation =======================
        function orderSummaryCalculation() {
            var cart_subtotal =  $('#cart_sub_total').val();
            var delivery_charge = this.shipping_charge;
            var total_amount = (parseFloat(cart_subtotal) + parseFloat(delivery_charge));
            var discount_amount = 0;
            var payable_amount = total_amount;

            if(this.coupon != null){
                if(this.coupon.discount_type == 'percentage'){
                var  calculate_amount = parseInt(cart_subtotal) * parseInt(this.coupon.discount_amount) / 100;
                    discount_amount = this.coupon.discount_amount + " %";
                    payable_amount = total_amount - calculate_amount;
                }else{
                    discount_amount = this.coupon.discount_amount;
                    payable_amount = total_amount - this.coupon.discount_amount;
                }
            }

            $('#setInputShippingCharge').val(delivery_charge);
            $('#show_shipping_charge').text(delivery_charge + ' ' + "৳");
            $('#show_discount').text(discount_amount + ' ' + '৳' );
            $('#show_payable').text(payable_amount + ' ' + "৳");
        }
        orderSummaryCalculation();
        //===================== applyCoupon =======================
        function applyCoupon() {
            var coupon_name = $('#coupon_name').val();
            $.ajax({
                type: 'POST',
                dataType: 'json',
                data: {
                    name: coupon_name
                },
                url: '/coupon-apply',
                success: function(res) {
                    if (res.status == true) {
                        // couponCalculation();
                        coupon = res.coupon;
                        orderSummaryCalculation();
                        var styleObject = $('#coupon_valid').prop('style');
                        styleObject.removeProperty('display');
                        $('#coupon_invalid').css('display', 'none');
                        toastr.success(res.message);
                    } else {
                        coupon = null;
                        orderSummaryCalculation();
                        var styleObject = $('#coupon_invalid').prop('style');
                        styleObject.removeProperty('display');
                        $('#coupon_valid').css('display', 'none');
                        toastr.error(res.message);
                    }
                }
            });
        }

        //==================couponCalculation=======================
        function couponCalculation() {
            $.ajax({
                url: '/coupon/calculation',
                type: 'GET',
                dataType: 'json',
                success: function(res) {
                    $order_summary = "";
                    if (res.success) {
                        $order_summary +=
                            `
                            <div class="price_summary_table_cell">
                                <strong>Sub Total :</strong>
                                <strong >${res.sub_total} ৳</strong>
                            </div>
                            <div class="price_summary_table_cell">
                                <strong>Shipping Charge :</strong>
                                <strong >${res.sipping_charge} ৳</strong>
                            </div>
                            <div class="price_summary_table_cell">
                                <strong>Discount Amount :</strong>
                                <strong >${-res.discount_amount} ৳</strong>
                            </div>
                            <div class="price_summary_table_cell">
                                <strong >Payable Amount :</strong>
                                <strong >${res.payable_amount} ৳</strong>
                            </div>
                            `
                    } else {
                        $order_summary +=
                            `
                            <div class="price_summary_table_cell">
                                <strong>Sub Total :</strong>
                                <strong > 0.0 ৳</strong>
                            </div>
                            <div class="price_summary_table_cell">
                                <strong>Shipping Charge :</strong>
                                <strong > 0.0 ৳</strong>
                            </div>
                            <div class="price_summary_table_cell">
                                <strong>Discount Amount :</strong>
                                <strong > 0.0 ৳</strong>
                            </div>
                            <div class="price_summary_table_cell">
                                <strong >Payable Amount :</strong>
                                <strong > 0.0 ৳</strong>
                            </div>
                            `
                    }
                    // $('#order_summary').html($order_summary);
                }
            });
        }
        couponCalculation();


        window.addEventListener('beforeunload', function(e) {
            // Make AJAX call to remove coupon session
            $.ajax({
                type: 'POST',
                dataType: 'json',
                url: '/forget-coupon',
                success: function(response) {
                    // Session forgotten successfully
                },
                error: function(xhr, status, error) {
                    console.error('Error forgetting coupon session:', error);
                }
            });
        });



        //=============================buy Now=========================
        function buyNow(id, have_variant) {
                let quantity = $(".product_qty").val();
                //check have variant
                if (have_variant > 0) {
                    if (variant == null) {
                        toastr.info('Please Select Variant');
                        return;
                    }
                }
                // send ajax
                var postData = {
                    id,
                    quantity,
                    variant
                };

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                if (quantity > 0) {
                    $.ajax({
                        type: "POST",
                        dataType: 'json',
                        data: postData,
                        url: "/add/cart",
                        success: function(res) {
                            if (res.status) {
                                miniCart();
                                checkOutCarts();
                                gtmEvent(id, 'add_to_cart', quantity);
                                toastr.success('Product added To Cart successfully');
                                setTimeout(function() {
                                    location.href = '/checkout';
                                }, 1500);
                            }
                        }
                    });
                } else {
                    toastr.info('Please Select a valid quantity');
                    return;
                }

        }

        //====================product-search===============================
        function searchProduct(value) {
            if (value.length > 3) {
                $.ajax({
                    url: '/product-search',
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        key: value
                    },
                    success: function(res) {
                        console.log(res);
                        if (res.status == true) {
                            $('#search_product_show').html(res.data);
                            $('#product_search').css({
                                'display': 'block'
                            });
                        } else {
                            $('#product_search').css({
                                'display': 'none'
                            });
                        }
                    }
                });
            }
        }

        //===========================event call=======================
        //--------------this event for single item--------------------
        function gtmEvent(id, event, qty) {
            $.ajax({
                url: '/get/product/content',
                type: 'POST',
                dataType: 'json',
                data: {
                    product_id: id,
                    quantity: qty
                },
                success: function(res) {
                    if (res.status) {
                        //------set variable------------
                        const eventData = {
                            currency: "BDT",
                            value: res.cart_total,
                            items: res.items,
                        };
                        dataLayer.push({
                            ecommerce: null
                        });
                        //----------------call event--------
                        if (event == 'add_to_cart') {
                            dataLayer.push({
                                event: "add_to_cart",
                                ecommerce: eventData
                            });
                            console.log('call add_to_cart');
                        } else if (event == 'view_item') {
                            dataLayer.push({
                                event: "view_item",
                                ecommerce: eventData
                            });
                            console.log('call view_item');
                        } else if (event == 'no') {
                            console.log('call no');
                        }

                    } else {
                        console.log(res.message);
                    }
                }
            });
        }

        //----------------this event for multi items--------------
        function gtmCartItemsEvent(event, invoice_id = null) {
            $.ajax({
                url: '/get/cart-items',
                type: "GET",
                dataType: 'json',
                success: function(res) {
                    const viewCartEventData = {
                        currency: "BDT",
                        value: res.cart_total,
                        items: res.items,
                    };
                    const checkOutEventData = {
                        currency: "BDT",
                        value: res.cart_total,
                        coupon: res.coupon,
                        items: res.items,
                    };
                    const purchaseEventData = {
                        currency: "BDT",
                        value: res.cart_total,
                        coupon: res.coupon,
                        transaction_id: invoice_id,
                        items: res.items,
                    };
                    if (event == 'view_cart') {
                        dataLayer.push({
                            event: "view_cart",
                            ecommerce: viewCartEventData
                        });
                        console.log('call view_cart');
                        return;
                    } else if (event == 'begin_checkout') {
                        dataLayer.push({
                            event: "begin_checkout",
                            ecommerce: checkOutEventData
                        });
                        console.log('call begin_checkout');
                        return;
                    } else if (event == 'purchase') {
                        dataLayer.push({
                            event: "purchase",
                            ecommerce: purchaseEventData
                        });
                        deleteCart();
                        console.log('calling data layer purchase');
                        return;
                    }
                }
            });
        }

        //==================clear Cart items=====================
        function deleteCart() {
            $.ajax({
                type: 'GET',
                url: '/clear/all-cart',
                dataType: 'json',
                success: function(res) {
                    console.log(res);
                }
            });
        }

        //------------order form submit------------
        function orderForm() {
            $('#order_form').submit(function(event) {
                event.preventDefault();

                var formData = new FormData(this);
                name = formData.get('name');
                mobile_no = formData.get('mobile_no');
                shipping_charge = formData.get('shipping_charge');
                address = formData.get('address');

                //-----validation start----------------
                if (!name) {
                    toastr.info('Name is required');
                    return;
                }

                if (!mobile_no) {
                    toastr.info('Mobile is required');
                    return;
                }

                if (!$.isNumeric(mobile_no)) {
                    toastr.info('Please Type Number');
                    return;
                }

                if (mobile_no.length != 11) {
                    toastr.info('Your Mobile Number Must-be 11 Digit');
                    return;
                }

                if (!shipping_charge) {
                    toastr.info('Please Select Area');
                    return;
                }
                

                if (!address) {
                    toastr.info('Address is required');
                    return;
                }
                //setup ajax
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });


                // call ajax
                $.ajax({
                    url: '/checkout/order',
                    type: 'POST',
                    dataType: 'json',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(res) {
                        
                        if (res.status) {
                            $('.order_form').trigger("reset");
                            toastr.success('Order Successfull Add');
                            console.log('call purchase event');
                            location.href = "/order-success/" + res.invoice_no;

                        }
                    },
                    error: function(xhr, status, error) {
                        // Handle error
                        console.error(xhr.responseText);
                    }
                });
            });
        }


        //-------------------order Tracking---------------------
        function OrderTracking() {
            $('#order_tracking_form').submit(function(event) {
                event.preventDefault();
                var formData = $(this).serialize();

                //setup ajax
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                //call ajax
                $.ajax({
                    url: "{{ route('order.tracking') }}",
                    type: 'POST',
                    dataType: 'json',
                    data: formData,
                    success: function(res) {
                        if (res.status == true) {
                            $('#order_tracking_content').html(res.data);
                            $('#courier_name').html(res.courier_name);
                        } else {
                            data = `<div style="text-align: center;">
                                        <span>No Invoice</span>
                                    </div>`;
                            $('#order_tracking_content').html(data);
                        }
                    },
                    error: function(xhr, status, error) {
                        // Handle error
                        console.error(xhr.responseText);
                    }
                });
                console.log(formData);
            });
        }

        //-------------------Custom Product Review---------------
        function ReviewForm() {
            $('#review_form').submit(function(event) {
                event.preventDefault();
                var formData = new FormData(this);
                var button = document.querySelector('.customer_comment_btn_link');
                var productSlug = button.dataset.product_slug;
                formData.append('product_slug', productSlug);
                rating = formData.get('rating_stars');
                name = formData.get('user_name');
                review = formData.get('review');
                if (rating == null) {
                    toastr.error('Please Select Rating');
                    return;
                }
                if (name == '') {
                    toastr.error('Please write Your Name');
                    return;
                }
                if (review == '') {
                    toastr.error('Please write Review');
                    return;
                }
                //setup ajax
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $.ajax({
                    url: "{{ route('product.review') }}",
                    type: "POST",
                    dataType: 'json',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(res) {
                        if (res.status == true) {
                            $('#review_form').trigger("reset");
                            toastr.success(res.message);
                            setTimeout(function() {
                                location.href = "/product/" + productSlug;
                            }, 1000);
                            //success messase
                        }
                        console.log(res);
                    }
                });
            });
        }

        //--------------------Send OTP ------------------
        function SendOTP() {
            $('#send_otp_form').submit(function(event) {
                event.preventDefault();
                var formData = $(this).serialize();

                console.log('befor ajax call');
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    url: "{{ route('send.otp') }}",
                    type: 'POST',
                    dataType: "json",
                    data: formData,
                    success: function(res) {
                        if (res.status == true) {
                            // intervalId = setInterval(DecrementCounter, 1000);
                            toastr.success('Successfully OTP Send');
                            location.href = '/receive/otp';
                        }
                        console.log(res);
                    }
                });
            });
        }



        function OTPVarify() {
            let otp_mobile_no = $('#otp_mobile_no').val();
            $('#otp_varify_form').submit(function(e) {
                e.preventDefault();
                var formData = new FormData(this);
                formData.append('mobile_no', otp_mobile_no);
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    url: "{{ route('verify.otp') }}",
                    type: 'POST',
                    dataType: 'json',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(res) {
                        console.log(res);
                    }
                });
            });
        }



        $('#send_otp_form_submit').one('click', function() {
            SendOTP();
        });

        $('#otp_varify_form_submit').one('click', function() {
            OTPVarify();
        });

        $('#order_form_submit').one('click', function() {
            orderForm();
        });

        //======================different event call=====================
        $('#coupon_apply').on('click', function() {
            // couponCalculation();
            applyCoupon();
        });

        $('#review_submit').one('click', function() {
            ReviewForm();
        });

        $('.cart_check_out').one('click', function() {
            couponCalculation();
            cartViewCarts();
        });

        //------cart view event---------
        $('.cart_view').one('click', function() {
            cartViewCarts();
        });


        // =================================================================
        // ====== 4. NEW JAVASCRIPT FOR THE FLOATING ACTION BUTTON (Old `whatsapp()` function is gone) ======
        // =================================================================
        const fabContainer = document.querySelector('.fab-container');
        const fabToggle = document.getElementById('fab-toggle');
        const fabClose = document.getElementById('fab-close');

        // Add a click event to the main button to open the menu
        fabToggle.addEventListener('click', () => {
            fabContainer.classList.add('active');
        });

        // Add a click event to the close button to hide the menu
        fabClose.addEventListener('click', () => {
            fabContainer.classList.remove('active');
        });

    </script>


</body>

</html>