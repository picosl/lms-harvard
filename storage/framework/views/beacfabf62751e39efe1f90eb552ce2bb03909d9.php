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
                    <div class="card-header">
                        <a href="/admin/enrollments/export" class="btn btn-primary">Export Excel</a>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped font-14" id="datatable-details">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th class="text-middle">Name</th>
                                        <th class="text-middle">Instructor</th>
                                        <th class="text-middle">Course</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                        <th width="120">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__currentLoopData = $course_instruction; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ci): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td>
                                                <span class="d-block font-16 font-weight-500 text-dark-blue"><?php echo e($ci->id); ?></span>
                                            </td>

                                            <td>
                                                <span class="font-weight-500"><?php echo e($ci->name); ?></span>
                                            </td>

                                            <td>
                                                <span class="font-weight-500"><?php echo e($ci->teacher_id!=null? $ci->teacher->full_name:""); ?></span>
                                            </td>

                                            <td>
                                                <span><?php echo e($ci->course_id!=null? $ci->webinar->slug:""); ?></span>
                                            </td>

                                            <td>
                                                <?php echo e(date('d M Y i:s', $ci->created_at)); ?>

                                            </td>

                                            <td>
                                                <span class="text-success">Active</span>
                                            </td>

                                            <td class="align-middle text-right">
                                                
                                                <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_quizzes_results')): ?>
                                                    <a href="<?php echo e(asset($ci->attach)); ?>" target="_blank" class="btn-transparent btn-sm text-primary" data-toggle="tooltip" title="Download">
                                                        <i class="fa fa-download fa-1x"></i>
                                                    </a>
                                                <?php endif; ?>

                                                <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_quizzes_edit')): ?>
                                                    <a href="/admin/course_instruction/edit/<?php echo e($ci->id); ?>" class="btn-transparent btn-sm text-primary" data-toggle="tooltip" data-placement="top" title="<?php echo e(trans('admin/main.edit')); ?>">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                <?php endif; ?>

                                                <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_quizzes_delete')): ?>
                                                    <?php echo $__env->make('admin.includes.delete_button',['url' => '/admin/course_instruction/'.$ci->id.'/delete' , 'btnClass' => 'btn-sm'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                <?php endif; ?>

                                                
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

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\htdocs\code Backup-09-08-2022\code\resources\views/admin/course_instruction/list.blade.php ENDPATH**/ ?>