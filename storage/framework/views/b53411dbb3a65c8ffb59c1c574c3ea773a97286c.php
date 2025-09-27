<?php $__env->startSection('title','LogIn'); ?>
<?php $__env->startSection('content'); ?>
     <!--============ Auth Area Start ============-->
     <section class="auth_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-4 col-xl-5 col-lg-6 col-md-8 col-sm-10 col-12 m-auto">
                    <div class="auth_wrap">
                        <div class="auth_title">
                            <h3>Welcome Back</h3>
                        </div>
                        <form action="<?php echo e(route('login')); ?>" method="POST">
                            <?php echo csrf_field(); ?>
                            <div class="auth_form">
                                <div class="auth_item">
                                    <label>Mobile No <span class="required_r">*</span></label>
                                    <input type="text" name="phone" value="<?php echo e(old('phone')); ?>" placeholder="01xxxxxxxxx">
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
                                <div class="auth_item">
                                    <label>Password <span class="required_r">*</span></label>
                                    <input type="password" name="password" value="<?php echo e(old('password')); ?>" placeholder="password">
                                    <?php $__errorArgs = ['password'];
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
                                    <button type="submit" class="auth_sub_btn_link">Login</button>
                                </div>
                                <div class="auth_sub_btn_two">
                                    <a href="<?php echo e(route('login.otp')); ?>" class="auth_sub_btn_two_link">Login With OTP</a>
                                </div>
                                <div class="auth_link_page">
                                    <p>Don't have an account?</p>
                                    <a href="<?php echo e(route('register')); ?>" class="auth_link_page_link">Register here</a>
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
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rawcodei/glowryaa.com/resources/views/frontend/pages/auth/login.blade.php ENDPATH**/ ?>