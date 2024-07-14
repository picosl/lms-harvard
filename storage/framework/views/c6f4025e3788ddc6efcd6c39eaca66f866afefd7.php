<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/vendors/sweetalert2/dist/sweetalert2.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/daterangepicker/daterangepicker.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/bootstrap-timepicker/bootstrap-timepicker.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/select2/select2.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/bootstrap-tagsinput/bootstrap-tagsinput.min.css">
    <link rel="stylesheet" href="/assets/vendors/summernote/summernote-bs4.min.css">
    <link href="/assets/default/vendors/sortable/jquery-ui.min.css"/>
    <style>
        .bootstrap-timepicker-widget table td input {
            width: 35px !important;
        }

        .select2-container {
            z-index: 1212 !important;
        }
    </style>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <section class="section">
        <div class="section-header">
            <h1><?php echo e(!empty($webinar) ?trans('/admin/main.edit'): trans('admin/main.new')); ?> <?php echo e(trans('admin/main.class')); ?></h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="/admin/"><?php echo e(trans('admin/main.dashboard')); ?></a>
                </div>
                <div class="breadcrumb-item active">
                    <a href="/admin/webinars"><?php echo e(trans('admin/main.classes')); ?></a>
                </div>
                <div class="breadcrumb-item"><?php echo e(!empty($webinar) ?trans('/admin/main.edit'): trans('admin/main.new')); ?></div>
            </div>
        </div>

        <div class="section-body">
           
            <div class="row">
                <div class="col-12 ">
                    <div class="card">
                        <div class="card-body">

                            <form method="post" action="/admin/webinars/<?php echo e(!empty($webinar) ? $webinar->id.'/update' : 'store'); ?>" id="webinarForm" class="webinar-form" >
                                <?php echo e(csrf_field()); ?>

                                <section>
                                    <h2 class="section-title after-line"><?php echo e(trans('public.basic_information')); ?></h2>

                                    <div class="row">
                                        <div class="col-12 col-md-5">

                                            <?php if(!empty(getGeneralSettings('content_translate'))): ?>
                                                <div class="form-group">
                                                    <label class="input-label"><?php echo e(trans('auth.language')); ?></label>
                                                    <select name="locale" class="form-control <?php echo e(!empty($webinar) ? 'js-edit-content-locale' : ''); ?>">
                                                        <?php $__currentLoopData = $userLanguages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lang => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <option value="<?php echo e($lang); ?>" <?php if(mb_strtolower(request()->get('locale', app()->getLocale())) == mb_strtolower($lang)): ?> selected <?php endif; ?>><?php echo e($language); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </select>
                                                    <?php $__errorArgs = ['locale'];
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
                                            <?php else: ?>
                                                <input type="hidden" name="locale" value="<?php echo e(getDefaultLocale()); ?>">
                                            <?php endif; ?>

                                            
                                            <div class="form-group mt-15 hideDiv">
                                                <label class="input-label d-block"><?php echo e(trans('panel.course_type')); ?></label>

                                                <select name="type" class="custom-select <?php $__errorArgs = ['type'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>  is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>">
                                                    
                                                    <option value="course" <?php if((!empty($webinar) and $webinar->isCourse()) or old('type') == \App\Models\Webinar::$course): ?> selected <?php endif; ?>><?php echo e(trans('product.video_course')); ?></option>
                                                    
                                                </select>

                                                <?php $__errorArgs = ['type'];
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
                                     
                                            
                                            <div class="form-group mt-15">
                                                <label class="input-label">Course Code<span style="color:red;">*</span></label>
                                                <input type="text" name="code" value="<?php echo e(!empty($webinar) ? $webinar->code : old('code')); ?>" class="form-control <?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>  is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" placeholder=""/>
                                                <?php $__errorArgs = ['code'];
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

                                            
                                            <div class="form-group mt-15">
                                                <label class="input-label">Course Name<span style="color:red;">*</span></label>
                                                <input type="text" name="title" value="<?php echo e(!empty($webinar) ? $webinar->title : old('title')); ?>" class="form-control <?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>  is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" placeholder=""/>
                                                <?php $__errorArgs = ['title'];
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

                                            

                                            
                                            

                                            
                                            

                                            
                                            <?php if(!empty($webinar) and $webinar->creator->isOrganization()): ?>
                                                <div class="form-group mt-15 ">
                                                    <label class="input-label d-block"><?php echo e(trans('admin/main.organization')); ?></label>

                                                    <select class="form-control" disabled readonly data-placeholder="<?php echo e(trans('public.search_instructor')); ?>">
                                                        <option selected><?php echo e($webinar->creator->full_name); ?></option>
                                                    </select>
                                                </div>
                                            <?php endif; ?>

                                            
                                            <div class="form-group mt-15 ">
                                                <label class="input-label d-block"><?php echo e(trans('admin/main.select_a_instructor')); ?><span style="color:red;">*</span></label>

                                                <select name="teacher_id" data-search-option="just_teacher_role" class="form-control common-select2"
                                                        data-placeholder="<?php echo e(trans('public.select_a_teacher')); ?>"
                                                >
                                                    <!--<?php if(!empty($webinar)): ?>-->
                                                    <!--    <option value="<?php echo e($webinar->teacher->id); ?>" selected><?php echo e($webinar->teacher->full_name); ?></option>-->
                                                    <!--<?php else: ?>-->
                                                    <!--    <option selected disabled><?php echo e(trans('public.select_a_teacher')); ?></option>-->
                                                    <!--<?php endif; ?>-->
                                                    
                                                    <?php if(count($teachers) > 0): ?>
                                                        <?php $__currentLoopData = $teachers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $teacher): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <option value="<?php echo e($teacher->id); ?>" <?php echo (!empty($webinar) && $webinar->teacher->id == $teacher->id) ? 'selected' : ''; ?>><?php echo e($teacher->full_name); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    <?php endif; ?>
                                                </select>

                                                <?php $__errorArgs = ['teacher_id'];
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

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            
                                        </div>
                                    </div>

                                    
                                    
                                </section>
                                
                                
                                <section class="mt-3 hideDiv">
                                    <h2 class="section-title after-line"><?php echo e(trans('public.additional_information')); ?></h2>
                                    <div class="row">
                                        <div class="col-12 col-md-6">

                                            
                                            

                                            <div class="row mt-15">
                                                
                                                <?php if(empty($webinar) or (!empty($webinar) and $webinar->isWebinar())): ?>
                                                    <div class="col-12 col-md-6 js-start_date <?php echo e((!empty(old('type')) and old('type') != \App\Models\Webinar::$webinar) ? 'd-none' : ''); ?>">
                                                        <div class="form-group">
                                                            <label class="input-label"><?php echo e(trans('public.start_date')); ?></label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text" id="dateInputGroupPrepend">
                                                                        <i class="fa fa-calendar-alt "></i>
                                                                    </span>
                                                                </div>
                                                                <input type="text" name="start_date" value="<?php echo e((!empty($webinar) and $webinar->start_date) ? dateTimeFormat($webinar->start_date, 'Y-m-d H:i', false, false, $webinar->timezone) : old('start_date')); ?>" class="form-control <?php $__errorArgs = ['start_date'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>  is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> datetimepicker" aria-describedby="dateInputGroupPrepend"/>
                                                                <?php $__errorArgs = ['start_date'];
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
                                                        </div>
                                                    </div>
                                                <?php endif; ?>

                                                
                                                <div class="col-12 col-md-6">
                                                    <div class="form-group">
                                                        <label class="input-label"><?php echo e(trans('public.duration')); ?> (<?php echo e(trans('public.minutes')); ?>)</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text" id="timeInputGroupPrepend">
                                                                    <i class="fa fa-clock"></i>
                                                                </span>
                                                            </div>


                                                            <input type="text" name="duration" value="<?php echo e(!empty($webinar) ? $webinar->duration : old('duration')); ?>" class="form-control <?php $__errorArgs = ['duration'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>  is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"/>
                                                            <?php $__errorArgs = ['duration'];
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
                                                    </div>
                                                </div>
                                            </div>

                                            
                                            

                                            <?php if(!empty($webinar) and $webinar->creator->isOrganization()): ?>
                                                <div class="form-group mt-30 d-flex align-items-center justify-content-between">
                                                    <label class="" for="privateSwitch"><?php echo e(trans('webinars.private')); ?></label>
                                                    <div class="custom-control custom-switch">
                                                        <input type="checkbox" name="private" class="custom-control-input" id="privateSwitch" <?php echo e((!empty($webinar) and $webinar->private) ? 'checked' :  ''); ?>>
                                                        <label class="custom-control-label" for="privateSwitch"></label>
                                                    </div>
                                                </div>
                                            <?php endif; ?>

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            <div class="form-group mt-15">
                                                <label class="input-label"><?php echo e(trans('update.access_days')); ?></label>
                                                <input type="text" name="access_days" value="<?php echo e(!empty($webinar) ? $webinar->access_days : old('access_days')); ?>" class="form-control <?php $__errorArgs = ['access_days'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>  is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"/>
                                                <?php $__errorArgs = ['access_days'];
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
                                                <p class="mt-1">- <?php echo e(trans('update.access_days_input_hint')); ?></p>
                                            </div>

                                            
                                            

                                            
                                            <div id="partnerInstructorInput" class="form-group mt-15 <?php echo e(!empty($webinar) && $webinar->partner_instructor ? '' : 'd-none'); ?>">
                                                <label class="input-label d-block"><?php echo e(trans('public.select_a_partner_teacher')); ?></label>

                                                <select name="partners[]" multiple data-search-option="just_teacher_role" class="form-control search-user-select2"
                                                        data-placeholder="<?php echo e(trans('public.search_instructor')); ?>"
                                                >
                                                    <?php if(!empty($webinarPartnerTeacher)): ?>
                                                        <?php $__currentLoopData = $webinarPartnerTeacher; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $partner): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <?php if(!empty($partner) and $partner->teacher): ?>
                                                                <option value="<?php echo e($partner->teacher->id); ?>" selected><?php echo e($partner->teacher->full_name); ?></option>
                                                            <?php endif; ?>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    <?php else: ?>
                                                        <option selected disabled><?php echo e(trans('public.search_instructor')); ?></option>
                                                    <?php endif; ?>
                                                </select>

                                                <div class="text-muted text-small mt-1"><?php echo e(trans('admin/main.select_a_partner_hint')); ?></div>
                                            </div>

                                            
                                            

                                            
                                            

                                        </div>
                                    </div>

                                    <div class="form-group mt-15 <?php echo e((!empty($webinarCategoryFilters) and count($webinarCategoryFilters)) ? '' : 'd-none'); ?>" id="categoriesFiltersContainer">
                                        <span class="input-label d-block"><?php echo e(trans('public.category_filters')); ?></span>
                                        <div id="categoriesFiltersCard" class="row mt-3">

                                            <?php if(!empty($webinarCategoryFilters) and count($webinarCategoryFilters)): ?>
                                                <?php $__currentLoopData = $webinarCategoryFilters; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $filter): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <div class="col-12 col-md-3">
                                                        <div class="webinar-category-filters">
                                                            <strong class="category-filter-title d-block"><?php echo e($filter->title); ?></strong>
                                                            <div class="py-10"></div>

                                                            <?php $__currentLoopData = $filter->options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <div class="form-group mt-3 d-flex align-items-center justify-content-between">
                                                                    <label class="text-gray font-14" for="filterOptions<?php echo e($option->id); ?>"><?php echo e($option->title); ?></label>
                                                                    <div class="custom-control custom-checkbox">
                                                                        <input type="checkbox" name="filters[]" value="<?php echo e($option->id); ?>" <?php echo e(((!empty($webinarFilterOptions) && in_array($option->id,$webinarFilterOptions)) ? 'checked' : '')); ?> class="custom-control-input" id="filterOptions<?php echo e($option->id); ?>">
                                                                        <label class="custom-control-label" for="filterOptions<?php echo e($option->id); ?>"></label>
                                                                    </div>
                                                                </div>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        </div>
                                                    </div>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>

                                        </div>
                                    </div>
                                </section>


                                <?php if(!empty($webinar)): ?>
                                    
                                    
                                    

                                    <?php echo $__env->make('admin.webinars.create_includes.contents', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                    
                                    

                                    
                                    

                                    
                                    

                                    
                                    <section class="mt-30">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <h2 class="section-title after-line">Quiz</h2>
                                            <button id="webinarAddQuiz" type="button" class="btn btn-primary btn-sm mt-3"><?php echo e(trans('public.add_quiz')); ?></button>
                                        </div>
                                        <div class="row mt-10">
                                            <div class="col-12">
                                                <?php if(!empty($webinarQuizzes) and !$webinarQuizzes->isEmpty()): ?>
                                                    <div class="table-responsive">
                                                        <table class="table table-striped text-center font-14">

                                                            <tr>
                                                                <th><?php echo e(trans('public.title')); ?></th>
                                                                <th><?php echo e(trans('public.questions')); ?></th>
                                                                <th><?php echo e(trans('public.total_mark')); ?></th>
                                                                <th><?php echo e(trans('public.pass_mark')); ?></th>
                                                                <th><?php echo e(trans('public.certificate')); ?></th>
                                                                <th></th>
                                                            </tr>

                                                            <?php $__currentLoopData = $webinarQuizzes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $webinarQuiz): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <tr>
                                                                    <th><?php echo e($webinarQuiz->title); ?></th>
                                                                    <td><?php echo e($webinarQuiz->quizQuestions->count()); ?></td>
                                                                    <td><?php echo e($webinarQuiz->quizQuestions->sum('grade')); ?></td>
                                                                    <td><?php echo e($webinarQuiz->pass_mark); ?></td>
                                                                    <td><?php echo e($webinarQuiz->certificate ? trans('public.yes') : trans('public.no')); ?></td>
                                                                    <td>
                                                                        <button type="button" data-webinar-quiz-id="<?php echo e($webinarQuiz->id); ?>" data-webinar-id="<?php echo e(!empty($webinar) ? $webinar->id : ''); ?>" class="edit-webinar-quiz btn-transparent text-primary mt-1" data-toggle="tooltip" data-placement="top" title="<?php echo e(trans('admin/main.edit')); ?>">
                                                                            <i class="fa fa-edit"></i>
                                                                        </button>

                                                                        <?php echo $__env->make('admin.includes.delete_button',['url' => '/admin/webinar-quiz/'. $webinarQuiz->id .'/delete', 'btnClass' => ' mt-1'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                                    </td>
                                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                </tr>

                                                        </table>
                                                    </div>
                                                <?php else: ?>
                                                    <?php echo $__env->make('admin.includes.no-result',[
                                                        'file_name' => 'cert.png',
                                                        'title' => trans('public.quizzes_no_result'),
                                                        'hint' => trans('public.quizzes_no_result_hint'),
                                                    ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </section>
                                <?php endif; ?>

                                
                                <section class="mt-3 hideDiv">
                                    <h2 class="section-title after-line"><?php echo e(trans('public.message_to_reviewer')); ?></h2>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group mt-15">
                                                <textarea name="message_for_reviewer" rows="10" class="form-control"><?php echo e((!empty($webinar) && $webinar->message_for_reviewer) ? $webinar->message_for_reviewer : old('message_for_reviewer')); ?></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </section>

                                <input type="hidden" name="draft" value="no" id="forDraft"/>

                                <div class="row">
                                    <div class="col-12">
                                        <button type="button" id="saveAndPublish" class="btn btn-success"><?php echo e(!empty($webinar) ? trans('admin/main.save_and_publish') : trans('admin/main.save_and_continue')); ?></button>

                                        <?php if(!empty($webinar)): ?>
                                            <button type="button" id="saveReject" class="btn btn-warning"><?php echo e(trans('public.reject')); ?></button>

                                            <?php echo $__env->make('admin.includes.delete_button',[
                                                    'url' => '/admin/webinars/'. $webinar->id .'/delete',
                                                    'btnText' => trans('public.delete'),
                                                    'hideDefaultClass' => true,
                                                    'btnClass' => 'btn btn-danger'
                                                    ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </form>

                            <?php echo $__env->make('admin.webinars.modals.prerequisites', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make('admin.webinars.modals.quizzes', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make('admin.webinars.modals.ticket', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make('admin.webinars.modals.chapter', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make('admin.webinars.modals.session', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make('admin.webinars.modals.file', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make('admin.webinars.modals.interactive_file', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make('admin.webinars.modals.faq', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make('admin.webinars.modals.testLesson', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make('admin.webinars.modals.assignment', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo $__env->make('admin.webinars.modals.extra_description', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script>
        var saveSuccessLang = '<?php echo e(trans('webinars.success_store')); ?>';
        var titleLang = '<?php echo e(trans('admin/main.title')); ?>';
        var zoomJwtTokenInvalid = '<?php echo e(trans('admin/main.teacher_zoom_jwt_token_invalid')); ?>';
        var editChapterLang = '<?php echo e(trans('public.edit_chapter')); ?>';
        var requestFailedLang = '<?php echo e(trans('public.request_failed')); ?>';
        var thisLiveHasEndedLang = '<?php echo e(trans('update.this_live_has_been_ended')); ?>';
        var quizzesSectionLang = '<?php echo e(trans('quiz.quizzes_section')); ?>';
        var filePathPlaceHolderBySource = {
            upload: '<?php echo e(trans('update.file_source_upload_placeholder')); ?>',
            youtube: '<?php echo e(trans('update.file_source_youtube_placeholder')); ?>',
            vimeo: '<?php echo e(trans('update.file_source_vimeo_placeholder')); ?>',
            external_link: '<?php echo e(trans('update.file_source_external_link_placeholder')); ?>',
            google_drive: '<?php echo e(trans('update.file_source_google_drive_placeholder')); ?>',
            dropbox: '<?php echo e(trans('update.file_source_dropbox_placeholder')); ?>',
            iframe: '<?php echo e(trans('update.file_source_iframe_placeholder')); ?>',
            s3: '<?php echo e(trans('update.file_source_s3_placeholder')); ?>',
        }

        //Making Guide
        function check(radio) {
            if (radio == 'others') {
                $(".grade").hide();
                $(".pass_grade").hide();
            }
            if (radio == 'grading') {
                $(".grade").show();
                $(".pass_grade").show();
            }  
        }

    </script>

    

    <script src="/assets/default/vendors/sweetalert2/dist/sweetalert2.min.js"></script>
    <script src="/assets/default/vendors/feather-icons/dist/feather.min.js"></script>
    <script src="/assets/default/vendors/select2/select2.min.js"></script>
    <script src="/assets/default/vendors/moment.min.js"></script>
    <script src="/assets/default/vendors/daterangepicker/daterangepicker.min.js"></script>
    <script src="/assets/default/vendors/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
    <script src="/assets/default/vendors/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
    <script src="/assets/vendors/summernote/summernote-bs4.min.js"></script>
    <script src="/assets/default/vendors/sortable/jquery-ui.min.js"></script>

    <script src="/assets/default/js/admin/quiz.min.js"></script>
    <script src="/assets/admin/js/webinar.min.js"></script>


    

<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wlms/iiet.wlms.com.au/iiet/resources/views/admin/webinars/create.blade.php ENDPATH**/ ?>