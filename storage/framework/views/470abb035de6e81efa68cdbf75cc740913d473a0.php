<?php $__env->startSection('title','Login OTP'); ?>
<?php $__env->startSection('content'); ?>
     <!--============ Auth Area Start ============-->
     <section class="auth_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-4 col-xl-5 col-lg-6 col-md-8 col-sm-10 col-12 m-auto">
                    <div class="auth_wrap">
                        <div class="auth_title">
                            <h3>Login With Mobile Number</h3>
                        </div>

                        <?php if(session()->has('message')): ?>
                            <div class="alert alert-success">
                                <?php echo e(session()->get('message')); ?>

                            </div>
                        <?php endif; ?>
                        
                        <form  id="send_otp_form">
                            <div class="auth_form">
                                <div class="auth_item">
                                    <label>Mobile Number <span class="required_r">*</span></label>
                                    <input type="text" name="mobile_no" placeholder="01xxxxxxxxx">
                                    <?php $__errorArgs = ['mobile_no'];
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
                                <div class="auth_sub_btn">
                                    <button id="send_otp_form_submit"
                          class="auth_sub_btn_link">Send</button>
                                </div>
                                <div class="auth_link_page">
                                    <a href="<?php echo e(route('login')); ?>" class="auth_link_page_link">Login with password</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Auth Area End ============-->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rawcodei/glowryaa.com/resources/views/frontend/pages/auth/send_otp.blade.php ENDPATH**/ ?>