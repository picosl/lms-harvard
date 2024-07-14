<?php
    $userLanguages = !empty($generalSettings['site_language']) ? [$generalSettings['site_language'] => getLanguages($generalSettings['site_language'])] : [];

    if (!empty($generalSettings['user_languages']) and is_array($generalSettings['user_languages'])) {
        $userLanguages = getLanguages($generalSettings['user_languages']);
    }

    $localLanguage = [];

    foreach($userLanguages as $key => $userLanguage) {
        $localLanguage[localeToCountryCode($key)] = $userLanguage;
    }

?>

<div class="top-navbar d-flex border-bottom">
    <div class="container d-flex justify-content-between flex-column flex-lg-row">
        <div class="top-contact-box border-bottom d-flex flex-column flex-md-row align-items-center justify-content-center">

            

            <div class="d-flex align-items-center justify-content-between justify-content-md-center">
                <?php if(!empty($localLanguage) and count($localLanguage) > 1): ?>
                    <form action="/locale" method="post" class="mr-15 mx-md-20">
                        <?php echo e(csrf_field()); ?>


                        <input type="hidden" name="locale">

                        <div class="language-select">
                            <div id="localItems"
                                 data-selected-country="<?php echo e(localeToCountryCode(mb_strtoupper(app()->getLocale()))); ?>"
                                 data-countries='<?php echo e(json_encode($localLanguage)); ?>'
                            ></div>
                        </div>
                    </form>
                <?php else: ?>
                    <div class="mr-15 mx-md-20"></div>
                <?php endif; ?>


                
            </div>
        </div>

        <div class="xs-w-100 d-flex align-items-center justify-content-between ">
            <div class="d-flex">

                

                <?php echo $__env->make(getTemplate().'.includes.notification-dropdown', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>

            <?php if(!empty($authUser)): ?>


                <div class="dropdown">
                    <a href="#!" class="navbar-user d-flex align-items-center ml-50 dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="<?php echo e($authUser->getAvatar()); ?>" class="rounded-circle" alt="<?php echo e($authUser->full_name); ?>">
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
    </div>
</div>


<?php $__env->startPush('scripts_bottom'); ?>
    <link href="/assets/default/vendors/flagstrap/css/flags.css" rel="stylesheet">
    <script src="/assets/default/vendors/flagstrap/js/jquery.flagstrap.min.js"></script>
    <script src="/assets/default/js/parts/top_nav_flags.min.js"></script>
<?php $__env->stopPush(); ?>
<?php /**PATH D:\xampp\htdocs\htdocs\code Backup-09-08-2022\code\resources\views/web/default/includes/top_nav.blade.php ENDPATH**/ ?>