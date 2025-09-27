<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> Reseller Panel </title>
    <?php echo $__env->make('admin.partials.css', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


</head>

<body  class="hold-transition skin-blue sidebar-mini">
    <div id="app" class="wrapper">

      <?php if(session()->has('reseller')): ?>
         <?php echo $__env->make('reseller.partials.navbar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
      <?php endif; ?>
      <!-- Left side column. contains the logo and sidebar -->

      <?php if(session()->has('reseller')): ?>
         <?php echo $__env->make('reseller.partials.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
      <?php endif; ?>

      <!-- Content Wrapper. Contains page content -->
            <router-view>  </router-view>
            <vue-progress-bar> <vue-progress-bar>

    </div>
    <?php if(session()->has('reseller')): ?>
    <?php echo $__env->make('reseller.partials.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
    <!-- ./wrapper -->
    <?php echo $__env->make('reseller.partials.js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <script src="<?php echo e(asset('/js/admin.js')); ?>" type="text/javascript"></script>

    </body>
    </html>
<?php /**PATH /home/hurayaac/glowryaa.com/resources/views/reseller/app.blade.php ENDPATH**/ ?>