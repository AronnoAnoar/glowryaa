<?php $__env->startSection('title','Contact-Us'); ?>
<?php $__env->startSection('content'); ?>
     <!--============ Contact Us Area Start ============-->
     <section class="contact_us_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title text-center">
                        <h2>Contact Us</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_padding_top">
            <div class="row gy-4 gx-3">
                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                    <div class="single_contact_us">
                        <div class="contact_us_title">
                            <i class="fa-solid fa-map-location-dot"></i>
                            <strong>Location</strong>
                        </div>
                        <div class="contact_us_location">
                            <p><?php echo $general_settings->invoice_address_details; ?></p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                    <div class="single_contact_us">
                        <div class="contact_us_title">
                            <i class="fa-solid fa-phone"></i>
                            <strong>Phone</strong>
                        </div>
                        <div class="contact_us_communication">
                            <ul>
                                <li>
                                    <a href="tel:<?php echo e($general_settings->header_contact_number); ?>"
                                        class="contact_us_communication_link"><?php echo e($general_settings->header_contact_number); ?></a>
                                </li>
                                <li>
                                    <a href="tel:<?php echo e($general_settings->header_contact_number_two); ?>"
                                        class="contact_us_communication_link"><?php echo e($general_settings->header_contact_number_two); ?></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                    <div class="single_contact_us">
                        <div class="contact_us_title">
                            <i class="fa-solid fa-envelope"></i>
                            <strong>Email</strong>
                        </div>
                        <div class="contact_us_communication">
                            <ul>
                                <li>
                                    <a href="mailto:info2@labtech.co.kr" class="contact_us_communication_link"><?php echo e($general_settings->header_email); ?></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_padding_top">
            <div class="row">
                <div class="col-xl-8 col-lg-9 col-md-10 col-sm-12 col-12 col-sm-12 m-auto">
                    <div class="contact_us_form">
                        <form action="<?php echo e(route('contact-us')); ?>" method="POST">
                            <?php echo csrf_field(); ?>
                            <div class="row">
                                <div class="col-sm-6 col-12 mb-2">
                                    <div class="contact_us_form_item">
                                        <input type="text" required name="name" value="<?php echo e(old('name')); ?>" placeholder="Name" required>
                                        <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span class="is_error"><?php echo e($message); ?></span>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-12 mb-2">
                                    <div class="contact_us_form_item">
                                        <input type="email" name="email"  value="<?php echo e(old('email')); ?>" placeholder="Email Address" required>
                                    </div>
                                        <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span class="is_error"><?php echo e($message); ?></span>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="col-sm-12 col-12 mb-2">
                                    <div class="contact_us_form_item">
                                        <input type="number" name="phone" required value="<?php echo e(old('phone')); ?>" placeholder="Phone Number">
                                        <?php $__errorArgs = ['phone'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span class="is_error"><?php echo e($message); ?></span>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-12 mb-2">
                                    <div class="contact_us_form_item">
                                        <textarea name="message" placeholder="Message" required></textarea>
                                        <?php $__errorArgs = ['message'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span class="is_error"><?php echo e($message); ?></span>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-12">
                                    <div class="contact_us_form_btn">
                                        <button type="submit" class="contact_us_form_btn_link">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Contact Us Area End ============-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rawcodei/glowryaa.com/resources/views/frontend/pages/contact_us.blade.php ENDPATH**/ ?>