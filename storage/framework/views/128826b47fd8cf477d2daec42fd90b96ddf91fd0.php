<!--============ Header Area Start ============-->
<header class="header_area">

    <!-- header top start -->
    <div class="header_top">
        <div class="container">
            <div class="row">
                <div class="col-xxl-6 col-xl-6 col-lg-6 d-none d-lg-block">
                    <div class="header_top_site_title">
                        <p><?php echo e($general_settings->title); ?></p>
                    </div>
                </div>
                <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-12">
                    <div class="header_top_list">
                        <ul>
                            <li>
                                <a href="<?php echo e(route('order.tracking')); ?>" class="header_top_list_link">
                                    <i class="fa-solid fa-location-dot"></i>
                                    Order Tracking
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo e(route('about')); ?>" class="header_top_list_link">
                                    <i class="fa-solid fa-info"></i>
                                    About
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo e(route('contact-us')); ?>" class="header_top_list_link">
                                    <i class="fa-solid fa-headset"></i>
                                    Contact
                                </a>
                            </li>
                            <li>
                                <?php if(auth()->guard('customer')->check()): ?>
                                    <a href="<?php echo e(route('user.dashboard')); ?>" class="header_top_list_link header_top_list_auth"><?php echo e(Auth::guard('customer')->user()->name); ?></a>  
                                <?php else: ?>
                                    <a href="<?php echo e(route('login')); ?>" class="header_top_list_link header_top_list_auth">LogIn</a>
                                <?php endif; ?>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header top end -->

    <!-- header middle start -->
    <div class="header_middle" id="myHeader">
        <div class="container">
            <div class="row">
                <div class="col-xxl-3 col-xl-3 col-lg-2 d-none d-lg-block">
                    <div class="header_middle_logo">
                        <a href="<?php echo e(route('root')); ?>">
                            <img src="<?php echo e(asset('storage/' . $general_settings->logo)); ?>" alt="<?php echo e($general_settings->title); ?>">
                        </a>
                    </div>
                </div>
                <div class="col-xxl-5 col-xl-5 col-lg-5 col-md-12 col-sm-12 col-12">
                    
                    <!-- header mobile device start -->
                    <div class="header_mobile_device d-lg-none d-md-block">
                        <div class="header_mobile_table_cell">
                            <a class="header_mobile_toggle" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
                                <i class="fa-solid fa-bars"></i>
                            </a> <!-- header mobile device toggle end -->
                            <div class="header_mobile_logo">
                                <a href="<?php echo e(route('root')); ?>">
                                    <img src="<?php echo e(asset('storage/' . $general_settings->logo)); ?>" alt="logo">
                                </a>
                            </div> <!-- header mobile device logo end -->
                            
                            <div class="header_mobile_search" onclick="search()">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </div> <!-- header mobile device search end -->
                        </div>
                    </div>
                    <!-- header mobile device end -->

                    <div id="search_id" class="header_middle_search_content search_class">
                        <div class="header_middle_search">
                            <input type="text" onkeyup="searchProduct(this.value)" value="" placeholder="Search Your Products....">
                            <button type="submit" class="header_middle_search_link">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </div>
                    </div>

                    <!-- header search item  start -->
                    <div class="header_search_item_content" id="product_search" style="display: none;">
                        <div id="search_product_show" class="header_search_item">
                            
                        </div>
                    </div>
                    <!-- header search item  end -->
                </div>
                <div class="col-xxl-4 col-xl-4 col-lg-5 d-none d-lg-block">
                    <div class="header_middle_table_cell">
                        <div class="header_middle_call">
                            <a href="tel:<?php echo e($general_settings->header_contact_number); ?>" class="header_middle_call_link">
                                <div class="header_middle_call_icon">
                                    <i class="fa-solid fa-phone"></i>
                                </div>
                                <div class="header_middle_call_text">
                                    <p>Call Us Now:</p>
                                    <span><?php echo e($general_settings->header_contact_number); ?></span>
                                </div>
                            </a>
                        </div>
                        <div class="header_middle_wishlist">
                            <a href="<?php echo e(route('wish.list')); ?>" class="header_middle_wishlist_link">
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
    <!-- header middle end -->

    <!-- header bottom start -->
    <div class="header_bottom d-none d-lg-block">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="main_menu">
                        <ul>
                            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>    
                                <li>
                                    <a href="<?php echo e(route('product.category',[$category->slug])); ?>" class="main_menu_link">
                                        <?php echo e($category->name); ?>

                                        <?php if(count($category->subCategory) > 0): ?>
                                            <i class="fa-solid fa-angle-down"></i>
                                        <?php endif; ?>
                                    </a>
                                    <ul class="submenu">
                                        <?php $__currentLoopData = $category->subCategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subCategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>    
                                            <li>
                                                <a href="<?php echo e(route('product.category',[$category->slug, $subCategory->slug])); ?>" class="submenu_link">
                                                    <?php echo e($subCategory->name); ?>

                                                    <?php if(count($subCategory->subSubCategory) > 0): ?>
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    <?php endif; ?>
                                                </a>
                                                <ul class="submenu">
                                                    <?php $__currentLoopData = $subCategory->subSubCategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_SubCategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <li>
                                                            <a href="<?php echo e(route('product.category',[$category->slug, $subCategory->slug, $sub_SubCategory->slug])); ?>" class="submenu_link">
                                                                <?php echo e($sub_SubCategory->name); ?>

                                                            </a>
                                                        </li>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                   
                                                </ul>
                                            </li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        
                                    </ul>
                                </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header bottom end -->

</header>
<!--============ Header Area End ============-->
<?php /**PATH /home/alihama1/glowryaa.com/resources/views/frontend/partials/header.blade.php ENDPATH**/ ?>