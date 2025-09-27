<?php $__env->startSection('title','Wish-List'); ?>
<?php $__env->startSection('content'); ?>
     <!--============ Wishlist Area Start ============-->
     <section class="wishlist_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title custom_section_title text-center">
                        <h2>Wishlist</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_padding_top">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="wishlist_content">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                      <th class="padding_left_zero">Image</th>
                                      <th>Name</th>
                                      <th>Price</th>
                                      <th>Action</th>
                                      <th class="padding_right_zero" style="text-align: right;">Removie</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__currentLoopData = $wishlist_content; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>    
                                        <tr>
                                        <td class="padding_left_zero">
                                            <div class="wishlist_image">
                                                <a href="single_product.html">
                                                    <img src="<?php echo e(asset('storage/'.$item->options->image)); ?>" alt="<?php echo e($item->name); ?>">
                                                </a>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="wishlist_name">
                                                <a href="#" class="wishlist_name_link"><?php echo e($item->name); ?></a>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="wishlist_price">
                                                <span><?php echo e($item->price); ?> TK</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="wishlist_action">
                                                <a href="<?php echo e(route('single.product', $item->options->slug)); ?>"  class="wishlist_action_link">
                                                    Add To Cart
                                                </a>
                                            </div>
                                        </td>
                                        <td class="padding_right_zero" style="text-align: right;">
                                            <div class="wishlist_delete">
                                                <a  class="wishlist_delete_link" id="<?php echo e($item->rowId); ?>" onclick="removeWishList(this.id)">
                                                    <i class="fa-solid fa-trash"></i>
                                                </a>
                                            </div>
                                        </td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Wishlist Area End ============-->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/frontend/pages/wish_list.blade.php ENDPATH**/ ?>