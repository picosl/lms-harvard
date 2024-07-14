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

        
        <div class="row">
            <div class="col-12 col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped font-14" id="datatable-details">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th class="text-middle">Batch Name</th>
                                        <th class="text-middle">Course</th>
                                        <th class="text-middle">Start Date</th>
                                        <th class="text-middle">End Date</th>
                                        <th width="120">Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $__currentLoopData = $batch_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td>
                                                <span class="d-block font-16 font-weight-500 text-dark-blue"><?php echo e($row->id); ?></span>
                                            </td>

                                            <td>
                                                <span class="font-weight-500"><?php echo e($row->batch_name); ?></span>
                                            </td>
                                            
                                            <td>
                                                <span class="font-weight-500"><?php echo e($row->course->slug??""); ?></span>
                                            </td>

                                            <td>
                                                <?php echo e(date('d M Y', strtotime($row->start_date))); ?>

                                            </td>
                                            
                                            <td>
                                                <?php echo e(date('d M Y', strtotime($row->end_date))); ?>

                                            </td>

                                            <td class="align-middle text-right">
                                                
                                                <a href="/admin/batchs/<?php echo e($row->id); ?>/edit"><i class="fa fa-edit" aria-hidden="true"></i></a>
                                                <?php echo $__env->make('admin.includes.delete_button',['url' => '/admin/batchs/'.$row->id.'/delete' , 'btnClass' => ''], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                            </td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>

<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wlms/public_html/iiet.wlms.com.au/iiet/resources/views/admin/batchs/lists.blade.php ENDPATH**/ ?>