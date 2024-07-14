 

<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/vendors/daterangepicker/daterangepicker.min.css">
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <section class="section">

        
        

        
        
        

        
        <section class="mt-35">
        <div class="d-flex align-items-start align-items-md-center justify-content-between flex-column flex-md-row">
            <h2 class="section-title">Instruction List</h2>
        </div>

        <?php if($course_instruction->count() > 0): ?>

            <div class="panel-section-card py-20 px-25 mt-20">
                <div class="row">
                    <div class="col-12 ">
                        <div class="table-responsive">
                            <table class="table text-center custom-table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th class="text-center">Name</th>
                                    <th class="text-center">Instructor</th>
                                    <th class="text-center">Course</th>
                                    <th class="text-center">Date</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                <?php $__currentLoopData = $course_instruction; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ci): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td class="text-left">
                                            <span class="d-block font-16 font-weight-500 text-dark-blue"><?php echo e($ci->id); ?></span>
                                        </td>

                                        <td class="align-middle">
                                            <span class="font-weight-500"><?php echo e($ci->name); ?></span>
                                        </td>

                                        <td class="align-middle">
                                            <span class="font-weight-500"><?php echo e($ci->teacher_id!=null? $ci->teacher->full_name:""); ?></span>
                                        </td>

                                        <td class="align-middle">
                                            <span class="font-weight-500"><?php echo e($ci->course_id!=null? $ci->webinar->slug:""); ?></span>
                                        </td>

                                        <td class="align-middle">
                                            <span class="font-weight-500"><?php echo e(dateTimeFormat($ci->created_at, 'j M Y')); ?></span>
                                        </td>

                                        <td class="align-middle">
                                            <span>Active</span>
                                        </td>

                                        <td class="align-middle">
                                             <a href="<?php echo e(asset($ci->attach)); ?>" target="_blank" class="btn btn-sm text-primary" data-toggle="tooltip" title="Download">
                                                Download
                                            </a>
                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            
        <?php else: ?>
            <?php echo $__env->make(getTemplate() . '.includes.no-result',[
                'file_name' => 'meeting.png',
                'title' => trans('update.my_assignments_no_result'),
                'hint' => nl2br(trans('update.my_assignments_no_result_hint_student')),
            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php endif; ?>
    </section>


        
    </section>

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>

<?php $__env->stopPush(); ?>

<?php echo $__env->make(getTemplate() .'.panel.layouts.panel_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\htdocs\code Backup-09-08-2022\code\resources\views/web/default/panel/course_instruction/list.blade.php ENDPATH**/ ?>