<?php
    // Sets the product condition to 'new' if created within the last 14 days.
    $condition = today()->diffInDays($product->created_at) < 14 ? 'new' : 'in-stock';

    // This block correctly identifies the variant type for the product.
    $variant_count = $product->productVariant->count();
    $attribute_id = null;
    if ($variant_count > 0) {
        // We get the attribute_id from the first variant relationship.
        // This assumes all variants for a product are the same type (e.g., all sizes).
        $attribute_id = $product->productVariant->first()->attribute_id;
    }

    $total_product_review = $total_review;
    // This correctly prevents division by zero errors for reviews.
    $total_review = $total_review ?: 1;
?>


<?php $__env->startSection('title', $product->name . ' || ' . $product->product_code); ?>
<?php $__env->startSection('meta_title', $product->meta_title); ?>
<?php $__env->startSection('meta_description', $product->meta_description); ?>
<?php $__env->startSection('meta_key', $product->meta_key); ?>
<?php $__env->startSection('meta_content', $product->meta_content); ?>
<?php $__env->startPush('facebook_open_graph'); ?>
    <meta property="og:title" content="<?php echo e($product->name); ?>">
    <meta property="og:description" content="<?php echo e($product->meta_description); ?>">
    <meta property="og:url" content="<?php echo e(route('single.product', $product->slug)); ?>">
    <meta property="og:image" content="<?php echo e(asset('storage/' . $product->thumbnail_img)); ?>">
    <meta property="product:brand" content="<?php echo e(url('/')); ?>">
    <meta property="product:availability" content="<?php echo e($product->stock); ?>">
    <meta property="product:condition" content="<?php echo e($condition); ?>">
    <meta property="product:price:amount" content="<?php echo e($product->sale_price); ?>">
    <meta property="product:price:currency" content="BDT">
    <meta property="product:retailer_item_id" content="<?php echo e($product->product_code); ?>">
    <meta property="product:item_group_id" content="<?php echo e($product->category_id); ?>">
