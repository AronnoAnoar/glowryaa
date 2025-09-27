<?php $__env->startSection('title','Order-Details'); ?>
<?php $__env->startSection('content'); ?>
    
        <!--============ Profile Area Start ============-->
        <section class="profile_area section_padding">
            <div class="container">
                <div class="row gy-4">
                    <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                       <?php echo $__env->make('frontend.components.user_dashboard', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                    <div class="col-xxl-9 col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                        <div class="profile_right_side">
                            <div class="profile_heading text-center">
                                <h3>Order Details</h3>
                            </div>
                            <div class="profile_page_content section_top_space">
                                <div class="profile_page_order_view table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>Product</th>
                                                <th>Code</th>
                                                <th>Quantity</th>
                                                <th>Price</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $__currentLoopData = $order_items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>      
                                                <tr>
                                                    <td>1</td>
                                                    <td>
                                                        <div class="order_details">
                                                            <img src="<?php echo e(asset('storage/'.$item->product->thumbnail_img)); ?>" alt="product">
                                                            <p><?php echo e($item->product->name); ?></p>
                                                        </div>
                                                    </td>
                                                    <td><?php echo e($item->product->product_code); ?></td>
                                                    <td><?php echo e($item->quantity); ?></td>
                                                    <td><?php echo e($item->price); ?> TK</td>
                                                    <td><?php echo e($item->total); ?> TK</td>
                                                </tr>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td colspan="4"></td>
                                                <td>
                                                    <strong>Sub Total</strong>
                                                </td>
                                                <td><?php echo e($sub_total); ?> TK</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"></td>
                                                <td>
                                                    <strong>Discount</strong>
                                                </td>
                                                <td><?php echo e($order->discount); ?> TK</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"></td>
                                                <td>
                                                    <strong>Paid</strong>
                                                </td>
                                                <td><?php echo e($order->paid); ?> TK</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"></td>
                                                <td>
                                                    <strong>Shipping Cost</strong>
                                                </td>
                                                <td><?php echo e($order->shipping_cost); ?> TK</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"></td>
                                                <td>
                                                    <strong>Amount Due</strong>
                                                </td>
                                                <td><?php echo e($total_due_amount); ?> TK</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--============ Profile Area End ============-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/frontend/pages/user/order_details.blade.php ENDPATH**/ ?>