<?php
    $getPanelSidebarSettings = getPanelSidebarSettings();
?>

<div class="xs-panel-nav d-flex d-lg-none justify-content-between py-5 px-15">
    <div class="user-info d-flex align-items-center justify-content-between">
        <div class="user-avatar bg-gray200">
            <img src="<?php echo e($authUser->getAvatar(100)); ?>" class="img-cover" alt="<?php echo e($authUser->full_name); ?>">
        </div>

        <div class="user-name ml-15">
            <h3 class="font-16 font-weight-bold"><?php echo e($authUser->full_name); ?></h3>
        </div>
    </div>

    <button class="sidebar-toggler btn-transparent d-flex flex-column-reverse justify-content-center align-items-center p-5 rounded-sm sidebarNavToggle" type="button">
        <span><?php echo e(trans('navbar.menu')); ?></span>
        <i data-feather="menu" width="16" height="16"></i>
    </button>
</div>


<div class="panel-sidebar pt-50 pb-25 px-25" id="panelSidebar">
    <button class="btn-transparent panel-sidebar-close sidebarNavToggle">
        <i data-feather="x" width="24" height="24"></i>
    </button>

    <div class="user-info d-flex align-items-center flex-row flex-lg-column justify-content-lg-center">
        <a href="/panel" class="user-avatar bg-gray200">
            <img src="<?php echo e($authUser->getAvatar(100)); ?>" class="img-cover" alt="<?php echo e($authUser->full_name); ?>">
        </a>

        <div class="d-flex flex-column align-items-center justify-content-center">
            <a href="/panel" class="user-name mt-15">
                <h3 class="font-16 font-weight-bold text-center" style="color:white !important;"><?php echo e($authUser->full_name); ?></h3>
            </a>

            <?php if(!empty($authUser->getUserGroup())): ?>
                <span class="create-new-user mt-10" style="color:white !important;"><?php echo e($authUser->getUserGroup()->name); ?></span>
            <?php endif; ?>
        </div>
    </div>

    

    <ul id="panel-sidebar-scroll" class="sidebar-menu pt-10 <?php if(!empty($authUser->userGroup)): ?> has-user-group <?php endif; ?> <?php if(empty($getPanelSidebarSettings) or empty($getPanelSidebarSettings['background'])): ?> without-bottom-image <?php endif; ?>" <?php if((!empty($isRtl) and $isRtl)): ?> data-simplebar-direction="rtl" <?php endif; ?>>

        <li class="sidenav-item <?php echo e((request()->is('panel')) ? 'sidenav-item-active' : ''); ?>">
            <a href="/panel" class="d-flex align-items-center">
                <span class="sidenav-item-icon mr-10">
                    <?php echo $__env->make('web.default.panel.includes.sidebar_icons.dashboard', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </span>
                <span class="font-14 text-dark-blue font-weight-500" style="color:white !important;"><?php echo e(trans('panel.dashboard')); ?></span>
            </a>
        </li>
        
        <?php if($authUser->isOrganization()): ?>
            <li class="sidenav-item <?php echo e((request()->is('panel/instructors') or request()->is('panel/manage/instructors*')) ? 'sidenav-item-active' : ''); ?>">
                <a class="d-flex align-items-center" data-toggle="collapse" href="#instructorsCollapse" role="button" aria-expanded="false" aria-controls="instructorsCollapse">
                <span class="sidenav-item-icon mr-10">
                    <?php echo $__env->make('web.default.panel.includes.sidebar_icons.teachers', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </span>
                    <span class="font-14 text-dark-blue font-weight-500"><?php echo e(trans('public.instructors')); ?></span>
                </a>

                <div class="collapse <?php echo e((request()->is('panel/instructors') or request()->is('panel/manage/instructors*')) ? 'show' : ''); ?>" id="instructorsCollapse">
                    <ul class="sidenav-item-collapse">
                        <li class="mt-5 <?php echo e((request()->is('panel/instructors/new')) ? 'active' : ''); ?>">
                            <a href="/panel/manage/instructors/new" style="color:white !important;"><?php echo e(trans('public.new')); ?></a>
                        </li>
                        <li class="mt-5 <?php echo e((request()->is('panel/manage/instructors')) ? 'active' : ''); ?>">
                            <a href="/panel/manage/instructors" style="color:white !important;"><?php echo e(trans('public.list')); ?></a>
                        </li>
                    </ul>
                </div>
            </li>

            <li class="sidenav-item <?php echo e((request()->is('panel/students') or request()->is('panel/manage/students*')) ? 'sidenav-item-active' : ''); ?>">
                <a class="d-flex align-items-center" data-toggle="collapse" href="#studentsCollapse" role="button" aria-expanded="false" aria-controls="studentsCollapse">
                <span class="sidenav-item-icon mr-10">
                    <?php echo $__env->make('web.default.panel.includes.sidebar_icons.students', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </span>
                    <span class="font-14 text-dark-blue font-weight-500"><?php echo e(trans('quiz.students')); ?></span>
                </a>

                <div class="collapse <?php echo e((request()->is('panel/students') or request()->is('panel/manage/students*')) ? 'show' : ''); ?>" id="studentsCollapse">
                    <ul class="sidenav-item-collapse">
                        <li class="mt-5 <?php echo e((request()->is('panel/manage/students/new')) ? 'active' : ''); ?>">
                            <a href="/panel/manage/students/new"><?php echo e(trans('public.new')); ?></a>
                        </li>
                        <li class="mt-5 <?php echo e((request()->is('panel/manage/students')) ? 'active' : ''); ?>">
                            <a href="/panel/manage/students"><?php echo e(trans('public.list')); ?></a>
                        </li>
                    </ul>
                </div>
            </li>
        <?php endif; ?>

        
        <li class="sidenav-item <?php echo e((request()->is('panel/webinars') or request()->is('panel/webinars/*')) ? 'sidenav-item-active' : ''); ?>">
            <a class="d-flex align-items-center" data-toggle="collapse" href="#webinarCollapse" role="button" aria-expanded="false" aria-controls="webinarCollapse">
                <span class="sidenav-item-icon mr-10">
                    <?php echo $__env->make('web.default.panel.includes.sidebar_icons.webinars', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </span>
                <span class="font-14 text-dark-blue font-weight-500" style="color:white !important;"><?php echo e(trans('panel.webinars')); ?></span>
            </a>

            <div class="collapse <?php echo e((request()->is('panel/webinars') or request()->is('panel/webinars/*')) ? 'show' : ''); ?>" id="webinarCollapse">
                <ul class="sidenav-item-collapse">
                    <?php if($authUser->isOrganization() || $authUser->isTeacher()): ?>
                        <li class="mt-5 <?php echo e((request()->is('panel/webinars/new')) ? 'active' : ''); ?>">
                            <a href="/panel/webinars/new" style="color:white !important;"><?php echo e(trans('public.new')); ?></a>
                        </li>

                        <li class="mt-5 <?php echo e((request()->is('panel/webinars')) ? 'active' : ''); ?>">
                            <a href="/panel/webinars" style="color:white !important;"><?php echo e(trans('panel.my_classes')); ?></a>
                        </li>

                        
                    <?php endif; ?>

                    <?php if(!empty($authUser->organ_id)): ?>
                        
                    <?php endif; ?>

                    <?php if($authUser->isUser()): ?>
                    <li class="mt-5 <?php echo e((request()->is('panel/webinars/purchases')) ? 'active' : ''); ?>">
                        <a href="/panel/webinars/purchases" style="color:white !important;"> Enrolled Courses</a>
                    </li>
                    <?php endif; ?>
                    

                    <?php if($authUser->isOrganization() || $authUser->isTeacher()): ?>
                        
                    <?php endif; ?>

                    
                    

                    
                    
                </ul>
            </div>
        </li>

        
        <?php if($authUser->isOrganization() or $authUser->isTeacher()): ?>
            
        <?php endif; ?>

        
        <?php if($authUser->isOrganization() or $authUser->isTeacher()): ?>
            
        <?php endif; ?>


        
        <li class="sidenav-item <?php echo e((request()->is('panel/assignments') or request()->is('panel/assignments/*')) ? 'sidenav-item-active' : ''); ?>">
                <a class="d-flex align-items-center" data-toggle="collapse" href="#assignmentCollapse" role="button" aria-expanded="false" aria-controls="assignmentCollapse">
                <span class="sidenav-item-icon mr-10">
                    <?php echo $__env->make('web.default.panel.includes.sidebar_icons.assignments', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </span>
                    <span class="font-14 text-dark-blue font-weight-500" style="color:white !important;"><?php echo e(trans('update.assignments')); ?></span>
                </a>

            <div class="collapse <?php echo e((request()->is('panel/assignments') or request()->is('panel/assignments/*')) ? 'show' : ''); ?>" id="assignmentCollapse">
                <ul class="sidenav-item-collapse">

                    <?php if($authUser->isUser()): ?>
                        <li class="mt-5 <?php echo e((request()->is('panel/assignments/my-assignments')) ? 'active' : ''); ?>">
                            <a href="/panel/assignments/my-assignments" style="color:white !important;"><?php echo e(trans('update.my_assignments')); ?></a>
                        </li>
                    <?php endif; ?>

                    <?php if($authUser->isOrganization() || $authUser->isTeacher()): ?>
                        <li class="mt-5 <?php echo e((request()->is('panel/assignments/my-courses-assignments')) ? 'active' : ''); ?>">
                            <a href="/panel/assignments/my-courses-assignments" style="color:white !important;"><?php echo e(trans('update.students_assignments')); ?></a>
                        </li>
                    <?php endif; ?>
                </ul>
            </div>
            
        </li>

        

        
        <li class="sidenav-item <?php echo e((request()->is('panel/quizzes') or request()->is('panel/quizzes/*')) ? 'sidenav-item-active' : ''); ?>">
            <a class="d-flex align-items-center" data-toggle="collapse" href="#quizzesCollapse" role="button" aria-expanded="false" aria-controls="quizzesCollapse">
                <span class="sidenav-item-icon mr-10">
                    <?php echo $__env->make('web.default.panel.includes.sidebar_icons.quizzes', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </span>
                <span class="font-14 text-dark-blue font-weight-500" style="color:white !important;"><?php echo e(trans('panel.quizzes')); ?></span>
            </a>

            <div class="collapse <?php echo e((request()->is('panel/quizzes') or request()->is('panel/quizzes/*')) ? 'show' : ''); ?>" id="quizzesCollapse">
                <ul class="sidenav-item-collapse">
                    <?php if($authUser->isOrganization() || $authUser->isTeacher()): ?>
                        <li class="mt-5 <?php echo e((request()->is('panel/quizzes/new')) ? 'active' : ''); ?>">
                            <a href="/panel/quizzes/new" style="color:white !important;"><?php echo e(trans('quiz.new_quiz')); ?></a>
                        </li>
                        <li class="mt-5 <?php echo e((request()->is('panel/quizzes')) ? 'active' : ''); ?>">
                            <a href="/panel/quizzes" style="color:white !important;"><?php echo e(trans('public.list')); ?></a>
                        </li>
                        <li class="mt-5 <?php echo e((request()->is('panel/quizzes/results')) ? 'active' : ''); ?>">
                            <a href="/panel/quizzes/results" style="color:white !important;"><?php echo e(trans('public.results')); ?></a>
                        </li>
                    <?php endif; ?>

                    <?php if($authUser->isUser()): ?>
                        <li class="mt-5 <?php echo e((request()->is('panel/quizzes/my-results')) ? 'active' : ''); ?>">
                            <a href="/panel/quizzes/my-results" style="color:white !important;"><?php echo e(trans('public.my_results')); ?></a>
                        </li>
                    <?php endif; ?>

                    <?php if($authUser->isUser()): ?>
                        <li class="mt-5 <?php echo e((request()->is('panel/quizzes/opens')) ? 'active' : ''); ?>">
                            <a href="/panel/quizzes/opens" style="color:white !important;"><?php echo e(trans('public.not_participated')); ?></a>
                        </li>
                    <?php endif; ?>
                </ul>
            </div>
        </li>

        

        <?php if($authUser->checkCanAccessToStore()): ?>
            <li class="sidenav-item <?php echo e((request()->is('panel/store') or request()->is('panel/store/*')) ? 'sidenav-item-active' : ''); ?>">
                <a class="d-flex align-items-center" data-toggle="collapse" href="#storeCollapse" role="button" aria-expanded="false" aria-controls="storeCollapse">
                <span class="sidenav-item-icon assign-fill mr-10">
                    <?php echo $__env->make('web.default.panel.includes.sidebar_icons.store', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </span>
                    <span class="font-14 text-dark-blue font-weight-500"><?php echo e(trans('update.store')); ?></span>
                </a>

                <div class="collapse <?php echo e((request()->is('panel/store') or request()->is('panel/store/*')) ? 'show' : ''); ?>" id="storeCollapse">
                    <ul class="sidenav-item-collapse">
                        <?php if($authUser->isOrganization() || $authUser->isTeacher()): ?>
                            <li class="mt-5 <?php echo e((request()->is('panel/store/products/new')) ? 'active' : ''); ?>">
                                <a href="/panel/store/products/new"><?php echo e(trans('update.new_product')); ?></a>
                            </li>

                            <li class="mt-5 <?php echo e((request()->is('panel/store/products')) ? 'active' : ''); ?>">
                                <a href="/panel/store/products"><?php echo e(trans('update.products')); ?></a>
                            </li>

                            <?php
                                $sellerProductOrderWaitingDeliveryCount = $authUser->getWaitingDeliveryProductOrdersCount();
                            ?>

                            <li class="mt-5 <?php echo e((request()->is('panel/store/sales')) ? 'active' : ''); ?>">
                                <a href="/panel/store/sales"><?php echo e(trans('panel.sales')); ?></a>

                                <?php if($sellerProductOrderWaitingDeliveryCount > 0): ?>
                                    <span class="d-inline-flex align-items-center justify-content-center font-weight-500 ml-15 panel-sidebar-store-sales-circle-badge"><?php echo e($sellerProductOrderWaitingDeliveryCount); ?></span>
                                <?php endif; ?>
                            </li>

                        <?php endif; ?>

                        <li class="mt-5 <?php echo e((request()->is('panel/store/purchases')) ? 'active' : ''); ?>">
                            <a href="/panel/store/purchases"><?php echo e(trans('panel.my_purchases')); ?></a>
                        </li>

                        <?php if($authUser->isOrganization() || $authUser->isTeacher()): ?>
                            <li class="mt-5 <?php echo e((request()->is('panel/store/products/comments')) ? 'active' : ''); ?>">
                                <a href="/panel/store/products/comments"><?php echo e(trans('update.product_comments')); ?></a>
                            </li>
                        <?php endif; ?>

                        <li class="mt-5 <?php echo e((request()->is('panel/store/products/my-comments')) ? 'active' : ''); ?>">
                            <a href="/panel/store/products/my-comments"><?php echo e(trans('panel.my_comments')); ?></a>
                        </li>
                    </ul>
                </div>
            </li>
        <?php endif; ?>

        

        

        
        <?php if(!$authUser->isUser() or (!empty($referralSettings) and $referralSettings['status'] and $authUser->affiliate)): ?>
            
        <?php endif; ?>

        

        
        <?php if($authUser->isTeacher()): ?>
            
        <?php endif; ?>

        
        <?php if($authUser->isOrganization() || $authUser->isTeacher()): ?>
            
        <?php endif; ?>

        <?php
            $rewardSetting = getRewardsSettings();
        ?>

        <?php if(!empty($rewardSetting) and $rewardSetting['status'] == '1'): ?>
            <li class="sidenav-item <?php echo e((request()->is('panel/rewards')) ? 'sidenav-item-active' : ''); ?>">
                <a href="/panel/rewards" class="d-flex align-items-center">
                <span class="sidenav-item-icon assign-strock mr-10">
                    <?php echo $__env->make('web.default.panel.includes.sidebar_icons.rewards', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </span>
                    <span class="font-14 text-dark-blue font-weight-500"><?php echo e(trans('update.rewards')); ?></span>
                </a>
            </li>
        <?php endif; ?>

        <?php if($authUser->isTeacher() == false): ?>
        
            <li class="sidenav-item <?php echo e((request()->is('panel/notifications')) ? 'sidenav-item-active' : ''); ?>">
                <a href="/panel/notifications" class="d-flex align-items-center">
                <span class="sidenav-notification-icon sidenav-item-icon mr-10">
                        <?php echo $__env->make('web.default.panel.includes.sidebar_icons.notifications', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </span>
                    <span class="font-14 text-dark-blue font-weight-500" style="color:white !important;"><?php echo e(trans('panel.notifications')); ?></span>
                </a>
            </li>
        <?php endif; ?>

        <li class="sidenav-item <?php echo e((request()->is('panel/setting')) ? 'sidenav-item-active' : ''); ?>">
            <a href="/panel/setting" class="d-flex align-items-center">
                <span class="sidenav-setting-icon sidenav-item-icon mr-10">
                    <?php echo $__env->make('web.default.panel.includes.sidebar_icons.setting', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </span>
                <span class="font-14 text-dark-blue font-weight-500" style="color:white !important;"><?php echo e(trans('panel.settings')); ?></span>
            </a>
        </li>

        <?php if($authUser->isTeacher() or $authUser->isOrganization()): ?>
            <li class="sidenav-item ">
                <a href="<?php echo e($authUser->getProfileUrl()); ?>" class="d-flex align-items-center">
                <span class="sidenav-item-icon assign-strock mr-10">
                    <i data-feather="user" stroke="#1f3b64" stroke-width="1.5" width="24" height="24" class="mr-10 webinar-icon"></i>
                </span>
                    <span class="font-14 text-dark-blue font-weight-500" style="color:white !important;"><?php echo e(trans('public.my_profile')); ?></span>
                </a>
            </li>
        <?php endif; ?>

        <li class="sidenav-item">
            <a href="/logout" class="d-flex align-items-center">
                <span class="sidenav-logout-icon sidenav-item-icon mr-10">
                    <?php echo $__env->make('web.default.panel.includes.sidebar_icons.logout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </span>
                <span class="font-14 text-dark-blue font-weight-500" style="color:white !important;"><?php echo e(trans('panel.log_out')); ?></span>
            </a>
        </li>
    </ul>

    <?php if(!empty($getPanelSidebarSettings) and !empty($getPanelSidebarSettings['background'])): ?>
        
        
    <?php endif; ?>
</div>
<?php /**PATH /home/wlms/harvard.wlms.com.au/harvard/resources/views/web/default/panel/includes/sidebar.blade.php ENDPATH**/ ?>