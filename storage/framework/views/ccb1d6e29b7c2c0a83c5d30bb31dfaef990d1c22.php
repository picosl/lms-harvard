 

<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/vendors/daterangepicker/daterangepicker.min.css">
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    

    
    
    
    <section class="">
        <div class="row">
            <div class="col-12">
                <div class="accordion-content-wrapper" id="CoursesAccordion" role="tablist" aria-multiselectable="true">
                    <?php $__currentLoopData = $sales; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sale): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    
                    <?php
    
                    $user = auth()->user();
                    
                    $course = \App\Models\Webinar::where('id', $sale->webinar_id)
                            ->with([
                                'quizzes' => function ($query) {
                                    $query->where('status', 'active')
                                        ->with(['quizResults', 'quizQuestions']);
                                },
                                'tags',
                                'prerequisites' => function ($query) {
                                    $query->with(['prerequisiteWebinar' => function ($query) {
                                        $query->with(['teacher' => function ($qu) {
                                            $qu->select('id', 'full_name', 'avatar');
                                        }]);
                                    }]);
                                    $query->orderBy('order', 'asc');
                                },
                                'faqs' => function ($query) {
                                    $query->orderBy('order', 'asc');
                                },
                                'webinarExtraDescription' => function ($query) {
                                    $query->orderBy('order', 'asc');
                                },
                                'chapters' => function ($query) use ($user) {
                                    $query->where('status', \App\Models\WebinarChapter::$chapterActive);
                                    $query->orderBy('order', 'asc');
                
                                    if($user->role_id == 1){
                                        $query->with([
                                            'chapterItems' => function ($query) {
                                                $query
                                                ->where('student_permission', 1)
                                                ->orderBy('order', 'asc');
                                            }
                                        ]);
                                    }else{
                                        $query->with([
                                            'chapterItems' => function ($query) {
                                                $query->orderBy('order', 'asc');
                                            }
                                        ]);
                                    }
                                    
                                },
                                'files' => function ($query) use ($user) {
                                    $query->join('webinar_chapters', 'webinar_chapters.id', '=', 'files.chapter_id')
                                        ->select('files.*', DB::raw('webinar_chapters.order as chapterOrder'))
                                        ->where('files.status', \App\Models\WebinarChapter::$chapterActive)
                                        ->where('files.student_permission', 1)
                                        ->orderBy('chapterOrder', 'asc')
                                        ->orderBy('files.order', 'asc')
                                        ->with([
                                            'learningStatus' => function ($query) use ($user) {
                                                $query->where('user_id', !empty($user) ? $user->id : null);
                                            }
                                        ]);
                                },
                                'textLessons' => function ($query) use ($user) {
                                    $query->where('status', \App\Models\WebinarChapter::$chapterActive)
                                        ->withCount(['attachments'])
                                        ->orderBy('order', 'asc')
                                        ->with([
                                            'learningStatus' => function ($query) use ($user) {
                                                $query->where('user_id', !empty($user) ? $user->id : null);
                                            }
                                        ]);
                                },
                                'sessions' => function ($query) use ($user) {
                                    $query->where('status', \App\Models\WebinarChapter::$chapterActive)
                                        ->orderBy('order', 'asc')
                                        ->with([
                                            'learningStatus' => function ($query) use ($user) {
                                                $query->where('user_id', !empty($user) ? $user->id : null);
                                            }
                                        ]);
                                },
                                'assignments' => function ($query) {
                                    $query->where('status', App\Models\WebinarChapter::$chapterActive);
                                },
                                'tickets' => function ($query) {
                                    $query->orderBy('order', 'asc');
                                },
                                'filterOptions',
                                'category',
                                'teacher',
                                'reviews' => function ($query) {
                                    $query->where('status', 'active');
                                    $query->with([
                                        'comments' => function ($query) {
                                            $query->where('status', 'active');
                                        },
                                        'creator' => function ($qu) {
                                            $qu->select('id', 'full_name', 'avatar');
                                        }
                                    ]);
                                },
                                'comments' => function ($query) {
                                    $query->where('status', 'active');
                                    $query->whereNull('reply_id');
                                    $query->with([
                                        'user' => function ($query) {
                                            $query->select('id', 'full_name', 'role_name', 'role_id', 'avatar');
                                        },
                                        'replies' => function ($query) {
                                            $query->where('status', 'active');
                                            $query->with([
                                                'user' => function ($query) {
                                                    $query->select('id', 'full_name', 'role_name', 'role_id', 'avatar');
                                                }
                                            ]);
                                        }
                                    ]);
                                    $query->orderBy('created_at', 'desc');
                                },
                            ])
                            ->withCount([
                                'sales' => function ($query) {
                                    $query->whereNull('refund_at');
                                },
                                'noticeboards'
                            ])
                            ->where('status', 'active')
                            ->first();
                            
                    $hasBought = $course->checkUserHasBought($user);
                    
                    ?>
                    
                    <div class="accordion-row rounded-sm border mt-20 p-15">
                        <div class="d-flex align-items-center justify-content-between" role="tab" id="chapter_<?php echo e($sale->webinar->id); ?>">
                            <div class="js-course-collapse-toggle d-flex align-items-center collapse" href="#collapseCourse<?php echo e($sale->webinar->id); ?>" aria-controls="collapseCourse<?php echo e($sale->webinar->id); ?>" data-parent="#coursesAccordion" role="button" data-toggle="collapse" aria-expanded="false">
                                <span class="chapter-icon mr-15">
                                     <i data-feather="grid" class=""></i>
                                </span>
            
                                <span class="font-weight-bold text-secondary font-28" style="font-size: 30px!important;"><?php echo e($sale->webinar->code); ?>-<?php echo e($sale->webinar->title); ?></span>
                            </div>
                            <div class="d-flex align-items-center">
                                <i id="cls" class="collapse-chevron-icon" data-feather="chevron-down" height="20" href="#collapseCourse<?php echo e(!empty($sale->webinar) ? $sale->webinar->id :'record'); ?>" aria-controls="collapseCourse<?php echo e(!empty($sale->webinar) ? $sale->webinar->id :'record'); ?>" data-parent="#coursesAccordion" role="button" data-toggle="collapse" aria-expanded="false"></i>
                            </div>
                        </div>
                        <!--Unit-->
                        <div class="row">
                            <div class="col-12">
                                <div class="accordion-content-wrapper" id="chaptersAccordion" role="tablist" aria-multiselectable="true">
                                    <?php $__currentLoopData = $course->chapters; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $chapter): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        
                                        <?php if((!empty($chapter->chapterItems) and count($chapter->chapterItems)) or (!empty($chapter->quizzes) and count($chapter->quizzes))): ?>
                                            <div class="accordion-row rounded-sm border mt-20 p-15">
                                                <div class="d-flex align-items-center justify-content-between" role="tab" id="chapter_<?php echo e($chapter->id); ?>">
                                                    <div class="js-chapter-collapse-toggle d-flex align-items-center collapse" href="#collapseChapter<?php echo e($chapter->id); ?>" aria-controls="collapseChapter<?php echo e($chapter->id); ?>" data-parent="#chaptersAccordion" role="button" data-toggle="collapse" aria-expanded="false">
                                                        <span class="chapter-icon mr-15">
                                                            <i data-feather="grid" class=""></i>
                                                        </span>
                        
                                                        <span class="font-weight-normal text-secondary" style="font-size: 20px!important; color: grey;"><?php echo e($chapter->code); ?>-<?php echo e($chapter->title); ?></span>
                                                    </div>
                        
                                                    <div class="d-flex align-items-center">
                                                        <span class="mr-15 font-14 text-gray">
                                                            <?php
                                                            $chapterItems = collect($chapter->chapterItems);

                                                            // Count items where the type is "assignment"
                                                            $assignmentItemsCount = $chapterItems->filter(function ($item) {
                                                                return $item->type === 'assignment';
                                                            })->count();
                                                            ?>
                                                            Total <?php echo e($assignmentItemsCount); ?> Assignment
                                                        </span>
                        
                                                        <i id="cls" class="collapse-chevron-icon" data-feather="chevron-down" height="20" href="#collapseChapter<?php echo e(!empty($chapter) ? $chapter->id :'record'); ?>" aria-controls="collapseChapter<?php echo e(!empty($chapter) ? $chapter->id :'record'); ?>" data-parent="#chaptersAccordion" role="button" data-toggle="collapse" aria-expanded="false"></i>
                                                    </div>
                                                </div>
                        
                                                <div id="collapseChapter<?php echo e($chapter->id); ?>" aria-labelledby="chapter_<?php echo e($chapter->id); ?>" class="collapse" role="tabpanel">
                                                    <div class="panel-collapse">
                                                        <?php if(!empty($chapter->chapterItems) and count($chapter->chapterItems)): ?>
                                                            <?php
                                                                //$col = collect($chapter->chapterItems);
                                                                //dd($col->sortByDesc('type'));
                                                                $hasFile = false;
                                                                $hasAssignment = false;
                                                            ?>
                                                           
                                                            <?php $__currentLoopData = collect($chapter->chapterItems)->sortByDesc('type'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $chapterItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <?php if($chapterItem->type == \App\Models\WebinarChapterItem::$chapterAssignment and !empty($chapterItem->assignment) and $chapterItem->assignment->status == 'active'): ?>
                                                                    <?php if(!$hasAssignment): ?>
                                                                        <h5>Assignment</h5>
                                                                        <?php $hasAssignment = true; ?>
                                                                    <?php endif; ?>
                                                                    <?php echo $__env->make('web.default.course.tabs.contents.assignment' ,['assignment' => $chapterItem->assignment, 'accordionParent' => 'chaptersAccordion'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        <?php endif; ?>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </section>

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script>
        var notAccessToastTitleLang = '<?php echo e(trans('public.not_access_toast_lang')); ?>';
        var notAccessToastMsgLang = '<?php echo e(trans('public.not_access_toast_msg_lang')); ?>';
    </script>
    <script src="/assets/default/vendors/daterangepicker/daterangepicker.min.js"></script>
    <script src="/assets/default/js/panel/my_assignments.min.js"></script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make(getTemplate() .'.panel.layouts.panel_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wlms/harvard.wlms.com.au/harvard/resources/views/web/default/panel/assignments/my-assignments.blade.php ENDPATH**/ ?>