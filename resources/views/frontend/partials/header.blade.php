<header class="header_area">

    <div class="header_top">
        <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="header_top_site_title">
                        <p>{{$general_settings->promo_title}}</p>
                    </div>
        </div>
            
                {{--
                <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-12">
                    <div class="header_top_list">
                        <ul>
                            <li>
                                <a href="{{route('order.tracking')}}" class="header_top_list_link">
                                    <i class="fa-solid fa-location-dot"></i>
                                    Order Tracking
                                </a>
                            </li>
                        {{--    
                            <li>
                                <a href="{{route('about')}}" class="header_top_list_link">
                                    <i class="fa-solid fa-info"></i>
                                    About
                                </a>
                            </li>
                            <li>
                                <a href="{{route('contact-us')}}" class="header_top_list_link">
                                    <i class="fa-solid fa-headset"></i>
                                    Contact
                                </a>
                            </li>
                            <li>
                                @if (auth()->guard('customer')->check())
                                    <a href="{{route('user.dashboard')}}" class="header_top_list_link header_top_list_auth">{{Auth::guard('customer')->user()->name}}</a>
                                @else
                                    <a href="{{route('login')}}" class="header_top_list_link header_top_list_auth">LogIn</a>
                                @endif
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            --}}
        </div>
    </div>
    <div class="sticky-header" id="myHeader">

        <div class="header_middle">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-3 col-xl-3 col-lg-2 d-none d-lg-block">
                        <div class="header_middle_logo">
                            <a href="{{route('root')}}">
                                <img src="{{ asset('storage/' . $general_settings->logo) }}" alt="{{$general_settings->title}}">
                            </a>
                        </div>
                    </div>
                    <div class="col-xxl-5 col-xl-5 col-lg-5 col-md-12 col-sm-12 col-12">

                        <div class="header_mobile_device d-lg-none d-md-block">
                            <div class="header_mobile_table_cell">
                                <a class="header_mobile_toggle" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
                                    <i class="fa-solid fa-bars"></i>
                                </a> <div class="header_mobile_logo">
                                    <a href="{{route('root')}}">
                                        <img src="{{ asset('storage/' . $general_settings->logo) }}" alt="logo">
                                    </a>
                                </div> <div class="header_mobile_search" onclick="search()">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </div> </div>
                        </div>
                        <div id="search_id" class="header_middle_search_content search_class">
                            <div class="header_middle_search">
                                <input type="text" onkeyup="searchProduct(this.value)" value="" placeholder="Search Your Products....">
                                <button type="submit" class="header_middle_search_link">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                        </div>

                        <div class="header_search_item_content" id="product_search" style="display: none;">
                            <div id="search_product_show" class="header_search_item">

                            </div>
                        </div>
                        </div>
                    <div class="col-xxl-4 col-xl-4 col-lg-5 d-none d-lg-block">
                        <div class="header_middle_table_cell">
                            <div class="header_middle_call">
                                <a href="tel:{{$general_settings->header_contact_number}}" class="header_middle_call_link">
                                    <div class="header_middle_call_icon">
                                        <i class="fa-solid fa-phone"></i>
                                    </div>
                                    <div class="header_middle_call_text">
                                        <p>Call Us Now:</p>
                                        <span>{{$general_settings->header_contact_number}}</span>
                                    </div>
                                </a>
                            </div>
                            <div class="header_middle_wishlist">
                                <a href="{{route('wish.list')}}" class="header_middle_wishlist_link">
                                    <div class="header_middle_wishlist_icon">
                                        <i class="fa-regular fa-heart"></i>
                                        <span class="wish_list_count">0</span>
                                    </div>
                                </a>
                            </div>
                            <div class="header_middle_cart">
                                <p>Cart amount</p>
                                <span class="total_amount">0 TK</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header_bottom d-none d-lg-block">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="main_menu">
                            <ul>
                                @foreach ($categories as $category)
                                    <li>
                                        <a href="{{route('product.category',[$category->slug])}}" class="main_menu_link">
                                            {{$category->name}}
                                            @if (count($category->subCategory) > 0)
                                                <i class="fa-solid fa-angle-down"></i>
                                            @endif
                                        </a>
                                        <ul class="submenu">
                                            @foreach ($category->subCategory as $subCategory)
                                                <li>
                                                    <a href="{{route('product.category',[$category->slug, $subCategory->slug])}}" class="submenu_link">
                                                        {{$subCategory->name}}
                                                        @if (count($subCategory->subSubCategory) > 0)
                                                            <i class="fa-solid fa-angle-right"></i>
                                                        @endif
                                                    </a>
                                                    <ul class="submenu">
                                                        @foreach ($subCategory->subSubCategory as $sub_SubCategory)
                                                            <li>
                                                                <a href="{{route('product.category',[$category->slug, $subCategory->slug, $sub_SubCategory->slug])}}" class="submenu_link">
                                                                    {{$sub_SubCategory->name}}
                                                                </a>
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
            </div>
        </div>
        </div>
    </header>