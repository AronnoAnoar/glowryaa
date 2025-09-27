<?php $__env->startSection('title','Dashboard'); ?>
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
                            <h3>All Orders</h3>
                        </div>
                        <div class="profile_page_content section_top_space">
                            <div class="profile_page_order_view">
                                <div class="table-responsive">
                                    <table id="user_order_table" class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>Invoice No</th>
                                                <th>Date</th>
                                                <th>Status</th>
                                                <th>Discount</th>
                                                <th>Total</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $__empty_1 = true; $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>    
                                                <tr>
                                                    <td><?php echo e($loop->index + 1); ?></td>
                                                    <td><?php echo e($order->invoice_no); ?></td>
                                                    <td><?php echo e(Carbon\Carbon::parse($order->created_at)->format('Y-m-d h:i a')); ?></td>
                                                    <td>
                                                        <?php if($order->status == 1): ?>
                                                            <span class="badge bg-secondary" >New</span>
                                                        <?php elseif($order->status == 2): ?>
                                                            <span class="badge" >Pending</span>
                                                        <?php elseif($order->status == 3): ?>
                                                            <span class="badge bg-success">Approved</span>
                                                        <?php elseif($order->status == 4): ?>
                                                            <span class="badge bg-success" >Shipment</span>
                                                        <?php elseif($order->status == 5): ?>
                                                            <span class="badge bg-warning">Delivered</span>
                                                        <?php elseif($order->status == 6): ?>
                                                            <span class="badge bg-danger" >Cancel</span>
                                                        <?php elseif($order->status == 7): ?>
                                                            <span class="badge bg-danger">Return</span>
                                                        <?php else: ?>
                                                            <span class="badge bg-info ">Processing</span>
                                                        <?php endif; ?>

                                                    </td>
                                                    <td>
                                                        <span class="order_discount"><?php echo e($order->discount); ?></span>
                                                    </td>
                                                    <td><?php echo e($order->total); ?></td>
                                                    <td>
                                                        <div class="profile_oder_view">
                                                            <?php if($order->status == 1 || $order->status == 2 || $order->status == 3): ?>    
                                                                <a href="<?php echo e(route('user.order.Update',$order->id)); ?>" class="profile_oder_cancel_btn">
                                                                    Cancel
                                                                </a>   
                                                            <?php endif; ?>
                                                            <a href="<?php echo e(route('user.order.details',$order->id)); ?>" class="profile_oder_view_link">
                                                                <i class="fa-regular fa-eye"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                                <p>No Order</p>
                                            <?php endif; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Profile Area End ============-->
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
<script>
    $(document).ready( function () {
        $('#user_order_table').DataTable();
    });
</script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/frontend/pages/user/index.blade.php ENDPATH**/ ?>