<?php $__env->startSection('title','Order Traking'); ?>
<?php $__env->startSection('content'); ?>
    
        <!--============ Order Tracking Area Start ============-->
        <section class="order_tracking_area section_padding">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-8 col-xl-8 col-lg-9 col-md-10 col-sm-12 col-12 m-auto">
                        <div class="order_tracking_content">
                            <div class="order_tracking_header">
                                <div class="row">
                                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="order_tracking_title">
                                            <strong>TRACK YOUR CONSIGNMENT</strong>
                                            <p>Now you can easily track your consignment</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="order_tracking_search_content">
                                    <form id="order_tracking_form">
                                        <div class="row gx-2">
                                            <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-9 col-sm-9 col-9">
                                                <div class="order_tracking_search">
                                                    <input type="text" name="invoice_no" placeholder="Enter your tracking code">
                                                </div>
                                            </div>
                                            <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3">
                                                <div class="order_tracking_search_btn">
                                                    <button class="order_tracking_search_btn_link" onclick="OrderTracking()">
                                                        <i class="fa-solid fa-magnifying-glass"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div id="order_tracking_content" >

                            </div>
                           

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--============ Order Tracking Area End ============-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/frontend/pages/order_tracking.blade.php ENDPATH**/ ?>