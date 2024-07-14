<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/vendors/chartjs/chart.min.css"/>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <section>
        <h2 class="section-title"><?php echo e($webinar->title); ?></h2>

        <div class="activities-container mt-25 p-20 p-lg-35">
            <div class="row">
                <div class="col-6 col-md-3 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/48.svg" width="64" height="64" alt="">
                        <strong class="font-30 font-weight-bold mt-5"><?php echo e($studentsCount); ?></strong>
                        <span class="font-16 text-gray font-weight-500"><?php echo e(trans('public.students')); ?></span>
                    </div>
                </div>

                <div class="col-6 col-md-3 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/125.svg" width="64" height="64" alt="">
                        <strong class="font-30 font-weight-bold mt-5"><?php echo e($commentsCount); ?></strong>
                        <span class="font-16 text-gray font-weight-500"><?php echo e(trans('panel.comments')); ?></span>
                    </div>
                </div>

                <div class="col-6 col-md-3 mt-10 mt-md-0 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/sales.svg" width="64" height="64" alt="">
                        <strong class="font-30 font-weight-bold mt-5"><?php echo e($salesCount); ?></strong>
                        <span class="font-16 text-gray font-weight-500"><?php echo e(trans('panel.sales')); ?></span>
                    </div>
                </div>

                <div class="col-6 col-md-3 mt-10 mt-md-0 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/33.png" width="64" height="64" alt="">
                        <strong class="font-30 font-weight-bold mt-5"><?php echo e(handlePrice($salesAmount)); ?></strong>
                        <span class="font-16 text-gray font-weight-500"><?php echo e(trans('panel.sales_amount')); ?></span>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="course-statistic-stat-icons row">

        <div class="col-6 col-md-3 mt-20">
            <div class="dashboard-stats rounded-sm panel-shadow p-10 p-md-20 d-flex align-items-center">
                <div class="stat-icon stat-icon-chapters">
                    <img src="/assets/default/img/icons/course-statistics/1.svg" alt="">
                </div>
                <div class="d-flex flex-column ml-5 ml-md-15">
                    <span class="font-30 text-secondary"><?php echo e($chaptersCount); ?></span>
                    <span class="font-16 text-gray font-weight-500"><?php echo e(trans('public.chapters')); ?></span>
                </div>
            </div>
        </div>

        <div class="col-6 col-md-3 mt-20">
            <div class="dashboard-stats rounded-sm panel-shadow p-10 p-md-20 d-flex align-items-center">
                <div class="stat-icon stat-icon-sessions">
                    <img src="/assets/default/img/icons/course-statistics/2.svg" alt="">
                </div>
                <div class="d-flex flex-column ml-5 ml-md-15">
                    <span class="font-30 text-secondary"><?php echo e($sessionsCount); ?></span>
                    <span class="font-16 text-gray font-weight-500"><?php echo e(trans('public.sessions')); ?></span>
                </div>
            </div>
        </div>

        <div class="col-6 col-md-3 mt-20">
            <div class="dashboard-stats rounded-sm panel-shadow p-10 p-md-20 d-flex align-items-center">
                <div class="stat-icon stat-icon-pending-quizzes">
                    <img src="/assets/default/img/icons/course-statistics/3.svg" alt="">
                </div>
                <div class="d-flex flex-column ml-5 ml-md-15">
                    <span class="font-30 text-secondary"><?php echo e($pendingQuizzesCount); ?></span>
                    <span class="font-16 text-gray font-weight-500"><?php echo e(trans('update.pending_quizzes')); ?></span>
                </div>
            </div>
        </div>

        <div class="col-6 col-md-3 mt-20">
            <div class="dashboard-stats rounded-sm panel-shadow p-10 p-md-20 d-flex align-items-center">
                <div class="stat-icon stat-icon-pending-assignments">
                    <img src="/assets/default/img/icons/course-statistics/4.svg" alt="">
                </div>
                <div class="d-flex flex-column ml-5 ml-md-15">
                    <span class="font-30 text-secondary"><?php echo e($pendingAssignmentsCount); ?></span>
                    <span class="font-16 text-gray font-weight-500"><?php echo e(trans('update.pending_assignments')); ?></span>
                </div>
            </div>
        </div>

    </section>

    <section>
        <div class="row">
            <div class="col-12 col-md-3 mt-20">
                <div class="course-statistic-cards-shadow py-20 px-15 py-md-30 px-md-20 rounded-sm bg-white">
                    <div class="d-flex align-items-center flex-column">
                        <img src="/assets/default/img/activity/33.png" width="64" height="64" alt="">

                        <span class="font-30 text-secondary mt-25 font-weight-bold"><?php echo e($courseRate); ?></span>
                        <?php echo $__env->make('web.default.includes.webinar.rate',['rate' => $courseRate, 'className' => 'mt-5', 'dontShowRate' => true, 'showRateStars' => true], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>

                    <div class="d-flex align-items-center justify-content-between mt-20 pt-30 border-top font-16 font-weight-500">
                        <span class="text-gray"><?php echo e(trans('update.total_rates')); ?></span>
                        <span class="text-secondary"><?php echo e($courseRateCount); ?></span>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-3 mt-20">
                <div class="course-statistic-cards-shadow py-20 px-15 py-md-30 px-md-20 rounded-sm bg-white">
                    <div class="d-flex align-items-center flex-column">
                        <img src="/assets/default/img/activity/88.svg" width="64" height="64" alt="">

                        <span class="font-30 text-secondary mt-25 font-weight-bold"><?php echo e($webinar->quizzes->count()); ?></span>
                        <span class="mt-5 font-16 font-weight-500 text-gray"><?php echo e(trans('quiz.quizzes')); ?></span>
                    </div>

                    <div class="d-flex align-items-center justify-content-between mt-20 pt-30 border-top font-16 font-weight-500">
                        <span class="text-gray"><?php echo e(trans('quiz.average_grade')); ?></span>
                        <span class="text-secondary"><?php echo e($quizzesAverageGrade); ?></span>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-3 mt-20">
                <div class="course-statistic-cards-shadow py-20 px-15 py-md-30 px-md-20 rounded-sm bg-white">
                    <div class="d-flex align-items-center flex-column">
                        <img src="/assets/default/img/activity/homework.svg" width="64" height="64" alt="">

                        <span class="font-30 text-secondary mt-25 font-weight-bold"><?php echo e($webinar->assignments->count()); ?></span>
                        <span class="mt-5 font-16 font-weight-500 text-gray"><?php echo e(trans('update.assignments')); ?></span>
                    </div>

                    <div class="d-flex align-items-center justify-content-between mt-20 pt-30 border-top font-16 font-weight-500">
                        <span class="text-gray"><?php echo e(trans('quiz.average_grade')); ?></span>
                        <span class="text-secondary"><?php echo e($assignmentsAverageGrade); ?></span>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-3 mt-20">
                <div class="course-statistic-cards-shadow py-20 px-15 py-md-30 px-md-20 rounded-sm bg-white">
                    <div class="d-flex align-items-center flex-column">
                        <img src="/assets/default/img/activity/39.svg" width="64" height="64" alt="">

                        <span class="font-30 text-secondary mt-25 font-weight-bold"><?php echo e($courseForumsMessagesCount); ?></span>
                        <span class="mt-5 font-16 font-weight-500 text-gray"><?php echo e(trans('update.forum_messages')); ?></span>
                    </div>

                    <div class="d-flex align-items-center justify-content-between mt-20 pt-30 border-top font-16 font-weight-500">
                        <span class="text-gray"><?php echo e(trans('update.forum_students')); ?></span>
                        <span class="text-secondary"><?php echo e($courseForumsStudentsCount); ?></span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="row">
            <?php echo $__env->make('web.default.panel.webinar.course_statistics.includes.pie_charts',[
                'cardTitle' => trans('update.students_user_roles'),
                'cardId' => 'studentsUserRolesChart',
                'cardPrimaryLabel' => trans('public.students'),
                'cardSecondaryLabel' => trans('public.instructors'),
                'cardWarningLabel' => trans('home.organizations'),
            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            <?php echo $__env->make('web.default.panel.webinar.course_statistics.includes.pie_charts',[
                'cardTitle' => trans('update.course_progress'),
                'cardId' => 'courseProgressChart',
                'cardPrimaryLabel' => trans('update.completed'),
                'cardSecondaryLabel' => trans('webinars.in_progress'),
                'cardWarningLabel' => trans('update.not_started'),
            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            <?php echo $__env->make('web.default.panel.webinar.course_statistics.includes.pie_charts',[
                'cardTitle' => trans('quiz.quiz_status'),
                'cardId' => 'quizStatusChart',
                'cardPrimaryLabel' => trans('quiz.passed'),
                'cardSecondaryLabel' => trans('public.pending'),
                'cardWarningLabel' => trans('quiz.failed'),
            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            <?php echo $__env->make('web.default.panel.webinar.course_statistics.includes.pie_charts',[
                'cardTitle' => trans('update.assignments_status'),
                'cardId' => 'assignmentsStatusChart',
                'cardPrimaryLabel' => trans('quiz.passed'),
                'cardSecondaryLabel' => trans('public.pending'),
                'cardWarningLabel' => trans('quiz.failed'),
            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        </div>
    </section>


    <section>
        <div class="row">
            <div class="col-12 col-md-6 mt-20">
                <div class="course-statistic-cards-shadow monthly-sales-card pt-15 px-15 pb-25 rounded-sm bg-white">
                    <div class="d-flex align-items-center justify-content-between">
                        <h3 class="font-16 text-dark-blue font-weight-bold"><?php echo e(trans('panel.monthly_sales')); ?></h3>

                        <span class="font-16 font-weight-500 text-gray"><?php echo e(dateTimeFormat(time(),'M Y')); ?></span>
                    </div>

                    <div class="monthly-sales-chart mt-15">
                        <canvas id="monthlySalesChart"></canvas>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-6 mt-20">
                <div class="course-statistic-cards-shadow monthly-sales-card pt-15 px-15 pb-25 rounded-sm bg-white">
                    <div class="d-flex align-items-center justify-content-between">
                        <h3 class="font-16 text-dark-blue font-weight-bold"><?php echo e(trans('update.course_progress')); ?> (%)</h3>
                    </div>

                    <div class="monthly-sales-chart mt-15">
                        <canvas id="courseProgressLineChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="mt-35">
        <h2 class="section-title"><?php echo e(trans('panel.students_list')); ?></h2>

        <?php if(!empty($students) and !$students->isEmpty()): ?>
            <div class="panel-section-card py-20 px-25 mt-20">
                <div class="row">
                    <div class="col-12 ">
                        <div class="table-responsive">
                            <table class="table custom-table text-center ">
                                <thead>
                                <tr>
                                    <th class="text-left text-gray"><?php echo e(trans('quiz.student')); ?></th>
                                    <th class="text-center text-gray"><?php echo e(trans('update.progress')); ?></th>
                                    <th class="text-center text-gray"><?php echo e(trans('update.passed_quizzes')); ?></th>
                                    <th class="text-center text-gray"><?php echo e(trans('update.unsent_assignments')); ?></th>
                                    <th class="text-center text-gray"><?php echo e(trans('update.pending_assignments')); ?></th>
                                    <th class="text-center text-gray"><?php echo e(trans('panel.purchase_date')); ?></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $__currentLoopData = $students; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                    <tr>
                                        <td class="text-left">
                                            <div class="user-inline-avatar d-flex align-items-center">
                                                <div class="avatar bg-gray200">
                                                    <img src="<?php echo e($user->getAvatar()); ?>" class="img-cover" alt="">
                                                </div>
                                                <div class=" ml-5">
                                                    <span class="d-block text-dark-blue font-weight-500"><?php echo e($user->full_name); ?></span>
                                                    <span class="mt-5 d-block font-12 text-gray"><?php echo e($user->email); ?></span>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="align-middle">
                                            <span class="text-dark-blue font-weight-500"><?php echo e($user->course_progress); ?>%</span>
                                        </td>
                                        <td class="align-middle">
                                            <span class="text-dark-blue font-weight-500"><?php echo e($user->passed_quizzes); ?></span>
                                        </td>
                                        <td class="align-middle">
                                            <span class="text-dark-blue font-weight-500"><?php echo e($user->unsent_assignments); ?></span>
                                        </td>
                                        <td class="align-middle">
                                            <span class="text-dark-blue font-weight-500"><?php echo e($user->pending_assignments); ?></span>
                                        </td>
                                        <td class="align-middle">
                                            <span class="text-dark-blue font-weight-500"><?php echo e(dateTimeFormat($user->created_at,'j M Y | H:i')); ?></span>
                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="my-30">
                <?php echo e($students->appends(request()->input())->links('vendor.pagination.panel')); ?>

            </div>
        <?php else: ?>

            <?php echo $__env->make(getTemplate() . '.includes.no-result',[
                'file_name' => 'studentt.png',
                'title' => trans('update.course_statistic_students_no_result'),
                'hint' =>  nl2br(trans('update.course_statistic_students_no_result_hint')),
            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php endif; ?>

    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/vendors/chartjs/chart.min.js"></script>
    <script src="/assets/default/js/panel/course_statistics.min.js"></script>

    <script>
        (function ($) {
            "use strict";

            <?php if(!empty($studentsUserRolesChart)): ?>
            makePieChart('studentsUserRolesChart', <?php echo json_encode($studentsUserRolesChart['labels'], 15, 512) ?>,<?php echo json_encode($studentsUserRolesChart['data'], 15, 512) ?>);
            <?php endif; ?>

            <?php if(!empty($courseProgressChart)): ?>
            makePieChart('courseProgressChart', <?php echo json_encode($courseProgressChart['labels'], 15, 512) ?>,<?php echo json_encode($courseProgressChart['data'], 15, 512) ?>);
            <?php endif; ?>

            <?php if(!empty($quizStatusChart)): ?>
            makePieChart('quizStatusChart', <?php echo json_encode($quizStatusChart['labels'], 15, 512) ?>,<?php echo json_encode($quizStatusChart['data'], 15, 512) ?>);
            <?php endif; ?>

            <?php if(!empty($assignmentsStatusChart)): ?>
            makePieChart('assignmentsStatusChart', <?php echo json_encode($assignmentsStatusChart['labels'], 15, 512) ?>,<?php echo json_encode($assignmentsStatusChart['data'], 15, 512) ?>);
            <?php endif; ?>


            <?php if(!empty($monthlySalesChart)): ?>
            handleMonthlySalesChart(<?php echo json_encode($monthlySalesChart['labels'], 15, 512) ?>,<?php echo json_encode($monthlySalesChart['data'], 15, 512) ?>);
            <?php endif; ?>

            <?php if(!empty($courseProgressLineChart)): ?>
            handleCourseProgressChart(<?php echo json_encode($courseProgressLineChart['labels'], 15, 512) ?>,<?php echo json_encode($courseProgressLineChart['data'], 15, 512) ?>);
            <?php endif; ?>

            // handleCourseProgressChartChart();
        })(jQuery)
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('web.default.panel.layouts.panel_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\htdocs\code Backup-09-08-2022\code\resources\views/web/default/panel/webinar/course_statistics/index.blade.php ENDPATH**/ ?>