<?php $__env->startPush('styles_top'); ?>

<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <section>
        <h2 class="section-title"><?php echo e(trans('panel.my_activity')); ?></h2>

        <div class="activities-container mt-25 p-20 p-lg-35">
            <div class="row">
                <div class="col-4 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/webinars.svg" width="64" height="64" alt="">
                        <strong class="font-30 text-dark-blue font-weight-bold mt-5"><?php echo e($purchasedCount); ?></strong>
                        <span class="font-16 text-gray font-weight-500">Enrolled</span>
                    </div>
                </div>

                <div class="col-4 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/hours.svg" width="64" height="64" alt="">
                        <strong class="font-30 text-dark-blue font-weight-bold mt-5"><?php echo e(convertMinutesToHourAndMinute($hours)); ?></strong>
                        <span class="font-16 text-gray font-weight-500"><?php echo e(trans('home.hours')); ?></span>
                    </div>
                </div>

                <div class="col-4 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/upcoming.svg" width="64" height="64" alt="">
                        <strong class="font-30 text-dark-blue font-weight-bold mt-5"><?php echo e($upComing); ?></strong>
                        <span class="font-16 text-gray font-weight-500"><?php echo e(trans('panel.upcoming')); ?></span>
                    </div>
                </div>

            </div>
        </div>
        
    </section>

    <section class="mt-25">
        <div class="d-flex align-items-start align-items-md-center justify-content-between flex-column flex-md-row">
            <h2 class="section-title">My Courses</h2>
        </div>

        <?php if(!empty($sales) and !$sales->isEmpty()): ?>
            <?php $__currentLoopData = $sales; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sale): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php
                    $si = '/assets/default/img/course_placeholder.png';
                    $item = !empty($sale->webinar) ? $sale->webinar : $sale->bundle;

                    $lastSession = !empty($sale->webinar) ? $sale->webinar->lastSession() : null;
                    $nextSession = !empty($sale->webinar) ? $sale->webinar->nextSession() : null;
                    $isProgressing = false;

                    if(!empty($sale->webinar) and $sale->webinar->start_date <= time() and !empty($lastSession) and $lastSession->date > time()) {
                        $isProgressing=true;
                    }
                ?>

                <?php if(!empty($item)): ?>
                    <div class="row mt-30">
                        <div class="col-12">
                            <div class="webinar-card webinar-list d-flex">
                                

                                <div class="webinar-card-body w-100 d-flex flex-column">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <a href="<?php echo e($item->getUrl()); ?>">
                                            <h3 class="webinar-title font-weight-bold font-16 text-dark-blue">
                                                <?php echo e($item->title); ?>(<?php echo e($item->code); ?>)

                                                <?php if(!empty($item->access_days)): ?>
                                                    <?php if(!$item->checkHasExpiredAccessDays($sale->created_at)): ?>
                                                        <span class="badge badge-outlined-danger ml-10"><?php echo e(trans('update.access_days_expired')); ?></span>
                                                    <?php else: ?>
                                                        <span class="badge badge-outlined-warning ml-10"><?php echo e(trans('update.expired_on_date',['date' => dateTimeFormat($item->getExpiredAccessDays($sale->created_at),'j M Y')])); ?></span>
                                                    <?php endif; ?>
                                                <?php endif; ?>

                                                <?php if(!empty($sale->webinar)): ?>
                                                    <span class="badge badge-dark ml-10 status-badge-dark"><?php echo e(trans('webinars.'.$item->type)); ?></span>
                                                <?php endif; ?>
                                            </h3>
                                        </a>

                                        <div class="btn-group dropdown table-actions">
                                            <button type="button" class="btn-transparent dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i data-feather="more-vertical" height="20"></i>
                                            </button>

                                            <div class="dropdown-menu">
                                                <?php if(!empty($item->access_days) and !$item->checkHasExpiredAccessDays($sale->created_at)): ?>
                                                    <a href="<?php echo e($item->getUrl()); ?>" target="_blank" class="webinar-actions d-block mt-10"><?php echo e(trans('update.enroll_on_course')); ?></a>
                                                <?php elseif(!empty($sale->webinar)): ?>
                                                    <a href="<?php echo e($item->getLearningPageUrl()); ?>" target="_blank" class="webinar-actions d-block"><?php echo e(trans('update.learning_page')); ?></a>

                                                    <?php if(!empty($item->start_date) and ($item->start_date > time() or ($item->isProgressing() and !empty($nextSession)))): ?>
                                                        <button type="button" data-webinar-id="<?php echo e($item->id); ?>" class="join-purchase-webinar webinar-actions btn-transparent d-block mt-10"><?php echo e(trans('footer.join')); ?></button>
                                                    <?php endif; ?>

                                                    <?php if(!empty($item->downloadable) or (!empty($item->files) and count($item->files))): ?>
                                                        <a href="<?php echo e($item->getUrl()); ?>?tab=content" target="_blank" class="webinar-actions d-block mt-10"><?php echo e(trans('home.download')); ?></a>
                                                    <?php endif; ?>

                                                    <?php if($item->price > 0): ?>
                                                        <a href="/panel/webinars/<?php echo e($item->id); ?>/invoice" target="_blank" class="webinar-actions d-block mt-10"><?php echo e(trans('public.invoice')); ?></a>
                                                    <?php endif; ?>
                                                <?php endif; ?>

                                                
                                            </div>
                                        </div>
                                    </div>

                                    <?php echo $__env->make(getTemplate() . '.includes.webinar.rate',['rate' => $item->getRate()], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                    

                                    <div class="d-flex align-items-center justify-content-between flex-wrap mt-auto">
                                        

                                        

                                        <?php if(!empty($sale->webinar) and $item->type == 'webinar'): ?>
                                            <?php if($item->isProgressing() and !empty($nextSession)): ?>
                                                <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                                    <span class="stat-title"><?php echo e(trans('webinars.next_session_duration')); ?>:</span>
                                                    <span class="stat-value"><?php echo e(convertMinutesToHourAndMinute($nextSession->duration)); ?> Hrs</span>
                                                </div>

                                                <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                                    <span class="stat-title"><?php echo e(trans('webinars.next_session_start_date')); ?>:</span>
                                                    <span class="stat-value"><?php echo e(dateTimeFormat($nextSession->date,'j M Y')); ?></span>
                                                </div>
                                            <?php else: ?>
                                                <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                                    <span class="stat-title"><?php echo e(trans('public.duration')); ?>:</span>
                                                    <span class="stat-value"><?php echo e(convertMinutesToHourAndMinute($item->duration)); ?> Hrs</span>
                                                </div>

                                                <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                                    <span class="stat-title"><?php echo e(trans('public.start_date')); ?>:</span>
                                                    <span class="stat-value"><?php echo e(dateTimeFormat($item->start_date,'j M Y')); ?></span>
                                                </div>
                                            <?php endif; ?>
                                        <?php elseif(!empty($sale->bundle)): ?>
                                            <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                                <span class="stat-title"><?php echo e(trans('public.duration')); ?>:</span>
                                                <span class="stat-value"><?php echo e(convertMinutesToHourAndMinute($item->getBundleDuration())); ?> Hrs</span>
                                            </div>
                                        <?php endif; ?>

                                        <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                            <span class="stat-title"><?php echo e(trans('public.instructor')); ?>:</span>
                                            <span class="stat-value"><?php echo e($item->teacher->full_name); ?></span>
                                        </div>

                                        <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                            <span class="stat-title">Enrolled Date:</span>
                                            <span class="stat-value"><?php echo e(dateTimeFormat($sale->created_at,'j M Y')); ?></span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php else: ?>
            <?php echo $__env->make(getTemplate() . '.includes.no-result',[
            'file_name' => 'student.png',
            'title' => trans('panel.no_result_purchases') ,
            'hint' => trans('panel.no_result_purchases_hint') ,
            'btn' => ['url' => '/classes?sort=newest','text' => trans('panel.start_learning')]
        ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php endif; ?>
    </section>

    <div class="my-30">
        <?php echo e($sales->appends(request()->input())->links('vendor.pagination.panel')); ?>

    </div>

    <?php echo $__env->make('web.default.panel.webinar.join_webinar_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script>
        var undefinedActiveSessionLang = '<?php echo e(trans('webinars.undefined_active_session')); ?>';
    </script>

    <script src="/assets/default/js/panel/join_webinar.min.js"></script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make(getTemplate() .'.panel.layouts.panel_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wlms/harvard.wlms.com.au/harvard/resources/views/web/default/panel/webinar/purchases.blade.php ENDPATH**/ ?>