<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/css/css-stars.css">
    <link rel="stylesheet" href="/assets/default/vendors/video/video-js.min.css">
<?php $__env->stopPush(); ?>


<?php $__env->startSection('content'); ?>
    <?php
    $si = '/assets/default/img/course_placeholder.png';
    ?>

    <section class="course-cover-container <?php echo e(empty($activeSpecialOffer) ? 'not-active-special-offer' : ''); ?>" style="height:300px !important;">
        

        <div class="cover-content" style="height:0px !important;">
            <div class="container position-relative">
                <?php if(!empty($activeSpecialOffer)): ?>
                    <?php echo $__env->make('web.default.course.special_offer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endif; ?>
            </div>
        </div>
    </section>

    

    <section class="pt-100 container course-content-section <?php echo e($course->type); ?> <?php echo e(($hasBought or $course->isWebinar()) ? 'has-progress-bar' : ''); ?>">
        <div class="row">
            <div class="col-12 col-lg-12">
                <div class="course-content-body user-select-none">
                    <div class="course-body-on-cover">
                        <h1 class="font-30 course-title">
                            <?php echo e(clean($course->title, 't')); ?>

                        </h1>

                        <?php if(!empty($course->category)): ?>
                            
                        <?php endif; ?>

                        

                        <div class="mt-15">
                            <span class="font-14"><?php echo e(trans('public.created_by')); ?></span>
                            <a href="<?php echo e($course->teacher->getProfileUrl()); ?>" target="_blank" class="text-decoration-underline font-14 font-weight-500"><?php echo e($course->teacher->full_name); ?></a>
                        </div>

                        <?php if($hasBought or $course->isWebinar()): ?>
                            <?php
                                $percent = $course->getProgress();
                            ?>

                            <div class="mt-30 d-flex align-items-center">
                                <div class="progress course-progress flex-grow-1 shadow-xs rounded-sm">
                                    <span class="progress-bar rounded-sm bg-warning" style="width: <?php echo e($percent); ?>%"></span>
                                </div>

                                <span class="ml-15 font-14 font-weight-500">
                                    <?php if($course->isWebinar()): ?>
                                        <?php if($hasBought and $course->isProgressing()): ?>
                                            <?php echo e(trans('public.course_learning_passed',['percent' => $percent])); ?>

                                        <?php else: ?>
                                            <?php echo e($course->sales_count); ?>/<?php echo e($course->capacity); ?> <?php echo e(trans('quiz.students')); ?>

                                        <?php endif; ?>
                                    <?php else: ?>
                                        <?php echo e(trans('public.course_learning_passed',['percent' => $percent])); ?>

                                    <?php endif; ?>
                            </span>
                            </div>
                        <?php endif; ?>
                    </div>

                    <div class="mt-35">
                        <ul class="nav nav-tabs bg-secondary rounded-sm p-15 d-flex align-items-center justify-content-between" id="tabs-tab" role="tablist">
                            
                            <li class="nav-item">
                                <a class="position-relative font-14 text-white <?php echo e((request()->get('tab','') == 'content') ? 'active' : ''); ?>" id="content-tab" data-toggle="tab"
                                   href="#content" role="tab" aria-controls="content"
                                   aria-selected="false">Course <?php echo e(trans('product.content')); ?> (<?php echo e($webinarContentCount); ?>)</a>
                            </li>
                            <li class="nav-item">
                                <a href="<?php echo e($course->getLearningPageUrl()); ?>" class="btn btn-primary"><?php echo e(trans('update.go_to_learning_page')); ?></a>
                            </li>
                            
                            
                        </ul>

                        <div class="tab-content" id="nav-tabContent">
                            

                            <?php echo $__env->make(getTemplate().'.course.tabs.content', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                            <div class="tab-pane fade <?php echo e((request()->get('tab','') == 'content') ? 'show active' : ''); ?>" id="content" role="tabpanel" aria-labelledby="content-tab">
                                <?php echo $__env->make(getTemplate().'.course.tabs.content', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>

                            
                        </div>

                    </div>
                </div>
            </div>

        </div>

        
        <?php if(!empty($advertisingBanners) and count($advertisingBanners)): ?>
            <div class="mt-30 mt-md-50">
                <div class="row">
                    <?php $__currentLoopData = $advertisingBanners; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $banner): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="col-<?php echo e($banner->size); ?>">
                            <a href="<?php echo e($banner->link); ?>">
                                <img src="<?php echo e($banner->image); ?>" class="img-cover rounded-sm" alt="<?php echo e($banner->title); ?>">
                            </a>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        <?php endif; ?>
        
    </section>

    <div id="webinarReportModal" class="d-none">
        <h3 class="section-title after-line font-20 text-dark-blue"><?php echo e(trans('product.report_the_course')); ?></h3>

        <form action="/course/<?php echo e($course->id); ?>/report" method="post" class="mt-25">

            <div class="form-group">
                <label class="text-dark-blue font-14"><?php echo e(trans('product.reason')); ?></label>
                <select id="reason" name="reason" class="form-control">
                    <option value="" selected disabled><?php echo e(trans('product.select_reason')); ?></option>

                    <?php $__currentLoopData = getReportReasons(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $reason): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($reason); ?>"><?php echo e($reason); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
                <div class="invalid-feedback"></div>
            </div>

            <div class="form-group">
                <label class="text-dark-blue font-14" for="message_to_reviewer"><?php echo e(trans('public.message_to_reviewer')); ?></label>
                <textarea name="message" id="message_to_reviewer" class="form-control" rows="10"></textarea>
                <div class="invalid-feedback"></div>
            </div>
            <p class="text-gray font-16"><?php echo e(trans('product.report_modal_hint')); ?></p>

            <div class="mt-30 d-flex align-items-center justify-content-end">
                <button type="button" class="js-course-report-submit btn btn-sm btn-primary"><?php echo e(trans('panel.report')); ?></button>
                <button type="button" class="btn btn-sm btn-danger ml-10 close-swl"><?php echo e(trans('public.close')); ?></button>
            </div>
        </form>
    </div>

    <?php echo $__env->make('web.default.course.share_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('web.default.course.buy_with_point_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/js/parts/time-counter-down.min.js"></script>
    <script src="/assets/default/vendors/barrating/jquery.barrating.min.js"></script>
    <script src="/assets/default/vendors/video/video.min.js"></script>
    <script src="/assets/default/vendors/video/youtube.min.js"></script>
    <script src="/assets/default/vendors/video/vimeo.js"></script>

    <script>
        var webinarDemoLang = '<?php echo e(trans('webinars.webinar_demo')); ?>';
        var replyLang = '<?php echo e(trans('panel.reply')); ?>';
        var closeLang = '<?php echo e(trans('public.close')); ?>';
        var saveLang = '<?php echo e(trans('public.save')); ?>';
        var reportLang = '<?php echo e(trans('panel.report')); ?>';
        var reportSuccessLang = '<?php echo e(trans('panel.report_success')); ?>';
        var reportFailLang = '<?php echo e(trans('panel.report_fail')); ?>';
        var messageToReviewerLang = '<?php echo e(trans('public.message_to_reviewer')); ?>';
        var copyLang = '<?php echo e(trans('public.copy')); ?>';
        var copiedLang = '<?php echo e(trans('public.copied')); ?>';
        var learningToggleLangSuccess = '<?php echo e(trans('public.course_learning_change_status_success')); ?>';
        var learningToggleLangError = '<?php echo e(trans('public.course_learning_change_status_error')); ?>';
        var notLoginToastTitleLang = '<?php echo e(trans('public.not_login_toast_lang')); ?>';
        var notLoginToastMsgLang = '<?php echo e(trans('public.not_login_toast_msg_lang')); ?>';
        var notAccessToastTitleLang = '<?php echo e(trans('public.not_access_toast_lang')); ?>';
        var notAccessToastMsgLang = '<?php echo e(trans('public.not_access_toast_msg_lang')); ?>';
        var canNotTryAgainQuizToastTitleLang = '<?php echo e(trans('public.can_not_try_again_quiz_toast_lang')); ?>';
        var canNotTryAgainQuizToastMsgLang = '<?php echo e(trans('public.can_not_try_again_quiz_toast_msg_lang')); ?>';
        var canNotDownloadCertificateToastTitleLang = '<?php echo e(trans('public.can_not_download_certificate_toast_lang')); ?>';
        var canNotDownloadCertificateToastMsgLang = '<?php echo e(trans('public.can_not_download_certificate_toast_msg_lang')); ?>';
        var sessionFinishedToastTitleLang = '<?php echo e(trans('public.session_finished_toast_title_lang')); ?>';
        var sessionFinishedToastMsgLang = '<?php echo e(trans('public.session_finished_toast_msg_lang')); ?>';
        var sequenceContentErrorModalTitle = '<?php echo e(trans('update.sequence_content_error_modal_title')); ?>';
        var courseHasBoughtStatusToastTitleLang = '<?php echo e(trans('cart.fail_purchase')); ?>';
        var courseHasBoughtStatusToastMsgLang = '<?php echo e(trans('site.you_bought_webinar')); ?>';
        var courseNotCapacityStatusToastTitleLang = '<?php echo e(trans('public.request_failed')); ?>';
        var courseNotCapacityStatusToastMsgLang = '<?php echo e(trans('cart.course_not_capacity')); ?>';
        var courseHasStartedStatusToastTitleLang = '<?php echo e(trans('cart.fail_purchase')); ?>';
        var courseHasStartedStatusToastMsgLang = '<?php echo e(trans('update.class_has_started')); ?>';

    </script>

    <script src="/assets/default/js/parts/comment.min.js"></script>
    <script src="/assets/default/js/parts/video_player_helpers.min.js"></script>
    
    <script src="/assets/default/js/parts/webinar_show.js"></script>

 
  
<?php $__env->stopPush(); ?>

<?php echo $__env->make(getTemplate().'.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wlms/harvard.wlms.com.au/harvard/resources/views/web/default/course/index.blade.php ENDPATH**/ ?>