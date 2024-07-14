@extends('admin.layouts.app')

@section('content')
    <section class="section">

        {{--Header--}}
        <div class="section-header">
            <h1>{{ $pageTitle }}</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="/admin/">{{trans('admin/main.dashboard')}}</a>
                </div>
                <div class="breadcrumb-item">{{ $pageTitle}}</div>
            </div>
        </div>

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
        <div class="row">
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

                                                @can('admin_quizzes_edit')
                                                    <a href="/admin/course_instruction/edit/{{$ci->id}}" class="btn-transparent btn-sm text-primary" data-toggle="tooltip" data-placement="top" title="{{ trans('admin/main.edit') }}">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                @endcan

                                                @can('admin_quizzes_delete')
                                                    @include('admin.includes.delete_button',['url' => '/admin/course_instruction/'.$ci->id.'/delete' , 'btnClass' => 'btn-sm'])
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
        </div>
    </section>

@endsection

@push('scripts_bottom')

@endpush