<?php $__env->stopPush(); ?>
<?php $__env->startSection('content'); ?>
    <section class="single_product_area section_padding">
        <div class="container">
            <div class="row gy-4">
                <div class="col-xxl-4 col-xl-4 col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="zooming_image_content">
                        <div class="zooming_show_image">
                            <?php if($product->productImage->isNotEmpty()): ?>
                                <img src="<?php echo e(asset('storage/' . $product->productImage[0]['image'])); ?>"
                                    alt="<?php echo e($product->name); ?>">
                            <?php else: ?>
                                <img src="<?php echo e(asset('storage/images/products/defult_product_image.jpg')); ?>"
                                    alt="default product image">
                            <?php endif; ?>
                        </div>
                        <div class="zooming_image_list">
                            <ul>
                                <?php $__currentLoopData = $product->productImage; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li <?php if($index == 0): ?> class="active" <?php endif; ?>>
                                        <img src="<?php echo e(asset('storage/' . $image->image)); ?>" onclick="showImg(this.src)"
                                            class="clickable-image">
                                        
                                        <?php if($index == 0 && !empty($product->video_url)): ?>
                                            <div class="single_first_img_color"></div>
                                            <div class="video_play_icon" data-bs-toggle="modal"
                                                href="#exampleModalToggle">
                                                <i class="fa-solid fa-play"></i>
                                            </div>
                                        <?php endif; ?>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                <?php if(!empty($product->video_url)): ?>
                                    <div class="modal fade" id="exampleModalToggle" tabindex="-1"
                                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div
                                            class="modal-dialog video_modal_dialog modal-dialog-centered modal-dialog-scrollable">
                                            <div class="video_modal_content">
                                                <div class="close_icon" data-bs-dismiss="modal" aria-label="Close">
                                                    <i class="fa-solid fa-x"></i>
                                                </div>
                                                <div class="youtube_video">
                                                    <iframe width="100%" height="100%"
                                                        src="<?php echo e($product->video_url); ?>?autoplay=1"
                                                        title="YouTube video player" frameborder="0"
                                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                                        allowfullscreen></iframe>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-4 col-xl-4 col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="single_product_details">
                        <div class="single_product_list">
                            <ul>
                                <li>
                                    <a href="<?php echo e(route('root')); ?>" class="single_product_list_link" style="color: #aa1382">
                                        <i class="fa-solid fa-house-chimney"></i>
                                    </a>
                                </li>
                                <?php if(isset($product->category->name)): ?>
                                    <li>
                                        <a href="<?php echo e(route('product.category', [@$product->category->slug])); ?>"
                                            class="single_product_list_link" style="color: #aa1382">
                                            <?php echo e(@$product->category->name); ?>

                                        </a>
                                    </li>
                                <?php endif; ?>
                                <?php if(isset($product->subCategory)): ?>
                                    <li>
                                        <a href="<?php echo e(route('product.category', [@$product->category->slug, @$product->subCategory->slug])); ?>"
                                            class="single_product_list_link" style="color: #aa1382">
                                            <?php echo e(@$product->subCategory->name); ?>

                                        </a>
                                    </li>
                                <?php endif; ?>
                                <?php if(isset($product->subSubCategory)): ?>
                                    <li>
                                        <a href="<?php echo e(route('product.category', [@$product->category->slug, @$product->subCategory->slug, @$product->subSubCategory->slug])); ?>"
                                            class="single_product_list_link">
                                            <?php echo e(@$product->subSubCategory->name); ?>

                                        </a>
                                    </li>
                                <?php endif; ?>
                            </ul>
                        </div>
                        <div class="single_product_name">
                            <input type="hidden" id="product_id" value="<?php echo e($product->id); ?>">
                            <input type="hidden" id="product_stock" value="<?php echo e($product->stock); ?>">
                            <h2><?php echo e($product->name); ?></h2>
                        </div>
                        <div class="single_product_whatsapp">
                            <a href="https://wa.me/<?php echo e($general_settings->whatsapp_number); ?>"
                                class="single_product_whatsapp_link" style="color: #aa1382">
                                <svg data-v-ba5acb34="" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48"
                                    width="22px" height="22px" fill-rule="evenodd" clip-rule="evenodd"
                                    class="single_whats_app">
                                    <path data-v-ba5acb34="" fill="#fff"
                                        d="M4.9,43.3l2.7-9.8C5.9,30.6,5,27.3,5,24C5,13.5,13.5,5,24,5c5.1,0,9.8,2,13.4,5.6 C41,14.2,43,18.9,43,24c0,10.5-8.5,19-19,19c0,0,0,0,0,0h0c-3.2,0-6.3-0.8-9.1-2.3L4.9,43.3z">
                                    </path>
                                    <path data-v-ba5acb34="" fill="#fff"
                                        d="M4.9,43.8c-0.1,0-0.3-0.1-0.4-0.1c-0.1-0.1-0.2-0.3-0.1-0.5L7,33.5c-1.6-2.9-2.5-6.2-2.5-9.6 C4.5,13.2,13.3,4.5,24,4.5c5.2,0,10.1,2,13.8,5.7c3.7,3.7,5.7,8.6,5.7,13.8c0,10.7-8.7,19.5-19.5,19.5c-3.2,0-6.3-0.8-9.1-2.3 L5,43.8C5,43.8,4.9,43.8,4.9,43.8z">
                                    </path>
                                    <path data-v-ba5acb34="" fill="#cfd8dc"
                                        d="M24,5c5.1,0,9.8,2,13.4,5.6C41,14.2,43,18.9,43,24c0,10.5-8.5,19-19,19h0c-3.2,0-6.3-0.8-9.1-2.3 L4.9,43.3l2.7-9.8C5.9,30.6,5,27.3,5,24C5,13.5,13.5,5,24,5 M24,43L24,43L24,43 M24,43L24,43L24,43 M24,4L24,4C13,4,4,13,4,24 c0,3.4,0.8,6.7,2.5,9.6L3.9,43c-0.1,0.3,0,0.7,0.3,1c0.2,0.2,0.4,0.3,0.7,0.3c0.1,0,0.2,0,0.3,0l9.7-2.5c2.8,1.5,6,2.2,9.2,2.2 c11,0,20-9,20-20c0-5.3-2.1-10.4-5.8-14.1C34.4,6.1,29.4,4,24,4L24,4z">
                                    </path>
                                    <path data-v-ba5acb34="" fill="#40c351"
                                        d="M35.2,12.8c-3-3-6.9-4.6-11.2-4.6C15.3,8.2,8.2,15.3,8.2,24c0,3,0.8,5.9,2.4,8.4L11,33l-1.6,5.8 l6-1.6l0.6,0.3c2.4,1.4,5.2,2.2,8,2.2h0c8.7,0,15.8-7.1,15.8-15.8C39.8,19.8,38.2,15.8,35.2,12.8z">
                                    </path>
                                    <path data-v-ba5acb34="" fill="#fff" fill-rule="evenodd"
                                        d="M19.3,16c-0.4-0.8-0.7-0.8-1.1-0.8c-0.3,0-0.6,0-0.9,0 s-0.8,0.1-1.3,0.6c-0.4,0.5-1.7,1.6-1.7,4s1.7,4.6,1.9,4.9s3.3,5.3,8.1,7.2c4,1.6,4.8,1.3,5.7,1.2c0.9-0.1,2.8-1.1,3.2-2.3 c0.4-1.1,0.4-2.1,0.3-2.3c-0.1-0.2-0.4-0.3-0.9-0.6s-2.8-1.4-3.2-1.5c-0.4-0.2-0.8-0.2-1.1,0.2c-0.3,0.5-1.2,1.5-1.5,1.9 c-0.3,0.3-0.6,0.4-1,0.1c-0.5-0.2-2-0.7-3.8-2.4c-1.4-1.3-2.4-2.8-2.6-3.3c-0.3-0.5,0-0.7,0.2-1c0.2-0.2,0.5-0.6,0.7-0.8 c0.2-0.3,0.3-0.5,0.5-0.8c0.2-0.3,0.1-0.6,0-0.8C20.6,19.3,19.7,17,19.3,16z"
                                        clip-rule="evenodd"></path>
                                </svg>
                                Ask for details
                            </a>
                        </div>
                        <div class="single_product_attribute">
                            <strong>SKU:</strong>
                            <span><?php echo e($product->product_code); ?></span>
                        </div>
                        <div class="single_product_attribute">
                            <strong>Price:</strong>
                            <div class="single_product_price">
                                <span class="single_product_new_price"
                                    id="single_product_page_variant_wise_sale_price"><?php echo e($product->sale_price); ?>

                                    ৳</span>
                                <?php if($product->price > $product->sale_price): ?>
                                    <span
                                        class="single_product_discount_price"><?php echo e($product->price); ?>

                                        ৳</span>
                                <?php endif; ?>
                            </div>
                        </div>

                        
                        <?php if($variant_count > 0 && $attribute_id == 1): ?>
                            <div class="single_product_attribute">
                                <strong class="single_product_attribute_size">Size:</strong>
                                <div class="single_product_size_checkbox_list" id="product_variant_size">
                                    <ul>
                                        <?php $__currentLoopData = $product->productVariant; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $variant): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li>
                                                <div class="single_product_size_checkbox_list_group variant">
                                                    <input type="radio" name="variant"
                                                        onclick="getVariant(this.id); getVariantWiseProductPrice( this.id ,'<?php echo e($product->id); ?>');"
                                                        id="<?php echo e($variant->variant->id); ?>">
                                                    <label for="<?php echo e($variant->variant->id); ?>">
                                                        <div class="title">
                                                            <?php echo e($variant->variant->name); ?>

                                                        </div>
                                                    </label>
                                                </div>
                                            </li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                </div>
                            </div>
                        <?php endif; ?>

                        
                        <?php if($variant_count > 0 && $attribute_id == 2): ?>
                            <div class="single_product_attribute">
                                <strong class="single_product_attribute_size">Color:</strong>
                                <div class="single_product_size_checkbox_list" id="product_variant_color">
                                    <ul>
                                        <?php $__currentLoopData = $product->productVariant; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $variant): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li>
                                                <div class="single_product_size_checkbox_list_group variant">
                                                    <input type="radio" name="variant"
                                                        onclick="getVariant(this.id); getVariantWiseProductPrice( this.id ,'<?php echo e($product->id); ?>');"
                                                        id="<?php echo e($variant->variant->id); ?>">
                                                    <label for="<?php echo e($variant->variant->id); ?>">
                                                        <div class="title">
                                                            <?php echo e($variant->variant->name); ?>

                                                        </div>
                                                    </label>
                                                </div>
                                            </li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                </div>
                            </div>
                        <?php endif; ?>
                        
                        <div>
                            <?php echo $product->short_details; ?>

                        </div>

                        <div class="single_product_qty_with_buy_now_btn">
                            <div class="row gx-3">
                                <div class="col-xxl-4 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                                    <div class="single_product_qty">
                                        <div class="single_product_qty_btn_minus">
                                            <button type="button" onclick="decrement()"
                                                class="single_product_qty_minus">
                                                <i class="fa-solid fa-minus"></i>
                                            </button>
                                        </div>
                                        <input class="product_qty" type="text" value="1" min="1">
                                        <div class="single_product_qty_btn_minus">
                                            <button type="button" onclick="Increment()"
                                                class="single_product_qty_plus">
                                                <i class="fa-solid fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xxl-4 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                                    <div class="single_product_buy_now_btn">
                                        <a href="#" id="<?php echo e($product->id); ?>"
                                            data-variant="<?php echo e($variant_count); ?>"
                                            onclick="buyNow(this.id, this.getAttribute('data-variant'))"
                                            class="single_product_buy_now_btn_link cart_check_out">
                                            Order Now
                                            <i class="fa-solid fa-check"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_product_btn_group">
                            <div class="row gx-3">
                                <div class="col-xxl-4 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                                    <button type="button" id="<?php echo e($product->id); ?>"
                                        data-variant="<?php echo e($variant_count); ?>" class="single_product_add_to_cart"
                                        onclick="addToCard(this.id,this.getAttribute('data-variant'))">
                                        <i class="fa-solid fa-cart-shopping"></i>
                                        Add To Cart
                                    </button>
                                </div>
                                <div class="col-xxl-4 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                                    <button class="single_product_add_to_wishlist" id="<?php echo e($product->id); ?>"
                                        data-variant="<?php echo e($variant_count); ?>"
                                        onclick="addToWishList(this.id,this.getAttribute('data-variant'))">
                                        <i class="fa-regular fa-heart"></i>
                                        Add To Wishlist
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="single_product_social_share">
                            <span class="social-share-title">Share:</span>
                            <a href="https://www.facebook.com/sharer/sharer.php?u=<?php echo e(urlencode(request()->fullUrl())); ?>"
                                target="_blank" class="single_product_social_share_link facebook_color">
                                <i class="fa-brands fa-facebook"></i>
                            </a>
                            <a href="https://twitter.com/intent/tweet?url=<?php echo e(urlencode(request()->fullUrl())); ?>&text=<?php echo e(urlencode($product->name)); ?>"
                                target="_blank" class="single_product_social_share_link twitter_color">
                                <i class="fa-brands fa-twitter"></i>
                            </a>
                            <a href="https://pinterest.com/pin/create/button/?url=<?php echo e(urlencode(request()->fullUrl())); ?>&media=<?php echo e(urlencode(asset('storage/' . $product->thumbnail_img))); ?>&description=<?php echo e(urlencode($product->meta_description)); ?>"
                                target="_blank" class="single_product_social_share_link pinterest_color">
                                <i class="fa-brands fa-pinterest"></i>
                            </a>
                            <a href="https://api.whatsapp.com/send?text=<?php echo e(urlencode($product->name . ' - ' . request()->fullUrl())); ?>"
                                target="_blank" class="single_product_social_share_link whatsapp_color">
                                <i class="fa-brands fa-whatsapp"></i>
                            </a>
                            <a href="mailto:?subject=<?php echo e(urlencode($product->name)); ?>&body=<?php echo e(urlencode('Check out this product: ' . request()->fullUrl())); ?>"
                                class="single_product_social_share_link email_color">
                                <i class="fa-regular fa-envelope"></i>
                            </a>
                        </div>
                    </div>
                </div>
                
                 
            </div>
        </div>
    </section>

    <div class="single_product_tab_area section_padding_bottom">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="single_product_tab">
                        <ul class="nav nav-tabs single_product_tab_nav" id="myTab" role="tablist">
                            <li class="nav-item single_product_tab_nav_item" role="presentation">
                                <button class="nav-link single_product_tab_nav_link active" id="description-tab"
                                    data-bs-toggle="tab" data-bs-target="#description" type="button" role="tab"
                                    aria-controls="description" aria-selected="true">
                                    DESCRIPTION
                                </button>
                            </li>
                            <li class="nav-item single_product_tab_nav_item" role="presentation">
                                <button class="nav-link single_product_tab_nav_link" id="buy-tab"
                                    data-bs-toggle="tab" data-bs-target="#buy" type="button" role="tab"
                                    aria-controls="buy" aria-selected="false">
                                    HOW TO BUY
                                </button>
                            </li>
                            <li class="nav-item single_product_tab_nav_item" role="presentation">
                                <button class="nav-link single_product_tab_nav_link" id="policy-tab"
                                    data-bs-toggle="tab" data-bs-target="#policy" type="button" role="tab"
                                    aria-controls="policy" aria-selected="false">
                                    RETURN POLICY
                                </button>
                            </li>
                             <li class="nav-item single_product_tab_nav_item" role="presentation">
                                <button class="nav-link single_product_tab_nav_link" id="review-tab"
                                    data-bs-toggle="tab" data-bs-target="#review_content" type="button" role="tab"
                                    aria-controls="review_content" aria-selected="false">
                                    REVIEWS
                                </button>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="description" role="tabpanel"
                                aria-labelledby="description-tab">
                                <div class="single_product_tab_content">
                                    <?php echo $product->details; ?>

                                </div>
                            </div>
                            
                            <div class="tab-pane fade" id="buy" role="tabpanel" aria-labelledby="buy-tab">
                                <div class="single_product_tab_content">
                                    <div class="single_product_tab_list">
                                        <ul>
                                            <li>
                                                Select number of product you want to buy.
                                            </li>
                                            <li>
                                                Click <strong>Add To Cart</strong> Button
                                            </li>
                                            <li>
                                                Then go to checkout page
                                            </li>
                                            <li>
                                                If you are a new customer, please click on Sign Up.provide us your
                                                valid
                                                information information.
                                            </li>
                                            <li>
                                                Complete your checkout, we received your order, and for order
                                                confirmation
                                                or customer service contact with you
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="policy" role="tabpanel" aria-labelledby="policy-tab">
                                <div class="single_product_tab_content">
                                    <div class="single_product_tab_list">
                                        <ul>
                                            <li>
                                                If your product is damaged, defective, incorrect or incomplete at the
                                                time
                                                of delivery, please file a return request on call to customer care
                                                support
                                                number within 3 days of the delivery date
                                            </li>
                                            <li>
                                                Change of mind is not applicable as a Return Reason for this product
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="tab-pane fade" id="review_content" role="tabpanel" aria-labelledby="review-tab">
                                <div class="single_product_tab_content">
                                    <div class="customer_comment_area section_padding_bottom">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                                    <div class="section_title text-center">
                                                        <h2>Reviews</h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section_top_space">
                                            <div class="container">
                                                <div class="row gy-4">
                                                    <div
                                                        class="col-xxl-3 col-xl-4 col-lg-12 col-md-12 col-sm-12 col-12">
                                                        <div class="customer_comment_title">
                                                            <span
                                                                class="customer_comment_avarage_rating"><?php echo e($average_ratings); ?></span>
                                                            <span class="customer_comment_rating_name">
                                                                Reviews
                                                            </span>
                                                        </div>
                                                        <?php if($average_ratings <= 1): ?>
                                                            <div class="customer_comment_rating">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                            </div>
                                                        <?php elseif($average_ratings <= 1.5): ?>
                                                            <div class="customer_comment_rating">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i
                                                                        class="fa-solid fa-star-half-stroke"></i></span>
                                                            </div>
                                                        <?php elseif($average_ratings <= 2): ?>
                                                            <div class="customer_comment_rating">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                            </div>
                                                        <?php elseif($average_ratings <= 2.5): ?>
                                                            <div class="customer_comment_rating">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i
                                                                        class="fa-solid fa-star-half-stroke"></i></span>
                                                            </div>
                                                        <?php elseif($average_ratings <= 3): ?>
                                                            <div class="customer_comment_rating">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                            </div>
                                                        <?php elseif($average_ratings <= 3.5): ?>
                                                            <div class="customer_comment_rating">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i
                                                                        class="fa-solid fa-star-half-stroke"></i></span>
                                                            </div>
                                                        <?php elseif($average_ratings <= 4): ?>
                                                            <div class="customer_comment_rating">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                            </div>
                                                        <?php elseif($average_ratings <= 4.5): ?>
                                                            <div class="customer_comment_rating">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i
                                                                        class="fa-solid fa-star-half-stroke"></i></span>
                                                            </div>
                                                        <?php elseif($average_ratings <= 5): ?>
                                                            <div class="customer_comment_rating">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                            </div>
                                                        <?php endif; ?>
                                                        <div class="customer_comment_rating_count">
                                                            <span><?php echo e(number_format($total_product_review)); ?>

                                                                reviews</span>
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="col-xxl-5 col-xl-5 col-lg-12 col-md-12 col-sm-12 col-12">
                                                        <div class="customer_comment_item">
                                                            <div class="customer_comment_item_star">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                            </div>
                                                            <div class="customer_comment_item_percentage_segment">
                                                                <span
                                                                    style="width: <?php echo e(number_format(($product->rating_stars['five_star'] / $total_review) * 100, 2)); ?>%;"></span>
                                                            </div>
                                                            <div class="customer_comment_item_percentage">
                                                                <span><?php echo e(number_format(($product->rating_stars['five_star'] / $total_review) * 100, 2)); ?>%</span>
                                                            </div>
                                                        </div>
                                                        <div class="customer_comment_item">
                                                            <div class="customer_comment_item_star">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-regular fa-star"></i></span>
                                                            </div>
                                                            <div class="customer_comment_item_percentage_segment">
                                                                <span
                                                                    style="width: <?php echo e(number_format(($product->rating_stars['four_star'] / $total_review) * 100, 2)); ?>%;"></span>
                                                            </div>
                                                            <div class="customer_comment_item_percentage">
                                                                <span><?php echo e(number_format(($product->rating_stars['four_star'] / $total_review) * 100, 2)); ?>%</span>
                                                            </div>
                                                        </div>
                                                        <div class="customer_comment_item">
                                                            <div class="customer_comment_item_star">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-regular fa-star"></i></span>
                                                                <span><i class="fa-regular fa-star"></i></span>
                                                            </div>
                                                            <div class="customer_comment_item_percentage_segment">
                                                                <span
                                                                    style="width: <?php echo e(number_format(($product->rating_stars['three_star'] / $total_review) * 100, 2)); ?>%;"></span>
                                                            </div>
                                                            <div class="customer_comment_item_percentage">
                                                                <span><?php echo e(number_format(($product->rating_stars['three_star'] / $total_review) * 100, 2)); ?>%</span>
                                                            </div>
                                                        </div>
                                                        <div class="customer_comment_item">
                                                            <div class="customer_comment_item_star">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-regular fa-star"></i></span>
                                                                <span><i class="fa-regular fa-star"></i></span>
                                                                <span><i class="fa-regular fa-star"></i></span>
                                                            </div>
                                                            <div class="customer_comment_item_percentage_segment">
                                                                <span
                                                                    style="width: <?php echo e(number_format(($product->rating_stars['two_star'] / $total_review) * 100, 2)); ?>%;"></span>
                                                            </div>
                                                            <div class="customer_comment_item_percentage">
                                                                <span><?php echo e(number_format(($product->rating_stars['two_star'] / $total_review) * 100, 2)); ?>%</span>
                                                            </div>
                                                        </div>
                                                        <div class="customer_comment_item">
                                                            <div class="customer_comment_item_star">
                                                                <span><i class="fa-solid fa-star"></i></span>
                                                                <span><i class="fa-regular fa-star"></i></span>
                                                                <span><i class="fa-regular fa-star"></i></span>
                                                                <span><i class="fa-regular fa-star"></i></span>
                                                                <span><i class="fa-regular fa-star"></i></span>
                                                            </div>
                                                            <div class="customer_comment_item_percentage_segment">
                                                                <span
                                                                    style="width: <?php echo e(number_format(($product->rating_stars['one_star'] / $total_review) * 100, 2)); ?>%;"></span>
                                                            </div>
                                                            <div class="customer_comment_item_percentage">
                                                                <span><?php echo e(number_format(($product->rating_stars['one_star'] / $total_review) * 100, 2)); ?>%</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="col-xxl-3 col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12">
                                                        <div class="customer_comment_btn">
                                                            <button class="customer_comment_btn_link"
                                                                data-bs-toggle="modal"
                                                                data-product_slug="<?php echo e($product->slug); ?>"
                                                                data-bs-target="#staticBackdrop">
                                                                <i class="fa-regular fa-pen-to-square"></i>
                                                                Write a Review
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                                        <div class="customer_comment_review_content">
                                                            <div class="customer_comment_list">
                                                                <ul>
                                                                    <?php $__currentLoopData = $product_reviews; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $review): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                        <li>
                                                                            <div class="comment_customer_content">
                                                                                <div class="comment_customer_name">
                                                                                    <h5><?php echo e($review->user_name); ?>

                                                                                    </h5>
                                                                                </div>
                                                                                <?php if($review->rating_stars == 5): ?>
                                                                                    <div
                                                                                        class="comment_customer_rating">
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                    </div>
                                                                                <?php elseif($review->rating_stars == 4): ?>
                                                                                    <div
                                                                                        class="comment_customer_rating">
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                    </div>
                                                                                <?php elseif($review->rating_stars == 3): ?>
                                                                                    <div
                                                                                        class="comment_customer_rating">
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                    </div>
                                                                                <?php elseif($review->rating_stars == 2): ?>
                                                                                    <div
                                                                                        class="comment_customer_rating">
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                    </div>
                                                                                <?php elseif($review->rating_stars == 1): ?>
                                                                                    <div
                                                                                        class="comment_customer_rating">
                                                                                        <span><i
                                                                                                class="fa-solid fa-star"></i></span>
                                                                                    </div>
                                                                                <?php endif; ?>
                                                                                <div
                                                                                    class="customer_comment_details">
                                                                                    <p><?php echo e($review->review); ?></p>
                                                                                </div>
                                                                                <?php if($review->image): ?>
                                                                                    <div
                                                                                        class="customer_comment_image">
                                                                                        <img src="<?php echo e(asset('storage/' . $review->image)); ?>"
                                                                                            alt="<?php echo e($review->image); ?>">
                                                                                    </div>
                                                                                <?php endif; ?>
                                                                            </div>
                                                                        </li>
                                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                </ul>
                                                            </div>
                                                            <div class="comments_pagination">
                                                                <?php echo e($product_reviews->links()); ?>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="related_product_area section_padding_bottom">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title">
                        <h2>Related Products</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_top_space">
            <div class="row gy-3 gx-3">
                <?php $__currentLoopData = $related_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-4 col-sm-4 col-6">
                        <?php echo $__env->make('frontend.components.product_content', ['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </section>
    <div class="modal fade" id="staticBackdrop">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal_content">
                <div class="modal_deader">
                    <div class="modal_star">
                        <div class="modal_close" data-bs-dismiss="modal">
                            <i class="fa-solid fa-xmark"></i>
                        </div>
                        <div class="modal_star_title">
                            <h5>write your review</h5>
                        </div>

                    </div>
                </div>
                <div class="modal_body">
                    <div class="modal_comment_group">
                        <form id="review_form" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="modal_rating">
                                <input type="radio" id="star1" name="rating_stars" value="5">
                                <label for="star1"></label>
                                <input type="radio" id="star2" name="rating_stars" value="4">
                                <label for="star2"></label>
                                <input type="radio" id="star3" name="rating_stars" value="3">
                                <label for="star3"></label>
                                <input type="radio" id="star4" name="rating_stars" value="2">
                                <label for="star4"></label>
                                <input type="radio" id="star5" name="rating_stars" value="1">
                                <label for="star5"></label>
                            </div>
                            <div class="modal_comment_item">
                                <input type="text" name="user_name" placeholder="customer name">
                                <?php $__errorArgs = ['user_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <span class="is_error"><?php echo e($message); ?></span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                            <div class="modal_comment_item_textarea">
                                <textarea name="review" placeholder="write comment"></textarea>
                                <?php $__errorArgs = ['review'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <span class="is_error"><?php echo e($message); ?></span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                            <div class="modal_comment_item">
                                <input name="image" type="file" id="image">
                                <?php $__errorArgs = ['image'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <span class="is_error"><?php echo e($message); ?></span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                            <div class="modal_comment_item_btn">
                                <button id="review_submit" class="modal_comment_item_btn_link">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Code to execute when the DOM is fully loaded
            function handleWindowLoad() {
                console.log('Window loading has ended.');
                //call product showing events
                gtmEvent($('#product_id').val(), 'view_item', 1);
                window.removeEventListener('load', handleWindowLoad);
            }
            window.addEventListener('load', handleWindowLoad, {
                once: true
            });
        });

        function mobileSubmenu($id) {
            document.getElementById($id).classList.toggle("mobile_submenu_toggle");
        }

        function mobileSubSubmenu($id) {
            document.getElementById($id).classList.toggle("mobile_sub_submenu_toggle");
        }
    </script>
    <script>
        function search() {
            document.getElementById("search_id").classList.toggle("search_toggle");
        }
    </script>
    <script>
        function categoryList() {
            document.getElementById("category_list_id").classList.toggle("category_list_toggle");
        }
    </script>
    <script>
        // list image start
        let clickImageList = document.querySelector('.zooming_show_image img');

        function showImg(zoomingImage) {
            clickImageList.src = zoomingImage;
        }
        // list image end

        // zooming image start
        document.querySelectorAll('.zooming_show_image').forEach(elem => {
            let x, y, width, height;
            elem.onmouseenter = () => {
                const size = elem.getBoundingClientRect();

                x = size.x;
                y = size.y;

                width = size.width;
                height = size.height;
            };

            elem.onmousemove = e => {
                const horizontal = (e.clientX - x) / width * 100;
                const vertical = (e.clientY - y) / height * 100;

                elem.style.setProperty('--x', horizontal + '%');
                elem.style.setProperty('--y', vertical + '%');
            };
        });
        // zooming image end

        // active image start
        var zoomingImageList = document.querySelectorAll(".zooming_image_list ul li");

        zoomingImageList.forEach(i => {
            i.addEventListener("click", () => {
                resetLinks();
                i.classList.add("active");
            })
        })

        function resetLinks() {
            zoomingImageList.forEach(i => {
                i.classList.remove("active")
            })
        }
        // active image end
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/frontend/pages/product/single_product.blade.php ENDPATH**/ ?>