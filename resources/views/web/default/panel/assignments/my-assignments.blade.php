@extends(getTemplate() .'.panel.layouts.panel_layout') 

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/daterangepicker/daterangepicker.min.css">
@endpush

@section('content')
    {{--<section>
        <h2 class="section-title">{{ trans('update.assignment_statistics') }}</h2>

        <div class="activities-container mt-25 p-20 p-lg-35">
            <div class="row">
                <div class="col-3 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/homework.svg" width="64" height="64" alt="">
                        <strong class="font-30 font-weight-bold mt-5">{{ $courseAssignmentsCount }}</strong>
                        <span class="font-16 text-dark-blue text-gray font-weight-500">{{ trans('update.course_assignments') }}</span>
                    </div>
                </div>

                <div class="col-3 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/58.svg" width="64" height="64" alt="">
                        <strong class="font-30 font-weight-bold mt-5">{{ $pendingReviewCount }}</strong>
                        <span class="font-16 text-dark-blue text-gray font-weight-500">{{ trans('update.pending_review') }}</span>
                    </div>
                </div>

                <div class="col-3 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/45.svg" width="64" height="64" alt="">
                        <strong class="font-30 text-dark-blue font-weight-bold mt-5">{{ $passedCount }}</strong>
                        <span class="font-16 text-gray font-weight-500">{{ trans('quiz.passed') }}</span>
                    </div>
                </div>

                <div class="col-3 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/pin.svg" width="64" height="64" alt="">
                        <strong class="font-30 text-dark-blue font-weight-bold mt-5">{{ $failedCount }}</strong>
                        <span class="font-16 text-gray font-weight-500">{{ trans('quiz.failed') }}</span>
                    </div>
                </div>

            </div>
        </div>
    </section>--}}

    {{--<section class="mt-25">
        <h2 class="section-title">{{ trans('update.filter_assignments') }}</h2>

        <div class="panel-section-card py-20 px-25 mt-20">
            <form action="/panel/assignments/my-assignments" method="get" class="row">
                <div class="col-12 col-lg-4">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label class="input-label">{{ trans('public.from') }}</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="dateInputGroupPrepend">
                                            <i data-feather="calendar" width="18" height="18" class="text-white"></i>
                                        </span>
                                    </div>
                                    <input type="text" name="from" autocomplete="off" class="form-control @if(!empty(request()->get('from'))) datepicker @else datefilter @endif"
                                           aria-describedby="dateInputGroupPrepend" value="{{ request()->get('from','') }}"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label class="input-label">{{ trans('public.to') }}</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="dateInputGroupPrepend">
                                            <i data-feather="calendar" width="18" height="18" class="text-white"></i>
                                        </span>
                                    </div>
                                    <input type="text" name="to" autocomplete="off" class="form-control @if(!empty(request()->get('to'))) datepicker @else datefilter @endif"
                                           aria-describedby="dateInputGroupPrepend" value="{{ request()->get('to','') }}"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="row">
                        <div class="col-12 col-lg-8">
                            <div class="form-group">
                                <label class="input-label">{{ trans('product.course') }}</label>
                                <select name="webinar_id" class="form-control select2">
                                    <option value="">{{ trans('webinars.all_courses') }}</option>

                                    @foreach($webinars as $webinar)
                                        <option value="{{ $webinar->id }}" @if(request()->get('webinar_id') == $webinar->id) selected @endif>{{ $webinar->title }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-12 col-lg-4">
                            <div class="form-group">
                                <label class="input-label">{{ trans('public.status') }}</label>
                                <select class="form-control" id="status" name="status">
                                    <option value="">{{ trans('public.all') }}</option>
                                    @foreach(\App\Models\WebinarAssignmentHistory::$assignmentHistoryStatus as $status)
                                        <option value="{{ $status }}" {{ (request()->get('status') == $status) ? 'selected' : '' }}>{{ trans('update.assignment_history_status_'.$status) }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-2 d-flex align-items-center justify-content-end">
                    <button type="submit" class="btn btn-sm btn-primary w-100 mt-2">{{ trans('public.show_results') }}</button>
                </div>
            </form>
        </div>
    </section>--}}
    
    
    <section class="">
        <div class="row">
            <div class="col-12">
                <div class="accordion-content-wrapper" id="CoursesAccordion" role="tablist" aria-multiselectable="true">
                    @foreach($sales as $sale)
                    
                    @php
    
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
                    
                    @endphp
                    
                    <div class="accordion-row rounded-sm border mt-20 p-15">
                        <div class="d-flex align-items-center justify-content-between" role="tab" id="chapter_{{ $sale->webinar->id }}">
                            <div class="js-course-collapse-toggle d-flex align-items-center collapse" href="#collapseCourse{{ $sale->webinar->id }}" aria-controls="collapseCourse{{  $sale->webinar->id }}" data-parent="#coursesAccordion" role="button" data-toggle="collapse" aria-expanded="false">
                                <span class="chapter-icon mr-15">
                                     <i data-feather="grid" class=""></i>
                                </span>
            
                                <span class="font-weight-bold text-secondary font-28" style="font-size: 30px!important;">{{ $sale->webinar->code }}-{{ $sale->webinar->title }}</span>
                            </div>
                            <div class="d-flex align-items-center">
                                <i id="cls" class="collapse-chevron-icon" data-feather="chevron-down" height="20" href="#collapseCourse{{ !empty($sale->webinar) ? $sale->webinar->id :'record' }}" aria-controls="collapseCourse{{ !empty($sale->webinar) ? $sale->webinar->id :'record' }}" data-parent="#coursesAccordion" role="button" data-toggle="collapse" aria-expanded="false"></i>
                            </div>
                        </div>
                        <!--Unit-->
                        <div class="row">
                            <div class="col-12">
                                <div class="accordion-content-wrapper" id="chaptersAccordion" role="tablist" aria-multiselectable="true">
                                    @foreach($course->chapters as $chapter)
                        
                                        @if((!empty($chapter->chapterItems) and count($chapter->chapterItems)) or (!empty($chapter->quizzes) and count($chapter->quizzes)))
                                            <div class="accordion-row rounded-sm border mt-20 p-15">
                                                <div class="d-flex align-items-center justify-content-between" role="tab" id="chapter_{{ $chapter->id }}">
                                                    <div class="js-chapter-collapse-toggle d-flex align-items-center collapse" href="#collapseChapter{{ $chapter->id }}" aria-controls="collapseChapter{{ $chapter->id }}" data-parent="#chaptersAccordion" role="button" data-toggle="collapse" aria-expanded="false">
                                                        <span class="chapter-icon mr-15">
                                                            <i data-feather="grid" class=""></i>
                                                        </span>
                        
                                                        <span class="font-weight-normal text-secondary" style="font-size: 20px!important; color: grey;">{{ $chapter->code }}-{{ $chapter->title }}</span>
                                                    </div>
                        
                                                    <div class="d-flex align-items-center">
                                                        <span class="mr-15 font-14 text-gray">
                                                            @php
                                                            $chapterItems = collect($chapter->chapterItems);

                                                            // Count items where the type is "assignment"
                                                            $assignmentItemsCount = $chapterItems->filter(function ($item) {
                                                                return $item->type === 'assignment';
                                                            })->count();
                                                            @endphp
                                                            Total {{ $assignmentItemsCount }} Assignment
                                                        </span>
                        
                                                        <i id="cls" class="collapse-chevron-icon" data-feather="chevron-down" height="20" href="#collapseChapter{{ !empty($chapter) ? $chapter->id :'record' }}" aria-controls="collapseChapter{{ !empty($chapter) ? $chapter->id :'record' }}" data-parent="#chaptersAccordion" role="button" data-toggle="collapse" aria-expanded="false"></i>
                                                    </div>
                                                </div>
                        
                                                <div id="collapseChapter{{ $chapter->id }}" aria-labelledby="chapter_{{ $chapter->id }}" class="collapse" role="tabpanel">
                                                    <div class="panel-collapse">
                                                        @if(!empty($chapter->chapterItems) and count($chapter->chapterItems))
                                                            @php
                                                                //$col = collect($chapter->chapterItems);
                                                                //dd($col->sortByDesc('type'));
                                                                $hasFile = false;
                                                                $hasAssignment = false;
                                                            @endphp
                                                           
                                                            @foreach(collect($chapter->chapterItems)->sortByDesc('type') as $chapterItem)
                                                                @if($chapterItem->type == \App\Models\WebinarChapterItem::$chapterAssignment and !empty($chapterItem->assignment) and $chapterItem->assignment->status == 'active')
                                                                    @if(!$hasAssignment)
                                                                        <h5>Assignment</h5>
                                                                        @php $hasAssignment = true; @endphp
                                                                    @endif
                                                                    @include('web.default.course.tabs.contents.assignment' ,['assignment' => $chapterItem->assignment, 'accordionParent' => 'chaptersAccordion'])
                                                                @endif
                                                            @endforeach
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>

@endsection

@push('scripts_bottom')
    <script>
        var notAccessToastTitleLang = '{{ trans('public.not_access_toast_lang') }}';
        var notAccessToastMsgLang = '{{ trans('public.not_access_toast_msg_lang') }}';
    </script>
    <script src="/assets/default/vendors/daterangepicker/daterangepicker.min.js"></script>
    <script src="/assets/default/js/panel/my_assignments.min.js"></script>
@endpush
