<?php $__env->startSection('title', 'Cart View'); ?>
<?php $__env->startSection('content'); ?>
    <!--============ View Cart Area Start ============-->
    <section class="view_cart_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title custom_section_title text-center">
                        <h2>View Cart</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_padding_top">
            <div class="row gy-4">
                <div class="col-xxl-9 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="view_cart_content">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="padding_left_zero">Image</th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th class="padding_right_zero" style="text-align: right;">Remove</th>
                                    </tr>
                                </thead>
                                <tbody id="cart_view_carts">
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                </div>
                <div class="col-xxl-3 col-xl-4 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="product_shipping">

                        <div class="view_cart_subtotal">
                            <strong>Subtotal</strong>
                            <strong class="subTotal"></strong>
                        </div>

                        <div class="view_cart_shipping_content">
                            <div class="product_shipping-title">
                                <h6>Calculate Shipping</h6>
                            </div>

                            <div class="shipping_option_group">
                                <?php $__currentLoopData = $delivery_charges; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $delivery_charge): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>    
                                    <div class="shipping_option_item">
                                        <div class="shipping_option_item_input">
                                            <input id="<?php echo e($delivery_charge->id); ?>" type="radio" onclick="shippingCharge(this.id)" name="shipping_charge">
                                        </div>
                                        <label for="inside_dhaka">
                                            <?php echo e($delivery_charge->name); ?>:
                                            <span><?php echo e($delivery_charge->delivery_charge); ?> TK</span>
                                        </label>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                
                            </div>
                        </div>

                        <div class="view_cart_total">
                            <strong>Total</strong>
                            <strong class="total_amount">0 TK</strong>
                        </div>

                        <div class="view_cart_process_checkout">
                            
                            <a href="<?php echo e(route('checkout.index')); ?>" class="view_cart_process_checkout_link"  tabindex="-1" role="button" aria-disabled="true">Check Out</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ View Cart Area End ============-->

<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
<script>
      document.addEventListener('DOMContentLoaded', function() {
        // Code to execute when the DOM is fully loaded
        function handleWindowLoad() {
            console.log('call view_cart event');
            gtmCartItemsEvent('view_cart');
            window.removeEventListener('load', handleWindowLoad);
        }
        window.addEventListener('load', handleWindowLoad, { once: true });
    });
    
</script>
    
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/frontend/pages/cart_view.blade.php ENDPATH**/ ?>