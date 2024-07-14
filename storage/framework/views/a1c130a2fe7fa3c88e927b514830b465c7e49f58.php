<?php $__env->startPush('libraries_top'); ?>
    <link rel="stylesheet" href="/assets/admin/vendor/owl.carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="/assets/admin/vendor/owl.carousel/owl.theme.min.css">

<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>


    <section class="section">
        <div class="row">
            <div class="col-12 mb-4">
                <div class="hero text-white hero-bg-image hero-bg" data-background="<?php echo e(!empty(getPageBackgroundSettings('admin_dashboard')) ? getPageBackgroundSettings('admin_dashboard') : ''); ?>">
                    <div class="hero-inner">
                        <h2><?php echo e(trans('admin/main.welcome')); ?>, <?php echo e($authUser->full_name); ?>!</h2>

                        <div class="d-flex flex-column flex-lg-row align-items-center justify-content-between">
                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_general_dashboard_quick_access_links')): ?>
                                <div>
                                    <p class="lead">Welcome to Wonder LMS</p>

                                    <div class="mt-2 mb-2 d-flex flex-column flex-md-row">
                                        
                                    </div>
                                </div>
                            <?php endif; ?>

                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
        

        
        

        
        <div class="row">

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_general_dashboard_new_sales')): ?>
                <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                    <a href="/admin/financial/sales" class="card card-statistic-1">
                        <div class="card-icon bg-primary">
                            <i class="fas fa-graduation-cap"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Toal Active Courses</h4>
                            </div>
                            <div class="card-body">
                                <?php echo e($getNewSalesCount); ?>

                            </div>
                        </div>
                    </a>
                </div>
            <?php endif; ?>

            

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_general_dashboard_new_tickets')): ?>
                <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                    <a href="/admin/students" class="card card-statistic-1">
                        <div class="card-icon bg-warning">
                            <i class="fas fa-user-graduate"></i></div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4> Total Enroll Student</h4>
                            </div>
                            <div class="card-body">
                                <?php echo e($getNewTicketsCount); ?>

                            </div>
                        </div>
                    </a>
                </div>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_general_dashboard_new_reviews')): ?>
                <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                    <a href="/admin/instructors" class="card card-statistic-1">
                        <div class="card-icon bg-success">
                            <i class="fas fa-chalkboard-teacher"></i></div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Total Teacher</h4>
                            </div>
                            <div class="card-body">
                                <?php echo e($getPendingReviewCount); ?>

                            </div>
                        </div>
                    </a>
                </div>
            <?php endif; ?>

        </div>


        

        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_general_dashboard_users_statistics_chart')): ?>
            
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <div class="position-relative">
                                        <canvas id="usersStatisticsChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--}}
        <?php endif; ?>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/vendors/chartjs/chart.min.js"></script>
    <script src="/assets/admin/vendor/owl.carousel/owl.carousel.min.js"></script>

    <script src="/assets/admin/js/dashboard.min.js"></script>

    <script>
        (function ($) {
            "use strict";

            <?php if(!empty($getMonthAndYearSalesChart)): ?>
            makeStatisticsChart('saleStatisticsChart', saleStatisticsChart, 'Sale', <?php echo json_encode($getMonthAndYearSalesChart['labels'], 15, 512) ?>,<?php echo json_encode($getMonthAndYearSalesChart['data'], 15, 512) ?>);
            <?php endif; ?>

            <?php if(!empty($usersStatisticsChart)): ?>
            makeStatisticsChart('usersStatisticsChart', usersStatisticsChart, 'Users', <?php echo json_encode($usersStatisticsChart['labels'], 15, 512) ?>,<?php echo json_encode($usersStatisticsChart['data'], 15, 512) ?>);
            <?php endif; ?>

        })(jQuery)
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wonderit/public_html/aston/code/resources/views/admin/dashboard.blade.php ENDPATH**/ ?>