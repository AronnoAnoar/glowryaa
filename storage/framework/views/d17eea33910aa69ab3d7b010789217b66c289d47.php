<?php $__env->startSection('title','Category Products'); ?>
<?php if(isset($category) && isset($sub_category) && isset($sub_sub_category)): ?>
    <?php $__env->startSection('meta_title', $sub_sub_category->meta_title); ?>
    <?php $__env->startSection('meta_description', $sub_sub_category->meta_description); ?>
    <?php $__env->startSection('meta_key', $sub_sub_category->meta_key); ?>
    <?php $__env->startSection('meta_content', $sub_sub_category->meta_content); ?>  
<?php elseif(isset($category) && isset($sub_category)): ?> 
    <?php $__env->startSection('meta_title', $sub_category->meta_title); ?>
    <?php $__env->startSection('meta_description', $sub_category->meta_description); ?>
    <?php $__env->startSection('meta_key', $sub_category->meta_key); ?>
    <?php $__env->startSection('meta_content', $sub_category->meta_content); ?>
<?php elseif(isset($category) && $sub_category == null && $sub_sub_category == null): ?>
    <?php $__env->startSection('meta_title', $category->meta_title); ?>
    <?php $__env->startSection('meta_description', $category->meta_description); ?>
    <?php $__env->startSection('meta_key', $category->meta_key); ?>
    <?php $__env->startSection('meta_content', $category->meta_content); ?>
<?php endif; ?>
<?php $__env->startSection('content'); ?>
       <!--============ Breadcrumb Area Start ============-->
       <div class="breadcrumb_area section_top_space">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-12">
                    <div class="_breadcrumb">
                        <ul>
                            <li>
                                <a href="<?php echo e(route('root')); ?>" class="breadcrumb_link">
                                    <i class="fa-solid fa-house-chimney"></i>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo e(route('product.category',[$category->slug])); ?>" class="breadcrumb_link">
                                   <?php echo e($category->name); ?>

                                </a>
                            </li>
                            <?php if(isset($sub_category)): ?>
                                <li>
                                    <a href="<?php echo e(route('product.category',[$category->slug, $sub_category->slug])); ?>" class="breadcrumb_link">
                                    / <?php echo e($sub_category->name); ?>

                                    </a>
                                </li>
                            <?php endif; ?>
                            <?php if(isset($sub_sub_category)): ?>
                                <li>
                                    <a href="<?php echo e(route('product.category',[$category->slug, $sub_category->slug, $sub_sub_category->slug])); ?>" class="breadcrumb_link">
                                    / <?php echo e($sub_sub_category->name); ?>

                                    </a>
                                </li>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--============ Breadcrumb Area End ============-->

    <!--============ Shop Category Area Start ============-->
    <div class="shop_category_area section_top_space">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-12">
                    <div class="shop_category">
                        <ul>

                            <?php if(isset($sub_category->subSubCategory) && count($sub_category->subSubCategory) > 0): ?>
                                <?php $__currentLoopData = $sub_category->subSubCategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_subCategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li>
                                        <a href="<?php echo e(route('product.category',[$category->slug, $sub_category->slug, $sub_subCategory->slug])); ?>" class="shop_category_link"><?php echo e($sub_subCategory->name); ?></a>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php else: ?>
                                <?php if(isset($category->subCategory) && count($category->subCategory) > 0): ?>
                                    <?php $__currentLoopData = $category->subCategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subCategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li>
                                            <a href="<?php echo e(route('product.category',[$category->slug, $subCategory->slug])); ?>" class="shop_category_link"><?php echo e($subCategory->name); ?></a>
                                        </li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                            <?php endif; ?>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--============ Shop Category Area End ============-->

    <!--============ Shop Area Start ============-->
    <div class="shop_area section_padding_bottom section_top_space">
        <div class="container">
            <!-------------------show load product---------------->
            <div class="row gy-3 gx-3" id="moreDataLoad">
                
            </div>
        </div>
    </div>
    <!--============ Shop Area End ============-->

    
    <!--================Loading Spinner Start==========================-->
    <div id="spinner" style=" display: none;text-align: center;">
        <img src="<?php echo e(asset('frontend/images/spinner/200w.gif')); ?>" alt="Loading...">
    </div>
     <!--================Loading Spinner end==========================-->

     <!--===========get value ================== -->
     <input type="hidden" id="category_slug" value="<?php echo e($category->slug); ?>">
     <input type="hidden" id="subcategory_slug" value="<?php echo e($sub_category->slug ?? ""); ?>">
     <input type="hidden" id="sub_subcategory_slug" value="<?php echo e($sub_sub_category->slug ?? ""); ?>">


<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
   

    <script>
        //==============variable=====================
        var isLoading = false;
        $('#spinner').hide();

        var category_slug = $('#category_slug').val();
        var subcategory_slug = $('#subcategory_slug').val();
        var sub_subcategory_slug = $('#sub_subcategory_slug').val();

        //=========loadData==========
            function loadData() {
                isLoading = true; // Set loading flag to true
                $('#spinner').show();
                var postData = {
                    page:1,
                    limit:12,
                    category_slug:category_slug,
                    subcategory_slug:subcategory_slug,
                    sub_subcategory_slug:sub_subcategory_slug,
                };

                $.ajax({
                    url: "<?php echo e(route('load.more')); ?>",
                    type: 'POST',
                    dataType: 'json',
                    data: postData,
                    success: function(res){
                        $('#moreDataLoad').append(res.data);
                        isLoading = false;
                        $('#spinner').hide();
                    },
                    error: function (xhr, status, error) {
                        console.error(error);
                        isLoading = false;
                    }
                });
            }
         //==========================load more data===========================
         $(function(){
            loadData();

            isLoading = true; // Set loading flag to true
            $('#spinner').show();

            var data = {
                page: 2,
                limit: 12,
                category_slug:category_slug,
                subcategory_slug:subcategory_slug,
                sub_subcategory_slug:sub_subcategory_slug
            };


            var postData = {
                    page:data.page,
                    limit:data.limit,
                    category_slug:data.category_slug,
                    subcategory_slug:data.subcategory_slug,
                    sub_subcategory_slug:data.sub_subcategory_slug,
                };

            var obj = $(document).loadMore({
                url: "<?php echo e(route('load.more')); ?>",
                dataType: 'json',
                type:'post',
                scrollBottom: 700,
                data: postData,
                success: function (res) {
                    if(res.product_length == 0){
                        this.ajaxSwitch = false; 
                    }
                    data.page += 1;
                    obj.updatePram('data', data);
                    render(res.data);

                    isLoading = false;
                    $('#spinner').hide();
                }
            });

            function render(data) {
                $("#moreDataLoad").append(data);
            }
              
        });
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rawcodei/glowryaa.com/resources/views/frontend/pages/product/index.blade.php ENDPATH**/ ?>