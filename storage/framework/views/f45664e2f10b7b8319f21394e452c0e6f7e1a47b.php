

<?php $__env->startSection('content'); ?>
<div class="container-fluid mt-3">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Manage Happy Customers</h3>
                </div>
            </div>
        </div>
    </div>

    
    <?php if(session('success')): ?>
        <div class="alert alert-success mt-3">
            <?php echo e(session('success')); ?>

        </div>
    <?php endif; ?>

    
    <div class="card mt-3">
        <div class="card-header">Upload New Image</div>
        <div class="card-body">
            <form action="<?php echo e(route('admin.happy_customer.store')); ?>" method="POST" enctype="multipart/form-data">
                <?php echo csrf_field(); ?>
                <div class="form-group">
                    <label for="image">Choose Image</label>
                    <input type="file" name="image" class="form-control" required>
                    <?php $__errorArgs = ['image'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <div class="text-danger"><?php echo e($message); ?></div>
                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Upload</button>
            </form>
        </div>
    </div>

    
    <div class="card mt-4">
        <div class="card-header">Uploaded Images</div>
        <div class="card-body">
            <div class="row">
                <?php $__empty_1 = true; $__currentLoopData = $customers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $customer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                    <div class="col-md-3 mb-3 text-center">
                        <img src="<?php echo e(asset('storage/' . $customer->image)); ?>" alt="Customer Image" class="img-fluid img-thumbnail" style="height: 250px; object-fit: cover;">
                        
                        <a href="<?php echo e(route('admin.happy_customer.destroy', $customer->id)); ?>" 
                           class="btn btn-danger btn-sm mt-2" 
                           onclick="return confirm('Are you sure you want to delete this image?');">
                           Delete
                        </a>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                    <div class="col-12">
                        <p class="text-center">No images found. Please upload one.</p>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/admin/happy_customer/index.blade.php ENDPATH**/ ?>