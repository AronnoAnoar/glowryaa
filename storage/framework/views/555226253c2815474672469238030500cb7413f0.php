<?php $__env->startSection('title','Change-password'); ?>
<?php $__env->startSection('content'); ?>
     <!--============ Profile Area Start ============-->
     <section class="profile_area section_padding">
        <div class="container">
            <div class="row gy-4">
                <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                    <?php echo $__env->make('frontend.components.user_dashboard', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
                <div class="col-xxl-7 col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                    <div class="profile_right_side">
                        <div class="profile_heading text-center">
                            <h3>Change password</h3>
                        </div>
                        <div class="profile_form section_top_space">
                            <form action="<?php echo e(route('user.update.password',Auth::guard('customer')->user()->id)); ?>" method="POST">
                                <?php echo csrf_field(); ?>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>New Password</label>
                                            <input type="password" name="password" placeholder="Password">
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
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>Confirm password</label>
                                            <input type="password" name="confirm_password" placeholder="Confirm password">
                                            <?php $__errorArgs = ['confirm_password'];
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
                                    <div class="col-lg-12">
                                        <div class="profile_form_submit_btn">
                                            <button type="submit" class="profile_form_submit_btn_link">Save Change</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Profile Area End ============-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/frontend/pages/user/change_password.blade.php ENDPATH**/ ?>