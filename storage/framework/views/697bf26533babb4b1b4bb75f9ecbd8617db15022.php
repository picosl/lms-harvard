<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/vendors/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/owl-carousel2/owl.carousel.min.css">
    
    <style>
        .container1 {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
            width: 50%;
            text-align: center;
        }
    </style>
    
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>

    
    <div class="container">
        <?php if(!empty(session()->has('msg'))): ?>
            <div class="alert alert-info alert-dismissible fade show mt-30" role="alert">
                <?php echo e(session()->get('msg')); ?>

                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php endif; ?>

        <div class="row">

            <!--<div class="col-12 col-md-6 pl-0">-->
            <!--    <img src="<?php echo e(getPageBackgroundSettings('login')); ?>" class="img-cover" alt="Login">-->
            <!--</div>-->
            
            <div class="col-md-12" style="margin-right: 100px;">  

                <div class="login-card login-container container1 mx-auto">

                    <div class="row">
                        <div class="col-md-6" style="background: linear-gradient(to right, #FFFDD0, #FFFDD0);
                        margin-top: -75px; margin-bottom: -75px; margin-left: -30px;margin-right= -30px; border-radius: 10px 0px 0px 10px;">
                            <div class="overlay-container1 col-md-6" style="position: relative;display: grid;
                            place-items: center;
                            height: 70vh;">
                                <div class="overlay1" style="position: absolute;
                                top: 30%;
                                left: 30%;
                                width:100%
                                transform: translate(50%, 50%);">
                                    <?php if(!empty($generalSettings['logo'])): ?>
                                        <img src="<?php echo e($generalSettings['logo']); ?>" style="height: 60%; width: 100%; object-fit: contain;">
                                    <?php endif; ?>
                                    <!--<img src="<?php echo e(asset('assets/logo.jpg')); ?>" style="height: 60%; width: 100%; object-fit: contain;"/>-->
                                    &nbsp;<h2 style="color: #00005C">Learning Management System</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="margin-left: 30px;">
                            <h1 class="font-20 font-weight-bold">Login to Wonder LMS</h1>&nbsp;&nbsp;

                            <form method="Post" action="/login" class="mt-35">
                                <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                                <div class="form-group" >
                                    
                                    <input name="username" type="text" class="form-control <?php $__errorArgs = ['username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="username"
                                           value="<?php echo e(old('username')); ?>" aria-describedby="emailHelp" placeholder="Email">
                                    <?php $__errorArgs = ['username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <div class="invalid-feedback">
                                        <?php echo e($message); ?>

                                    </div>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
        
                                <div class="form-group" >
                                    <input name="password" type="password" placeholder="Password" class="form-control <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>  is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="password" aria-describedby="passwordHelp">
        
                                    <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <div class="invalid-feedback">
                                        <?php echo e($message); ?>

                                    </div>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <br>
                                <div class="form-group" style="margin: 0px 20px;">
                                    <button type="submit" class="btn btn-primary btn-block mt-20"><?php echo e(trans('auth.login')); ?></button>
                                </div>
                                
                            </form>
                        </div>
                    </div>

                </div>
            </div>
            
        </div>
    </div>

    <?php if(!empty($heroSectionData)): ?>

        <?php if(!empty($heroSectionData['has_lottie']) and $heroSectionData['has_lottie'] == "1"): ?>
            <?php $__env->startPush('scripts_bottom'); ?>
                <script src="/assets/default/vendors/lottie/lottie-player.js"></script>
            <?php $__env->stopPush(); ?>
        <?php endif; ?>

        
    <?php endif; ?>

    


    <?php $__currentLoopData = $homeSections; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeSection): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$featured_classes and !empty($featureWebinars) and !$featureWebinars->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$latest_bundles and !empty($latestBundles) and !$latestBundles->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$latest_classes and !empty($latestWebinars) and !$latestWebinars->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$best_rates and !empty($bestRateWebinars) and !$bestRateWebinars->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$trend_categories and !empty($trendCategories) and !$trendCategories->isEmpty()): ?>
            
        <?php endif; ?>

        
        <?php if($homeSection->name == \App\Models\HomeSection::$full_advertising_banner and !empty($advertisingBanners1) and count($advertisingBanners1)): ?>
            
        <?php endif; ?>
        

        <?php if($homeSection->name == \App\Models\HomeSection::$best_sellers and !empty($bestSaleWebinars) and !$bestSaleWebinars->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$discount_classes and !empty($hasDiscountWebinars) and !$hasDiscountWebinars->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$free_classes and !empty($freeWebinars) and !$freeWebinars->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$store_products and !empty($newProducts) and !$newProducts->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$testimonials and !empty($testimonials) and !$testimonials->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$subscribes and !empty($subscribes) and !$subscribes->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$find_instructors and !empty($findInstructorSection)): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$reward_program and !empty($rewardProgramSection)): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$become_instructor and !empty($becomeInstructorSection)): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$forum_section and !empty($forumSection)): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$video_or_image_section and !empty($boxVideoOrImage)): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$instructors and !empty($instructors) and !$instructors->isEmpty()): ?>
            
        <?php endif; ?>

        
        <?php if($homeSection->name == \App\Models\HomeSection::$half_advertising_banner and !empty($advertisingBanners2) and count($advertisingBanners2)): ?>
            
        <?php endif; ?>
        

        <?php if($homeSection->name == \App\Models\HomeSection::$organizations and !empty($organizations) and !$organizations->isEmpty()): ?>
            
        <?php endif; ?>

        <?php if($homeSection->name == \App\Models\HomeSection::$blog and !empty($blog) and !$blog->isEmpty()): ?>
            
        <?php endif; ?>

    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/vendors/swiper/swiper-bundle.min.js"></script>
    <script src="/assets/default/vendors/owl-carousel2/owl.carousel.min.js"></script>
    <script src="/assets/default/vendors/parallax/parallax.min.js"></script>
    <script src="/assets/default/js/parts/home.min.js"></script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make(getTemplate().'.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wlms/harvard.wlms.com.au/harvard/resources/views/web/default/pages/home.blade.php ENDPATH**/ ?>