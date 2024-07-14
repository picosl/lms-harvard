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
            <section class="card">
                <div class="card-body">
                    <form method="get" class="mb-0" data-select2-id="select2-data-8-fhsx">
                        <div class="row">
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Search</label>
                                <input type="text" class="form-control" name="item_title" value="">
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Start Date</label>
                                <div class="input-group">
                                    <input type="date" id="fsdate" class="text-center form-control" name="from" value="" placeholder="Start Date">
                                </div>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">End Date</label>
                                <div class="input-group">
                                    <input type="date" id="lsdate" class="text-center form-control" name="to" value="" placeholder="End Date">
                                </div>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Status</label>
                                <select name="status" data-plugin-selecttwo="" class="form-control populate">
                                    <option value="">All Statuses</option>
                                    <option value="success">Successful</option>
                                    <option value="refund">Refund</option>
                                    <option value="blocked">Access Blocked</option>
                                </select>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Course</label>
                                <select name="webinar_ids[]" multiple="" class="form-control search-webinar-select2 select2-hidden-accessible" data-placeholder="Search classes" data-select2-id="select2-data-5-4cze" tabindex="-1" aria-hidden="true">
                                </select>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Instructor</label>
                                <select name="teacher_ids[]" multiple="" data-search-option="just_teacher_role" class="form-control search-user-select2 select2-hidden-accessible" data-placeholder="Select an instructor" data-select2-id="select2-data-1-0670" tabindex="-1" aria-hidden="true">
                                </select>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Student</label>
                                <select name="student_ids[]" multiple="" data-search-option="just_student_role" class="form-control search-user-select2 select2-hidden-accessible" data-placeholder="Select a student" data-select2-id="select2-data-3-tvpg" tabindex="-1" aria-hidden="true">
                                </select>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group mt-1">
                                <label class="input-label mb-4"> </label>
                                <input type="submit" class="text-center btn btn-primary w-100" value="Show Results">
                            </div>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
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
                                        <th class="text-middle">Student</th>
                                        <th class="text-middle">Instructor</th>
                                        <th class="text-middle">Item</th>
                                        <th>Type</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                        <th width="120">Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $__currentLoopData = $sales; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sale): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td>
                                                <span class="d-block font-16 font-weight-500 text-dark-blue"><?php echo e($sale->id); ?></span>
                                            </td>

                                            <td>
                                                <span class="font-weight-500"><?php echo e($sale->buyer!=null? $sale->buyer->full_name:""); ?></span>
                                            </td>

                                            <td>
                                                <span class="font-weight-500"><?php echo e($sale->item_seller); ?></span>
                                            </td>

                                            <td>
                                                <span><?php echo e($sale->item_title); ?></span>
                                            </td>

                                            <td>
                                                <?php echo e($sale->type); ?>

                                            </td>

                                            <td>
                                                <?php echo e(date('d M Y i:s', $sale->created_at)); ?>

                                            </td>

                                            <td>
                                                <span class="text-success">Successful</span>
                                            </td>

                                            <td class="align-middle text-right">
                                                
                                                <a href="/admin/financial/sales/<?php echo e($sale->id); ?>/invoice" target="_blank" title="Invoice"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                <button class="btn-transparent text-primary trigger--fire-modal-1" data-confirm="Are you sure? | Do you want to continue?" data-confirm-href="/admin/enrollments/<?php echo e($sale->id); ?>/block-access" data-confirm-text-yes="Yes" data-confirm-text-cancel="Cancel" data-toggle="tooltip" data-placement="top" title="" data-original-title="Block Access">
                                                    <i class="fa fa-times-circle" aria-hidden="true"></i>
                                                </button>
                                                
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

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\htdocs\code Backup-09-08-2022\code\resources\views/admin/enrollment/history.blade.php ENDPATH**/ ?>