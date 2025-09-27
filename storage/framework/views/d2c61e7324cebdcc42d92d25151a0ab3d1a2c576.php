<div class="profile_left_side">
    <div class="profile_pic_content">
        <div class="profile_pic">
            <?php if(Auth::guard('customer')->user()->image != null): ?>
                <img src="<?php echo e(asset('storage/'.Auth::guard('customer')->user()->image)); ?>" alt="user">
            <?php else: ?>
                <img src="<?php echo e(asset('frontend')); ?>/images/user/1.png" alt="<?php echo e(Auth::guard('customer')->user()->name); ?>">
            <?php endif; ?>
        </div>
        <div class="profile_name">
            <h5><?php echo e(Auth::guard('customer')->user()->name); ?></h5>
        </div>
    </div>
    <div class="profile_menu_list">
        <ul>
            <li>
                <a href="<?php echo e(route('user.dashboard')); ?>" class="profile_menu_list_link">
                    <i class="fa-solid fa-table-cells-large"></i>
                    Dashboard
                </a>
            </li>
            <li>
                <a href="<?php echo e(route('user.profile')); ?>" class="profile_menu_list_link">
                    <i class="fa-regular fa-user"></i>
                    Profile
                </a>
            </li>
            <li>
                <a href="<?php echo e(route('user.profile.edit')); ?>" class="profile_menu_list_link">
                    <i class="fa-regular fa-pen-to-square"></i>
                    Edit Profile
                </a>
            </li>
            <li>
                <a href="<?php echo e(route('user.change.password')); ?>" class="profile_menu_list_link">
                    <i class="fa-solid fa-key"></i>
                    Change Password
                </a>
            </li>
            <li>
                <a href="<?php echo e(route('user.logout')); ?>" class="profile_menu_list_link">
                    <i class="fa-solid fa-right-from-bracket"></i>
                    Logout
                </a>
            </li>
        </ul>
    </div>
</div><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/frontend/components/user_dashboard.blade.php ENDPATH**/ ?>