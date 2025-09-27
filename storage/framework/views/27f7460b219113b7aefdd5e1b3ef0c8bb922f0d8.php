
<?php $__env->startSection('title','Check Out'); ?>
<?php $__env->startSection('content'); ?>
    <!--============ Checkout Area Start ============-->
    <section class="checkout_area section_padding">
       
        <form id="order_form">
            <div class="container">
                <div class="row gy-4">
                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-12 col-12">
                        <div class="checkout_form">
                                <div class="checkout_form_title">
                                    <h3>Please Order Now</h3>
                                </div>
                                <div class="checkout_form_group">
                                    <label>Full Name <span class="text-danger">*</span></label>
                                    <input type="text" name="name" value="<?php echo e(old('name')); ?>" required  placeholder="Your Name">
                                    <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span style="color:red"><?php echo e($message); ?></span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="checkout_form_group">
                                    <label>Mobile Number <span class="text-danger">*</span></label>
                                    <input type="text"  name="mobile_no" maxlength="11" minlength="11" required value="<?php echo e(old('mobile_no')); ?>" placeholder="01xxxxxxxxx">
                                    <?php $__errorArgs = ['mobile_no'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span style="color:red"><?php echo e($message); ?></span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <input type="hidden" id="set_city_id" value="0" name="city_id" >
                                <div class="checkout_form_group">
                                    <label>District <span class="text-danger">*</span></label>
                                    <input type="hidden" id="setInputShippingCharge" name="shipping_charge">
                                    <select id="select_area" onchange="shippingCharge( this.options[this.selectedIndex].id, this.value)" required class="checkout_form_select">
                                        <option value="">Select District</option>
                                        <?php $__currentLoopData = $cities; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($city->delivery_charge); ?>" id="<?php echo e($city->id); ?>"   ><?php echo e($city->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>    
                                    </select>
                                    <?php $__errorArgs = ['shipping_charge_id'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span style="color:red"><?php echo e($message); ?></span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="checkout_form_group">
                                    <label>Upazila <span class="text-danger">*</span></label>
                                    <select id="subcity" name="subcity_id" required class="checkout_form_select">
                                        <option value="">Select Upazila</option>
                                    </select>
                                    <?php $__errorArgs = ['subcity'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span style="color:red"><?php echo e($message); ?></span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                
                                <div class="checkout_form_group">
                                    <label>Full Address <span class="text-danger">*</span></label>
                                    <textarea name="address" required placeholder="Village,union,thana,district"><?php echo e(old('address')); ?></textarea>
                                    <?php $__errorArgs = ['address'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span style="color:red"><?php echo e($message); ?></span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="checkout_form_btn">
                                    <button  id="order_form_submit" class="checkout_form_btn_link">Order Submit</button>
                                </div>
                           
                        </div>
                    </div>
                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-12 col-12">
                        <div class="checkout_order_summary">
                            <div class="order_summary_title">
                                <h3>Order Summary</h3>
                            </div>
                            <div class="table-responsive order_summary_table">
                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th class="checkout_product_td_left">Product</th>
                                            <th>Quantity</th>
                                            <th>Price</th>
                                            <th class="checkout_product_th_total_price">Total Price</th>
                                            <th class="checkout_product_td_right">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="check_out_carts">
                                       
                                    </tbody>
                                </table>
                            </div>
                            <div >
                                <div class="price_summary_table_cell">
                                    <strong>Sub Total :</strong>
                                    <input id="cart_sub_total" type="hidden" value="<?php echo e($cart_sub_total); ?>">
                                    <strong  ><?php echo e($cart_sub_total); ?> TK</strong>
                                </div>
                                <div class="price_summary_table_cell">
                                    <strong>Shipping Charge :</strong>
                                    <strong id="show_shipping_charge">00 TK</strong>
                                </div>
                                <div class="price_summary_table_cell">
                                    <strong>Discount Amount :</strong>
                                    <strong id="show_discount">00 TK</strong>
                                </div>
                                <div class="price_summary_table_cell">
                                    <strong >Payable Amount :</strong>
                                    <strong id="show_payable">00 TK</strong>
                                </div>
                            </div>
                            <div class="apply_coupon_group">
                                <label>Apply Coupon Here</label>
                                <div class="apply_coupon_item">
                                    <input type="text" id="coupon_name" value="" name="coupon">
                                    <button type="button" id="coupon_apply" class="apply_coupon_item_link">Apply</button>
                                </div>
                                <span id="coupon_valid" style="color: green;display:none">Congratulations. This Coupon is Valid.</span>
                                <span id="coupon_invalid" style="color: red;display:none">Oops Sorry!. This Coupon is Invalid.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        
    </section>
    <!--============ Checkout Area End ============-->

<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
        // Code to execute when the DOM is fully loaded
        function handleWindowLoad() {
            console.log('Window loading has ended.');
            gtmCartItemsEvent('begin_checkout');
            window.removeEventListener('load', handleWindowLoad);
        }

        window.addEventListener('load', handleWindowLoad, { once: true });

        // Other JavaScript functionality
    });
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rawcodei/glowryaa.com/resources/views/frontend/pages/check_out.blade.php ENDPATH**/ ?>