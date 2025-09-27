<?php $__env->startSection('title', $page->name); ?>
<?php $__env->startSection('content'); ?>
     <!--============ Contact Us Area Start ============-->
     <section class="contact_us_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title text-center">
                        <h2><?php echo e($page->name); ?></h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_padding_top">
            <div class="row gy-4 gx-3">
                        <?php echo $page->details; ?>

            </div>
        </div>
       
    </section>
    <!--============ Contact Us Area End ============-->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/alihama1/glowryaa.com/resources/views/frontend/pages/custom_page.blade.php ENDPATH**/ ?>