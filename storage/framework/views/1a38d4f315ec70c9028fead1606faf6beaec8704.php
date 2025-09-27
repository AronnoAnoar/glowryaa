<?php $__env->startSection('title','Verify OTP'); ?>
<?php $__env->startSection('content'); ?>
     <!--============ Auth Area Start ============-->
     <section class="auth_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-4 col-xl-5 col-lg-6 col-md-8 col-sm-10 col-12 m-auto">
                    <div class="auth_wrap">
                        <div class="auth_title">
                            <h3>Verify OTP</h3>
                        </div>

                        <?php if(session()->has('success')): ?>
                            <div class="alert alert-success">
                                <?php echo e(session()->get('success')); ?>

                            </div>
                        <?php endif; ?>

                        <?php if(session()->has('error')): ?>
                            <div class="alert alert-danger">
                                <?php echo e(session()->get('error')); ?>

                            </div>
                        <?php endif; ?>
                        <input type="hidden" id="otp_mobile_no" value="<?php echo e($mobile_no); ?>">
                       
                        <form id="otp_varify_form">
                            <div class="auth_form">
                                
                                <div class="auth_item">
                                    <label>OTP <span class="required_r">*</span></label>
                                    
                                <p id="show_otp_timer"><?php echo e($otp_time); ?>s</p>
                                    <input type="text" name="code" placeholder="01xx">
                                    <?php $__errorArgs = ['code'];
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
                                    <button id="otp_varify_form_submit" class="auth_sub_btn_link">Send Code</button>
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
<?php $__env->startSection('scripts'); ?>
<script>
    $(document).ready(function() {
        let otp_mobile_no = $('#otp_mobile_no').val();
        let intervalId;
        intervalId = setInterval(DecrementCounter, 1000);

        function DecrementCounter() {
            let counterValue = parseInt($("#show_otp_timer").text());
            console.log(counterValue);
            if (counterValue > 0) {
                counterValue--;
                $("#show_otp_timer").html(counterValue+'s');
            } else {
                clearInterval(intervalId); // Stop the interval when counter reaches 0
                ClearSessionData(otp_mobile_no);
                setTimeout(function(){
                    location.href = '/login-otp';
                }, 2000);
                console.log('end');
            }
        }

        function ClearSessionData(otp_mobile_no){
            console.log('call clear session data');
            $.ajax({
                url: '/clear/session-otp/'+otp_mobile_no,
                type:'GET',
                datatype: 'json',
                success: function(res){
                    console.log(res);
                }
            });
        }


    });
    </script>    
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/alihama1/glowryaa.com/resources/views/frontend/pages/auth/verify_otp.blade.php ENDPATH**/ ?>