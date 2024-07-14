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

            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="row" data-select2-id="select2-data-9-dj9p">
                                <div class="col-12 col-md-6" data-select2-id="select2-data-8-7l60">
                                    <form action="/admin/enrollments/store" method="Post" data-select2-id="select2-data-7-b82u">
                                        <?php echo e(csrf_field()); ?>

                                        <div class="form-group" data-select2-id="select2-data-19-j9q4">
                                            <label class="input-label">Course</label>
                                            <select name="webinar_id" class="form-control search-webinar-select2 select2-hidden-accessible" data-placeholder="Search classes" data-select2-id="select2-data-3-dl6q" tabindex="-1" aria-hidden="true">
                                            </select>
                                        </div>
                                        <div class="form-group" data-select2-id="select2-data-6-yuvt">
                                            <label class="input-label d-block">User</label>
                                            <select name="user_id" class="form-control search-user-select2 select2-hidden-accessible" data-placeholder="Search user" data-select2-id="select2-data-1-o95a" tabindex="-1" aria-hidden="true">
                                            </select>
                                        </div>
                                        <div class=" mt-4">
                                            <button type="submit" class="btn btn-primary">Add</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>

<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wonderit/public_html/aston/code/resources/views/admin/enrollment/add_student_to_a_class.blade.php ENDPATH**/ ?>