@extends(getTemplate() .'.panel.layouts.panel_layout') 

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/daterangepicker/daterangepicker.min.css">
@endpush

@section('content')
    <section class="section">

        {{--Header--}}
        {{--<div class="section-header">
            <h1>{{ $pageTitle }}</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="/admin/">{{trans('admin/main.dashboard')}}</a>
                </div>
                <div class="breadcrumb-item">{{ $pageTitle}}</div>
            </div>
        </div>--}}

        {{--Search--}}
        {{--<div class="section-body">
            <section class="card">
                <div class="card-body">
                    <form method="get" class="mb-0" data-select2-id="select2-data-8-fhsx">
                        <div class="row">
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Search</label>
                                <input type="text" class="form-control" name="item_title" value="">
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Start Date</label>
                                <div class="input-group">
                                    <input type="date" id="fsdate" class="text-center form-control" name="from" value="" placeholder="Start Date">
                                </div>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">End Date</label>
                                <div class="input-group">
                                    <input type="date" id="lsdate" class="text-center form-control" name="to" value="" placeholder="End Date">
                                </div>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Status</label>
                                <select name="status" data-plugin-selecttwo="" class="form-control populate">
                                    <option value="">All Statuses</option>
                                    <option value="success">Successful</option>
                                    <option value="refund">Refund</option>
                                    <option value="blocked">Access Blocked</option>
                                </select>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Course</label>
                                <select name="webinar_ids[]" multiple="" class="form-control search-webinar-select2 select2-hidden-accessible" data-placeholder="Search classes" data-select2-id="select2-data-5-4cze" tabindex="-1" aria-hidden="true">
                                </select>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Instructor</label>
                                <select name="teacher_ids[]" multiple="" data-search-option="just_teacher_role" class="form-control search-user-select2 select2-hidden-accessible" data-placeholder="Select an instructor" data-select2-id="select2-data-1-0670" tabindex="-1" aria-hidden="true">
                                </select>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group">
                                <label class="input-label">Student</label>
                                <select name="student_ids[]" multiple="" data-search-option="just_student_role" class="form-control search-user-select2 select2-hidden-accessible" data-placeholder="Select a student" data-select2-id="select2-data-3-tvpg" tabindex="-1" aria-hidden="true">
                                </select>
                            </div>
                            </div>
                            <div class="col-md-3">
                            <div class="form-group mt-1">
                                <label class="input-label mb-4"> </label>
                                <input type="submit" class="text-center btn btn-primary w-100" value="Show Results">
                            </div>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </div>--}}
        

        {{--Table--}}
        <section class="mt-35">
        <div class="d-flex align-items-start align-items-md-center justify-content-between flex-column flex-md-row">
            <h2 class="section-title">Instruction List</h2>
        </div>

        @if($course_instruction->count() > 0)

            <div class="panel-section-card py-20 px-25 mt-20">
                <div class="row">
                    <div class="col-12 ">
                        <div class="table-responsive">
                            <table class="table text-center custom-table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th class="text-center">Name</th>
                                    <th class="text-center">Instructor</th>
                                    <th class="text-center">Course</th>
                                    <th class="text-center">Date</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach($course_instruction as $ci)
                                    <tr>
                                        <td class="text-left">
                                            <span class="d-block font-16 font-weight-500 text-dark-blue">{{ $ci->id }}</span>
                                        </td>

                                        <td class="align-middle">
                                            <span class="font-weight-500">{{$ci->name}}</span>
                                        </td>

                                        <td class="align-middle">
                                            <span class="font-weight-500">{{ $ci->teacher_id!=null? $ci->teacher->full_name:""  }}</span>
                                        </td>

                                        <td class="align-middle">
                                            <span class="font-weight-500">{{ $ci->course_id!=null? $ci->webinar->slug:""  }}</span>
                                        </td>

                                        <td class="align-middle">
                                            <span class="font-weight-500">{{ dateTimeFormat($ci->created_at, 'j M Y') }}</span>
                                        </td>

                                        <td class="align-middle">
                                            <span>Active</span>
                                        </td>

                                        <td class="align-middle">
                                             <a href="{{ asset($ci->attach) }}" target="_blank" class="btn btn-sm text-primary" data-toggle="tooltip" title="Download">
                                                Download
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            {{--<div class="my-30">
                {{ $assignments->appends(request()->input())->links('vendor.pagination.panel') }}
            </div>--}}
        @else
            @include(getTemplate() . '.includes.no-result',[
                'file_name' => 'meeting.png',
                'title' => trans('update.my_assignments_no_result'),
                'hint' => nl2br(trans('update.my_assignments_no_result_hint_student')),
            ])
        @endif
    </section>


        {{--<div class="row">
            <div class="col-12 col-md-12">
                <div class="card">
                    <div class="card-header">
                        <a href="/admin/enrollments/export" class="btn btn-primary">Export Excel</a>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped font-14" id="datatable-details">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th class="text-middle">Name</th>
                                        <th class="text-middle">Instructor</th>
                                        <th class="text-middle">Course</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                        <th width="120">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($course_instruction as $ci)
                                        <tr>
                                            <td>
                                                <span class="d-block font-16 font-weight-500 text-dark-blue">{{ $ci->id }}</span>
                                            </td>

                                            <td>
                                                <span class="font-weight-500">{{$ci->name}}</span>
                                            </td>

                                            <td>
                                                <span class="font-weight-500">{{ $ci->teacher_id!=null? $ci->teacher->full_name:""  }}</span>
                                            </td>

                                            <td>
                                                <span>{{ $ci->course_id!=null? $ci->webinar->slug:""  }}</span>
                                            </td>

                                            <td>
                                            {{ dateTimeFormat($ci->created_at, 'j M Y') }}
                                                {{ date('d M Y i:s', $ci->created_at) }}
                                            </td>

                                            <td>
                                                <span class="text-success">Active</span>
                                            </td>

                                            <td class="align-middle text-right">
                                                
                                                @can('admin_quizzes_results')
                                                    <a href="{{ asset($ci->attach) }}" target="_blank" class="btn-transparent btn-sm text-primary" data-toggle="tooltip" title="Download">
                                                        <i class="fa fa-download fa-1x"></i>
                                                    </a>
                                                @endcan
                                                
                                            </td>
                                        </tr>
                                    @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>--}}
    </section>

@endsection

@push('scripts_bottom')

@endpush
