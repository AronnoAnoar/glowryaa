<?php $__env->startSection('title',$general_settings->title); ?>
<?php $__env->startSection('meta_title',$general_settings->meta_title); ?>
<?php $__env->startSection('meta_description',$general_settings->meta_description); ?>
<?php $__env->startSection('meta_key', $general_settings->meta_key); ?>
<?php $__env->startSection('meta_content', $general_settings->meta_content); ?>
<?php $__env->startSection('content'); ?>
     <!--============ Banner Area Start ============-->
     <div class="banner_area section_padding_bottom">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="slider_banner_active owl-carousel">
                        <?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>     
                            <div class="slider_banner_item">
                                <a href="<?php echo e($slider->url); ?>" target="_blank">
                                    <img src="<?php echo e(asset('storage/'. $slider->image)); ?>" alt="<?php echo e($slider->url); ?>">
                                </a>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--============ Banner Area End ============-->

    <!--============ Category Area Start ============-->
    <section class="category_area section_padding_bottom">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title">
                        <h2>Category Items</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="category_active owl-carousel">
                        <?php $__currentLoopData = $top_section_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="category_item">
                                <a href="<?php echo e(route('product.category',[$category->slug])); ?>" class="category_item_link">
                                    <div class="category_image">
                                        <img src="<?php echo e(asset('storage/' . $category->icon_image)); ?>" alt="<?php echo e($category->name); ?>">
                                    </div>
                                    <div class="category_name">
                                        <p><?php echo e($category->name); ?></p>
                                    </div>
                                </a>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Category Area End ============-->

    <!--============ Category Wise Multiple Product Area Start ============-->
        <div id="loadmore_category_product">
        </div> 
    <!--============ Category Wise Multiple Product Area End ============-->


     <!--================Loading Spinner Start==========================-->
     <div id="spinner" style=" display: none;text-align: center;">
        <img src="<?php echo e(asset('frontend/images/spinner/200w.gif')); ?>" alt="Loading...">
    </div>
     <!--================Loading Spinner end==========================-->

    <!--============ Service Area Start ============-->
    <section class="service_area section_padding_bottom d-none d-lg-block">
        <div class="container">
            <div class="row gy-4">
                <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6">
                    <div class="service_item">
                        <div class="service_icon">
                            <i class="fa-solid fa-thumbs-up"></i>
                        </div>
                        <div class="service_title">
                            <h4>High-quality Goods</h4>
                        </div>
                        <div class="service_description">
                            <p>Enjoy top quality items for less</p>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6">
                    <div class="service_item">
                        <div class="service_icon">
                            <i class="fa-solid fa-headset"></i>
                        </div>
                        <div class="service_title">
                            <h4>24/7 Live chat</h4>
                        </div>
                        <div class="service_description">
                            <p>Get instant assistance whenever you need it</p>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6">
                    <div class="service_item">
                        <div class="service_icon">
                            <i class="fa-solid fa-truck"></i>
                        </div>
                        <div class="service_title">
                            <h4>Express Shipping</h4>
                        </div>
                        <div class="service_description">
                            <p>Fast & reliable delivery options</p>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6">
                    <div class="service_item">
                        <div class="service_icon">
                            <i class="fa fa-credit-card"></i>
                        </div>
                        <div class="service_title">
                            <h4>Secure Payment</h4>
                        </div>
                        <div class="service_description">
                            <p>Multiple safe payment methods</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Service Area End ============-->

    

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <script>
         var isLoading = false;
          //================load data========================
          function loadData() {
            console.log('loading....');
            isLoading = true; // Set loading flag to true
            $('#spinner').show();

            var data = {
                page: 1,
                limit: 2
            };
            
            $.ajax({
                url: "<?php echo e(route('load.more.category.product')); ?>",
                type: 'POST',
                dataType: 'json',
                data: {page: data.page, limit: data.limit},
                success: function(res){
                    $('#loadmore_category_product').append(res.data);
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
                limit: 2
            };

            var obj = $(document).loadMore({
                loadType: 'auto',
                url: "<?php echo e(route('load.more.category.product')); ?>",
                dataType: 'json',
                type:'post',
                scrollBottom: 700,
                data: {page: data.page, limit: data.limit},
                success: function (res) {
                    if(res.category_length == 0){
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
                $("#loadmore_category_product").append(data);
            }
        
             
        });
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/alihama1/glowryaa.com/resources/views/frontend/pages/index.blade.php ENDPATH**/ ?>