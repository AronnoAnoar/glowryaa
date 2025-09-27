<!--============ Footer Area Start ============-->
<footer class="footer_area">
    <div class="footer_top">
        <div class="container">
            <div class="row gy-4">
                <div class="col-xxl-4 col-xl-4 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="footer_content">
                        <div class="footer_logo">
                            <a href="<?php echo e(route('root')); ?>">
                                <img src="<?php echo e(asset('storage/' . $general_settings->logo)); ?>" alt="logo">
                            </a>
                        </div>
                        <div class="footer_description">
                            <p><?php echo $footer_settings->footer_description; ?></p>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-3 col-6">
                    <div class="footer_content">
                        <div class="footer_title">
                            <h4>Quick Links</h4>
                        </div>
                        <div class="footer_list">
                            <ul>
                                <li>
                                    <a href="<?php echo e(route('root')); ?>" class="footer_list_link">Home Page</a>
                                </li>
                                <li>
                                    <a href="<?php echo e(route('about')); ?>" class="footer_list_link">About Us</a>
                                </li>
                                <li>
                                    <a href="<?php echo e(route('contact-us')); ?>" class="footer_list_link">Contact Us</a>
                                </li>
                                <li>
                                    <a href="<?php echo e(route('login')); ?>" class="footer_list_link">User Login</a>
                                </li>
                                <li>
                                    <a href="<?php echo e(route('register')); ?>" class="footer_list_link">User Register</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-3 col-6">
                    <div class="footer_content">
                        <div class="footer_title">
                            <h4>Information</h4>
                        </div>
                        <div class="footer_list">
                            <ul>
                                <?php $__currentLoopData = $pages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>     
                                    <li>
                                        <a href="<?php echo e(route('custom.page', $page->slug)); ?>" class="footer_list_link"><?php echo e($page->name); ?></a>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-4 col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="footer_content">
                        <div class="footer_title">
                            <h4>Follow Us</h4>
                        </div>
                        <div class="footer_social">
                            <ul>
                                <li>
                                    <a href="<?php echo e($footer_settings->facebook_url); ?>" class="footer_social_link" target="_blank">
                                        <i class="fa-brands fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="<?php echo e($footer_settings->youtube_url); ?>" class="footer_social_link" target="_blank">
                                        <i class="fa-brands fa-youtube"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="<?php echo e($footer_settings->twitter_url); ?>" class="footer_social_link" target="_blank">
                                        <i class="fa-brands fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="<?php echo e($footer_settings->linkedin_url); ?>" class="footer_social_link" target="_blank">
                                        <i class="fa-brands fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <?php if(!empty($general_settings->facebook_page_iframe)): ?>
                            <div class="footer_iframe">
                                <iframe
                                    src="<?php echo e($general_settings->facebook_page_iframe); ?>"
                                    style="border:none;overflow:hidden"
                                    scrolling="no"
                                    frameborder="0"
                                    allowfullscreen="true"
                                    allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share">
                                </iframe>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_middle">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="footer_payment_method">
                        <img src="<?php echo e(asset('frontend')); ?>/images/payment_method/1.png" alt="payment-method">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_bottom">
        <div class="container">
            <div class="row">
                <div class="col-xxl-6 col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                    <div class="footer_copyright">
                        <p><?php echo e($footer_settings->copyright_info); ?></p>
                    </div>
                </div>
                <div class="col-xxl-6 col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                    <div class="footer_develop_by">
                        <p>Developed by</p>
                        <a href="http://rawcodeit.com/" target="_blank" class="footer_develop_by_link">RawCode IT Limited</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--============ Footer Area End ============--><?php /**PATH /home/rawcodei/glowryaa.com/resources/views/frontend/partials/footer.blade.php ENDPATH**/ ?>