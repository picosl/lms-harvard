<?php $__env->startSection('content'); ?>
    <section class="section">
        <div class="section-header">
            <h1><?php echo e($pageTitle); ?></h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="/admin/"><?php echo e(trans('admin/main.dashboard')); ?></a>
                </div>
                <div class="breadcrumb-item"><?php echo e($pageTitle); ?></div>
            </div>
        </div>

		<div class="section-body">
            <h2 class="section-title">Control Everything</h2>
            <p class="section-lead">
                You can change all of the parameters and variables using the following cards.
            </p>

            <div class="row">
                    <div class="col-lg-6">
                        <div class="card card-large-icons">
                            <div class="card-icon bg-primary text-white">
                                <i class="fas fa-cog"></i>
                            </div>
                            <div class="card-body">
                                <h4>General</h4>
                                <p>Change website title, logo, language, RTL, social accounts, design styles, preloading.</p>
                                <a href="/admin/settings/general" class="card-cta">Change Settings<i class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                
                    
                
                    <div class="col-lg-6">
                        <div class="card card-large-icons">
                            <div class="card-icon bg-primary text-white">
                                <i class="fas fa-wrench"></i>
                            </div>
                            <div class="card-body">
                                <h4>Personalization</h4>
                                <p>Change page backgrounds, home sections, hero styles, images &amp; texts.</p>
                                <a href="/admin/settings/personalization" class="card-cta">Change Settings<i class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                
                    
                
                    
                
                    
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>

<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wlms/harvard.wlms.com.au/harvard/resources/views/admin/settings/index.blade.php ENDPATH**/ ?>