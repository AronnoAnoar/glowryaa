<ul>
    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <li>
            <a href="<?php echo e(route('single.product',$product->slug)); ?>" class="header_search_item_link">
                <div class="header_search_item_content">
                    <div class="header_search_item_product_image">
                        <img src="<?php echo e(asset('storage/' . $product->thumbnail_img)); ?>" alt="<?php echo e($product->name); ?>">
                    </div>
                    <div class="header_search_item_product_details">
                        <div class="header_search_item_product_name">
                            <p><?php echo e($product->name); ?></p>
                        </div>
                        <div class="header_search_item_product_price">
                            <span class="header_search_item_product_new_price"><?php echo e($product->sale_price); ?> TK</span>
                            <?php if($product->price > $product->sale_price): ?>
                                <span class="header_search_item_product_discount_price"><?php echo e($product->price); ?> TK</span>
                            <?php endif; ?> 
                    </div>
                    </div>
                </div>
            </a>
        </li>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul><?php /**PATH /home/rawcodei/glowryaa.com/resources/views/frontend/components/search_product.blade.php ENDPATH**/ ?>