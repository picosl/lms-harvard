<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title><?php echo e($pageTitle ?? ''); ?></title>

    <!-- General CSS File -->
    <link rel="stylesheet" href="/assets/admin/vendor/bootstrap/bootstrap.min.css"/>
    <link rel="stylesheet" href="/assets/admin/vendor/fontawesome/css/all.min.css"/>

    <link rel="stylesheet" href="/assets/admin/css/style.css">
    <link rel="stylesheet" href="/assets/admin/css/components.css">
    <link rel="stylesheet" href="/assets/default/vendors/toast/jquery.toast.min.css">
</head>
<body>

<div id="app">
    <?php
        $getPageBackgroundSettings = getPageBackgroundSettings();
    ?>

    <section class="section">
        <div class="d-flex flex-wrap align-items-stretch">
            <div class="col-lg-4 col-md-6 col-12 order-lg-1 min-vh-100 order-2 bg-white">

                <?php echo $__env->yieldContent('content'); ?>

            </div>

            <div class="col-lg-8 col-12 order-lg-2 order-1 min-vh-100 background-walk-y position-relative overlay-gradient-bottom" data-background="<?php echo e($getPageBackgroundSettings['admin_login'] ?? ''); ?>">
            <div class="absolute-bottom-left index-2">
            <div class="text-light p-5 pb-2">
              <div class="mb-2 pb-3">
                <h1 class="mb-2 display-4 font-weight-bold">WONDER LMS</h1>
                
              </div>
              All rights reserved for <a class="text-light bb" target="_blank" href="https://wonderit.com.au">WONDER IT</a>
            </div>
          </div>
            </div>
          
        </div>
    </section>
</div>
<!-- General JS Scripts -->
<script src="/assets/admin/vendor/jquery/jquery-3.3.1.min.js"></script>
<script src="/assets/admin/vendor/poper/popper.min.js"></script>
<script src="/assets/admin/vendor/bootstrap/bootstrap.min.js"></script>
<script src="/assets/admin/vendor/nicescroll/jquery.nicescroll.min.js"></script>
<script src="/assets/admin/vendor/moment/moment.min.js"></script>
<script src="/assets/admin/js/stisla.js"></script>

<script src="/assets/default/vendors/toast/jquery.toast.min.js"></script>

<script>
    (function () {
        "use strict";

        <?php if(session()->has('toast')): ?>
        $.toast({
            heading: '<?php echo e(session()->get('toast')['title'] ?? ''); ?>',
            text: '<?php echo e(session()->get('toast')['msg'] ?? ''); ?>',
            bgColor: '<?php if(session()->get('toast')['status'] == 'success'): ?> #43d477 <?php else: ?> #f63c3c <?php endif; ?>',
            textColor: 'white',
            hideAfter: 10000,
            position: 'bottom-right',
            icon: '<?php echo e(session()->get('toast')['status']); ?>'
        });
        <?php endif; ?>
    })(jQuery);
</script>

<!-- Template JS File -->
<script src="/assets/admin/js/scripts.js"></script>
<script src="/assets/admin/js/custom.js"></script>

</body>
</html>
<?php /**PATH D:\Project\PHP\lms\Rocket_LMS\harvard\harvard\resources\views/admin/auth/auth_layout.blade.php ENDPATH**/ ?>