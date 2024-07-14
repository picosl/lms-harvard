<?php $__env->startSection('content'); ?>
    <?php if($activeSubscribe): ?>
        <section>
            <h2 class="section-title"><?php echo e(trans('financial.my_active_plan')); ?></h2>

            <div class="activities-container mt-25 p-20 p-lg-35">
                <div class="row">
                    <div class="col-4 d-flex align-items-center justify-content-center">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="/assets/default/img/activity/webinars.svg" width="64" height="64" alt="">
                            <strong class="font-30 font-weight-bold mt-5"><?php echo e($activeSubscribe->title); ?></strong>
                            <span class="font-16 text-gray font-weight-500"><?php echo e(trans('financial.active_plan')); ?></span>
                        </div>
                    </div>

                    <div class="col-4 d-flex align-items-center justify-content-center">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="/assets/default/img/activity/53.svg" width="64" height="64" alt="">
                            <strong class="font-30 text-dark-blue font-weight-bold mt-5">
                                <?php if($activeSubscribe->infinite_use): ?>
                                    <?php echo e(trans('update.unlimited')); ?>

                                <?php else: ?>
                                    <?php echo e($activeSubscribe->usable_count - $activeSubscribe->used_count); ?>

                                <?php endif; ?>
                            </strong>
                            <span class="font-16 text-gray font-weight-500"><?php echo e(trans('financial.remained_downloads')); ?></span>
                        </div>
                    </div>

                    <div class="col-4 d-flex align-items-center justify-content-center">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="/assets/default/img/activity/54.svg" width="64" height="64" alt="">
                            <strong class="font-30 text-dark-blue text-dark-blue font-weight-bold mt-5"><?php echo e($activeSubscribe->days - $dayOfUse); ?></strong>
                            <span class="font-16 text-gray font-weight-500"><?php echo e(trans('financial.days_remained')); ?></span>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    <?php else: ?>
        <?php echo $__env->make(getTemplate() . '.includes.no-result',[
           'file_name' => 'subcribe.png',
           'title' => trans('financial.subcribe_no_result'),
           'hint' => nl2br(trans('financial.subcribe_no_result_hint')),
       ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>

    <section class="mt-30">
        <h2 class="section-title"><?php echo e(trans('financial.select_a_subscribe_plan')); ?></h2>

        <div class="row mt-15">

            <?php $__currentLoopData = $subscribes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subscribe): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-12 col-sm-6 col-lg-3 mt-15">
                    <div class="subscribe-plan position-relative bg-white d-flex flex-column align-items-center rounded-sm shadow pt-50 pb-20 px-20">
                        <?php if($subscribe->is_popular): ?>
                            <span class="badge badge-primary badge-popular px-15 py-5"><?php echo e(trans('panel.popular')); ?></span>
                        <?php endif; ?>

                        <div class="plan-icon">
                            <img src="<?php echo e($subscribe->icon); ?>" class="img-cover" alt="">
                        </div>

                        <h3 class="mt-20 font-30 text-secondary"><?php echo e($subscribe->title); ?></h3>
                        <p class="font-weight-500 font-14 text-gray mt-10"><?php echo e($subscribe->description); ?></p>

                        <div class="d-flex align-items-start text-primary mt-30">
                            <span class="font-36 line-height-1"><?php echo e(addCurrencyToPrice($subscribe->price)); ?></span>
                        </div>

                        <ul class="mt-20 plan-feature">
                            <li class="mt-10"><?php echo e($subscribe->days); ?> <?php echo e(trans('financial.days_of_subscription')); ?></li>
                            <li class="mt-10">
                                <?php if($subscribe->infinite_use): ?>
                                    <?php echo e(trans('update.unlimited')); ?>

                                <?php else: ?>
                                    <?php echo e($subscribe->usable_count); ?>

                                <?php endif; ?>
                                <span class="ml-5"><?php echo e(trans('update.subscribes')); ?></span>
                            </li>
                        </ul>
                        <form action="/panel/financial/pay-subscribes" method="post" class="btn-block">
                            <?php echo e(csrf_field()); ?>

                            <input name="amount" value="<?php echo e($subscribe->price); ?>" type="hidden">
                            <input name="id" value="<?php echo e($subscribe->id); ?>" type="hidden">
                            <button type="submit" class="btn btn-primary btn-block mt-50"><?php echo e(trans('update.purchase')); ?></button>
                        </form>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/js/panel/financial/subscribes.min.js"></script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make(getTemplate() .'.panel.layouts.panel_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\htdocs\code Backup-09-08-2022\code\resources\views/web/default/panel/financial/subscribes.blade.php ENDPATH**/ ?>