<?php $__env->startSection('title','Profile-Edit'); ?>
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
                            <h3>Profile Edit</h3>
                        </div>
                        <div class="profile_form section_top_space">
                            <form action="<?php echo e(route('user.profile.update',Auth::guard('customer')->user()->id)); ?>" method="POST" enctype="multipart/form-data">
                                <?php echo csrf_field(); ?>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>Name</label>
                                            <input type="text" required name="name" value="<?php echo e(Auth::guard('customer')->user()->name); ?>" placeholder="name">
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
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>Email</label>
                                            <input type="email" name="email" value="<?php echo e(Auth::guard('customer')->user()->email); ?>" placeholder="email">
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
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>Phone</label>
                                            <input type="text" name="phone" value="<?php echo e(Auth::guard('customer')->user()->phone); ?>" required placeholder="phone">
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
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>City</label>
                                            <select class="checkout_form_select" name="city_id" id="">
                                                <option value="">--Select One--</option>
                                                <?php $__currentLoopData = $cities; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <option value="<?php echo e($city->id); ?>" <?php echo e(Auth::guard('customer')->user()->city_id == $city->id ? 'selected' : ''); ?> ><?php echo e($city->name); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                            <?php $__errorArgs = ['city_id'];
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
                                        <div class="profile_form_item">
                                            <label>Address</label>
                                            <input type="text" name="address" value="<?php echo e(Auth::guard('customer')->user()->address); ?>" placeholder="address">
                                            <?php $__errorArgs = ['address'];
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
                                        <div class="profile_form_item">
                                            <label>Image</label>
                                            <input type="file" name="image">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="profile_form_submit_btn">
                                            <button type="submit" class="profile_form_submit_btn_link">Update</button>
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
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/frontend/pages/user/profile_edit.blade.php ENDPATH**/ ?>