<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>"/>
    <link rel="icon" />

    <?php echo $__env->make('admin.partials.css', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>


<body class="hold-transition skin-blue sidebar-mini">
    <div id="app" class="wrapper">
        <?php if(session()->has('admin')): ?>
            <?php echo $__env->make('admin.partials.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php endif; ?>
        <router-view></router-view>
        <vue-progress-bar></vue-progress-bar>

    </div>
    <?php if(session()->has('admin')): ?>
        <?php echo $__env->make('admin.partials.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
    <?php echo $__env->make('admin.partials.js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <script src="<?php echo e(asset('js/admin.js')); ?>" type="text/javascript"></script>

    <script>
        //set some global js variable
        window.Permissions = [];

        <?php if(session()->has('admin')): ?>
            window.Permissions = <?php echo json_encode(App\Models\Admin::adminPermission(), true); ?>;
        <?php endif; ?>
    </script>

</body>

</html>
<?php /**PATH /home/hurayaac/glowryaa.com/resources/views/admin/master.blade.php ENDPATH**/ ?>