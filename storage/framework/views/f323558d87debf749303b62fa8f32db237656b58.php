<?php $__env->startSection('title','Check Out'); ?>
<?php $__env->startSection('content'); ?>
          <!--============ Success Area Start ============-->
          <section class="success_area section_padding">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="success_content text-center">
                            <div class="error_icon">
                                <i class="fa-solid fa-xmark"></i>
                            </div>
                            <div class="success_subtitle">
                                <p>YOUR <?php echo e($name ? $name : "CART"); ?> IS EMPTY</p>
                            </div>
                            <div class="success_title">
                                <img height="150" width="150" src="<?php echo e(asset('storage/images/check_out/blank_check_out.png')); ?>" alt="">
                            </div>
                            <div class="success_btn">
                                <a href="<?php echo e(route('root')); ?>" class="success_btn_link">Continue Shopping</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--============ Success Area End ============-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/alihama1/glowryaa.com/resources/views/frontend/pages/cart_blank.blade.php ENDPATH**/ ?>