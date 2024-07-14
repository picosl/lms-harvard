<?php
    if (empty($authUser) and auth()->check()) {
        $authUser = auth()->user();
    }

    $navBtnUrl = null;
    $navBtnText = null;

    if(request()->is('forums*')) {
        $navBtnUrl = '/forums/create-topic';
        $navBtnText = trans('update.create_new_topic');
    } else {
        $navbarButton = getNavbarButton(!empty($authUser) ? $authUser->role_id : null);

        if (!empty($navbarButton)) {
            $navBtnUrl = $navbarButton->url;
            $navBtnText = $navbarButton->title;
        }
    }
?>

<div id="navbarVacuum"></div>
<nav id="navbar" class="navbar navbar-expand-lg navbar-light">
    <div class="<?php echo e((!empty($isPanel) and $isPanel) ? 'container-fluid' : 'container'); ?>">
        <div class="d-flex align-items-center justify-content-between w-100">

            <?php
                if(Auth::check()){
                    $role = Auth::user()->role_id;
                }
            ?>


            <?php if(isset($role)): ?>
            <a class="navbar-brand navbar-order d-flex align-items-center justify-content-center mr-0 <?php echo e((empty($navBtnUrl) and empty($navBtnText)) ? 'ml-auto' : ''); ?>" href="<?php echo e(($role == 1 || $role == 4) ? '/panel' : '/'); ?>">
                <?php if(!empty($generalSettings['logo'])): ?>
                    <img src="<?php echo e($generalSettings['logo']); ?>" class="img-cover" alt="site logo" style="object-fit: scale-down !important;">
                <?php endif; ?>
            </a> 
            <?php else: ?>
            <a class="navbar-brand navbar-order d-flex align-items-center justify-content-center mr-0 <?php echo e((empty($navBtnUrl) and empty($navBtnText)) ? 'ml-auto' : ''); ?>" href="/">
                <?php if(!empty($generalSettings['logo'])): ?>
                    <img src="<?php echo e($generalSettings['logo']); ?>" class="img-cover" alt="site logo" style="object-fit: scale-down !important;">
                <?php endif; ?>
            </a>
            <?php endif; ?>

            <button class="navbar-toggler navbar-order" type="button" id="navbarToggle">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="mx-lg-30 d-none d-lg-flex flex-grow-1 navbar-toggle-content " id="navbarContent">
                <div class="navbar-toggle-header text-right d-lg-none">
                    <button class="btn-transparent" id="navbarClose">
                        <i data-feather="x" width="32" height="32"></i>
                    </button>
                </div>

                

                

                <?php if(!empty($authUser)): ?>
                    <div class="dropdown">
                        <a href="#!" class="navbar-user d-flex align-items-center ml-50 dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="<?php echo e($authUser->getAvatar()); ?>" class="rounded-circle" alt="<?php echo e($authUser->full_name); ?>" style="width:40px;height:40px;object-fit:contain;">
                            <span class="font-16 user-name ml-10 text-dark-blue font-14"><?php echo e($authUser->full_name); ?></span>
                        </a>

                        <div class="dropdown-menu user-profile-dropdown" aria-labelledby="dropdownMenuButton">
                            <div class="d-md-none border-bottom mb-20 pb-10 text-right">
                                <i class="close-dropdown" data-feather="x" width="32" height="32" class="mr-10"></i>
                            </div>

                            <a class="dropdown-item" href="<?php echo e($authUser->isAdmin() ? '/admin' : '/panel'); ?>">
                                <img src="/assets/default/img/icons/sidebar/dashboard.svg" width="25" alt="nav-icon">
                                <span class="font-14 text-dark-blue"><?php echo e(trans('public.my_panel')); ?></span>
                            </a>
                            <?php if($authUser->isTeacher() or $authUser->isOrganization()): ?>
                                <a class="dropdown-item" href="<?php echo e($authUser->getProfileUrl()); ?>">
                                    <img src="/assets/default/img/icons/profile.svg" width="25" alt="nav-icon">
                                    <span class="font-14 text-dark-blue"><?php echo e(trans('public.my_profile')); ?></span>
                                </a>
                            <?php endif; ?>
                            <a class="dropdown-item" href="/logout">
                                <img src="/assets/default/img/icons/sidebar/logout.svg" width="25" alt="nav-icon">
                                <span class="font-14 text-dark-blue"><?php echo e(trans('panel.log_out')); ?></span>
                            </a>
                        </div>
                    </div>
                <?php else: ?>
                    <div class="d-flex align-items-center ml-md-50">
                        <a href="/login" class="py-5 px-10 mr-10 text-dark-blue font-14"><?php echo e(trans('auth.login')); ?></a>
                        <a href="/register" class="py-5 px-10 text-dark-blue font-14"><?php echo e(trans('auth.register')); ?></a>
                    </div>
                <?php endif; ?>

            </div>

            <div class="nav-icons-or-start-live navbar-order">

                <?php if(!empty($navBtnUrl)): ?>
                    

                    
                <?php endif; ?>

                <div class="d-none nav-notify-cart-dropdown top-navbar ">
                    

                    <div class="border-left mx-15"></div>

                    <?php echo $__env->make(getTemplate().'.includes.notification-dropdown', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
                

            </div>
        </div>
    </div>
</nav>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/js/parts/navbar.min.js"></script>
<?php $__env->stopPush(); ?>
<?php /**PATH /home/wlms/public_html/iiet.wlms.com.au/iiet/resources/views/web/default/includes/navbar.blade.php ENDPATH**/ ?>