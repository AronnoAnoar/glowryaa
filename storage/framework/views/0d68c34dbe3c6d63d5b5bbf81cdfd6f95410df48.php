  
  <?php if(isset($category->products[0])): ?>    
    <section class="category_wise_multi_product_area section_padding_bottom">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title_table_cell">
                        <div class="section_title">
                            <h2 onclick="categoryList()">
                                <?php echo e($category->name); ?>

                                <i class="fa-solid fa-list"></i>
                            </h2>
                        </div>
                        <div class="category_list">
                            <ul id="category_list_id" class="category_list_class">
                                <?php $__currentLoopData = $category->subCategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>     
                                    <li>
                                        <a href="<?php echo e(route('product.category',[$category->slug, $subcategory->slug])); ?>" class="category_list_link"><?php echo e($subcategory->name); ?></a>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            
                                <li>
                                    <a href="<?php echo e(route('product.category',[$category->slug])); ?>" class="category_list_link category_list_link_view_all">View All</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row gy-3 gx-3">
                <?php $__empty_1 = true; $__currentLoopData = $category->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>    
                    <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-4 col-sm-4 col-6">
                        <?php echo $__env->make('frontend.components.product_content', ['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                    <p>No Product</p>
                <?php endif; ?>
            </div>
        </div>
        
    </section>
  <?php endif; ?>
<?php /**PATH /home/rawcodei/glowryaa.com/resources/views/frontend/components/load_more_category_product.blade.php ENDPATH**/ ?>