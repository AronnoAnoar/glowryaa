<div class="col-xxl-2 col-xl-2 col-lg-3 col-md-4 col-sm-4 col-6">
    <div class="product_card">
        <div class="product_image">
            <a href="<?php echo e(route('single.product',$product->slug)); ?>">
                    <img src="<?php echo e(asset('storage/' . $product->thumbnail_img)); ?>" alt="<?php echo e($product->name); ?>">
            </a>
            <div class="product_discount">
                <span><?php echo e(getProductDiscountPrice($product->price, $product->sale_price)); ?>%</span>
            </div>
        </div>
        <div class="product_content">
            <div class="product_name"  >
                <a href="<?php echo e(route('single.product',$product->slug)); ?>" class="product_name_link"><?php echo e($product->name); ?></a>
            </div>
            <div class="product_price">
                <span class="product_new_price"><?php echo e($product->sale_price); ?> TK</span>
                <?php if($product->price > $product->sale_price): ?>
                    <span class="product_discount_price"><?php echo e($product->price); ?> TK</span>
                <?php endif; ?>
            </div>
            <div class="product_btn">
                <a href="<?php echo e(route('single.product',$product->slug)); ?>" class="product_btn_link">Order Now</a>
            </div>
        </div>
    </div>
</div><?php /**PATH /home/rawcodei/glowryaa.com/resources/views/frontend/components/load_more_product_content.blade.php ENDPATH**/ ?>