<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/vendors/chartjs/chart.min.css"/>
    <link rel="stylesheet" href="/assets/default/vendors/apexcharts/apexcharts.css"/>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>

    <section class="">
        <div class="d-flex align-items-start align-items-md-center justify-content-between flex-column flex-md-row">
            <h1 class="section-title"><?php echo e(trans('panel.dashboard')); ?></h1>

            <?php if(!$authUser->isUser()): ?>
                
            <?php endif; ?>
        </div>

        <?php if(!$authUser->financial_approval and !$authUser->isUser()): ?>
            
        <?php endif; ?>

        
        <div class="bg-white dashboard-banner-container position-relative px-15 px-ld-35 py-10 panel-shadow rounded-sm">
            <h2 class="font-30 text-primary line-height-1">
                <span class="d-block"><?php echo e(trans('panel.hi')); ?> <?php echo e($authUser->full_name); ?></span>
                
            </h2>

            

            <div class="dashboard-banner">
                <img src="<?php echo e(getPageBackgroundSettings('dashboard')); ?>" alt="" class="img-cover">
            </div>
        </div>
    </section>

    <section class="dashboard">
        <div class="row">

            
            <div class="col-12 col-lg-3 mt-35">
                <div class="bg-white account-balance rounded-sm panel-shadow py-15 py-md-30 px-10 px-md-20">
                    <div class="text-center">
                        <img src="/assets/default/img/activity/120.svg" class="account-balance-icon" alt="">
                        

                        <h3 class="font-16 font-weight-500 text-gray mt-25"> My Courses</h3>
                        <?php if($authUser->isTeacher()): ?>
                            <span class="mt-5 d-block font-30 text-secondary"><?php echo e($authUser->webinars()->count()); ?></span>
                        <?php else: ?>
                            <span class="mt-5 d-block font-30 text-secondary"><?php echo e(!empty($webinarsCount) ? $webinarsCount : 0); ?></span>
                        <?php endif; ?>
                        
                    </div>

                    <?php
                        $getFinancialSettings = getFinancialSettings();
                        $drawable = $authUser->getPayout();
                        $can_drawable = ($drawable > ((!empty($getFinancialSettings) and !empty($getFinancialSettings['minimum_payout'])) ? (int)$getFinancialSettings['minimum_payout'] : 0))
                    ?>

                    <div class="mt-20 pt-30 border-top border-gray300 d-flex align-items-center <?php if($can_drawable): ?> justify-content-between <?php else: ?> justify-content-center <?php endif; ?>">
                        <?php if($can_drawable): ?>
                            <span class="font-16 font-weight-500 text-gray"><?php echo e(trans('panel.with_drawable')); ?>:</span>
                            <span class="font-16 font-weight-bold text-secondary"><?php echo e(addCurrencyToPrice($drawable)); ?></span>
                        <?php else: ?>
                            <?php if($authUser->isUser()): ?>
                                <a href="/panel/webinars/purchases" class="font-16 font-weight-bold text-dark-blue">View</a>
                            <?php else: ?>
                                <a href="/panel/webinars" class="font-16 font-weight-bold text-dark-blue">View</a>
                            <?php endif; ?>
                            
                        <?php endif; ?>
                    </div>
                </div>
            </div>

            
            
            <div class="col-12 col-lg-3 mt-35">
                <div class="bg-white account-balance rounded-sm panel-shadow py-15 py-md-30 px-10 px-md-20">
                    <div class="text-center">
                        <img src="/assets/default/img/activity/45.svg" class="account-balance-icon" alt="">
                        

                        <h3 class="font-16 font-weight-500 text-gray mt-25"> Assignments</h3>
                        
                        <span class="mt-5 d-block font-30 text-secondary"><?php echo e(!empty($courseAssignmentsCount) ? $courseAssignmentsCount : 0); ?></span>
                    </div>
                    

                    <?php
                        $getFinancialSettings = getFinancialSettings();
                        $drawable = $authUser->getPayout();
                        $can_drawable = ($drawable > ((!empty($getFinancialSettings) and !empty($getFinancialSettings['minimum_payout'])) ? (int)$getFinancialSettings['minimum_payout'] : 0))
                    ?>

                    <div class="mt-20 pt-30 border-top border-gray300 d-flex align-items-center <?php if($can_drawable): ?> justify-content-between <?php else: ?> justify-content-center <?php endif; ?>">
                        <?php if($can_drawable): ?>
                            <span class="font-16 font-weight-500 text-gray"><?php echo e(trans('panel.with_drawable')); ?>:</span>
                            <span class="font-16 font-weight-bold text-secondary"><?php echo e(addCurrencyToPrice($drawable)); ?></span>
                        <?php else: ?>
                            <?php if($authUser->isUser()): ?>
                                <a href="/panel/assignments/my-assignments" class="font-16 font-weight-bold text-dark-blue">View</a>
                            <?php else: ?>
                                <a href="/panel/assignments/my-courses-assignments" class="font-16 font-weight-bold text-dark-blue">View</a>
                            <?php endif; ?>
                        <?php endif; ?>
                    </div>
                </div>
            </div>

            
            
            <div class="col-12 col-lg-3 mt-35">
                <div class="bg-white account-balance rounded-sm panel-shadow py-15 py-md-30 px-10 px-md-20">
                    <div class="text-center">
                        <img src="/assets/default/img/activity/43.svg" class="account-balance-icon" alt="">
                        

                        <h3 class="font-16 font-weight-500 text-gray mt-25"> Quizzes</h3>
                        <span class="mt-5 d-block font-30 text-secondary"><?php echo e($quizzesCount); ?></span>
                    </div>
                    

                    <?php
                        $getFinancialSettings = getFinancialSettings();
                        $drawable = $authUser->getPayout();
                        $can_drawable = ($drawable > ((!empty($getFinancialSettings) and !empty($getFinancialSettings['minimum_payout'])) ? (int)$getFinancialSettings['minimum_payout'] : 0))
                    ?>

                    <div class="mt-20 pt-30 border-top border-gray300 d-flex align-items-center <?php if($can_drawable): ?> justify-content-between <?php else: ?> justify-content-center <?php endif; ?>">
                        <?php if($can_drawable): ?>
                            <span class="font-16 font-weight-500 text-gray"><?php echo e(trans('panel.with_drawable')); ?>:</span>
                            <span class="font-16 font-weight-bold text-secondary"><?php echo e(addCurrencyToPrice($drawable)); ?></span>
                        <?php else: ?>
                            <?php if($authUser->isUser()): ?>
                                <a href="/panel/quizzes/my-results" class="font-16 font-weight-bold text-dark-blue">View</a>
                            <?php else: ?>
                                <a href="/panel/quizzes" class="font-16 font-weight-bold text-dark-blue">View</a>
                            <?php endif; ?>
                        <?php endif; ?>
                    </div>
                </div>
            </div>

            
            
            <div class="col-12 col-lg-3 mt-35">
                <div class="bg-white account-balance rounded-sm panel-shadow py-15 py-md-30 px-10 px-md-20">
                    <div class="text-center">
                        <img src="/assets/default/img/activity/125.svg" class="account-balance-icon" alt="">
                        

                        <h3 class="font-16 font-weight-500 text-gray mt-25"> Notifications</h3>
                        <span class="mt-5 d-block font-30 text-secondary"><?php echo e(!empty($unReadNotifications) ? count($unReadNotifications) : 0); ?></span>
                    </div>

                    <?php
                        $getFinancialSettings = getFinancialSettings();
                        $drawable = $authUser->getPayout();
                        $can_drawable = ($drawable > ((!empty($getFinancialSettings) and !empty($getFinancialSettings['minimum_payout'])) ? (int)$getFinancialSettings['minimum_payout'] : 0))
                    ?>

                    <div class="mt-20 pt-30 border-top border-gray300 d-flex align-items-center <?php if($can_drawable): ?> justify-content-between <?php else: ?> justify-content-center <?php endif; ?>">
                        <?php if($can_drawable): ?>
                            <span class="font-16 font-weight-500 text-gray"><?php echo e(trans('panel.with_drawable')); ?>:</span>
                            <span class="font-16 font-weight-bold text-secondary"><?php echo e(addCurrencyToPrice($drawable)); ?></span>
                        <?php else: ?>
                            <a href="/panel/notifications" class="font-16 font-weight-bold text-dark-blue">View</a>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>

        
    </section>


    <div class="d-none" id="iNotAvailableModal">
        <div class="offline-modal">
            <h3 class="section-title after-line"><?php echo e(trans('panel.offline_title')); ?></h3>
            <p class="mt-20 font-16 text-gray"><?php echo e(trans('panel.offline_hint')); ?></p>

            <div class="form-group mt-15">
                <label><?php echo e(trans('panel.offline_message')); ?></label>
                <textarea name="message" rows="4" class="form-control "><?php echo e($authUser->offline_message); ?></textarea>
                <div class="invalid-feedback"></div>
            </div>

            <div class="mt-30 d-flex align-items-center justify-content-end">
                <button type="button" class="js-save-offline-toggle btn btn-primary btn-sm"><?php echo e(trans('public.save')); ?></button>
                <button type="button" class="btn btn-danger ml-10 close-swl btn-sm"><?php echo e(trans('public.close')); ?></button>
            </div>
        </div>
    </div>

    <div class="d-none" id="noticeboardMessageModal">
        <div class="text-center">
            <h3 class="modal-title font-20 font-weight-500 text-dark-blue"></h3>
            <span class="modal-time d-block font-12 text-gray mt-25"></span>
            <p class="modal-message font-weight-500 text-gray mt-4"></p>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/vendors/apexcharts/apexcharts.min.js"></script>
    <script src="/assets/default/vendors/chartjs/chart.min.js"></script>

    <script>
        var offlineSuccess = '<?php echo e(trans('panel.offline_success')); ?>';
        var $chartDataMonths = <?php echo json_encode($monthlyChart['months'], 15, 512) ?>;
        var $chartData = <?php echo json_encode($monthlyChart['data'], 15, 512) ?>;
    </script>

    <script src="/assets/default/js/panel/dashboard.min.js"></script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make(getTemplate() .'.panel.layouts.panel_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wonderit/public_html/aston/code/resources/views/web/default/panel/dashboard.blade.php ENDPATH**/ ?>