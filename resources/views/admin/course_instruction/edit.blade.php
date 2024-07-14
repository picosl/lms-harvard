@extends('admin.layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>{{ $pageTitle }}</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="/admin/">{{trans('admin/main.dashboard')}}</a>
                </div>
                <div class="breadcrumb-item">{{ $pageTitle}}</div>
            </div>
        </div>

        <div class="section-body">

            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="row" data-select2-id="select2-data-9-dj9p">
                                <div class="col-12 col-md-6" data-select2-id="select2-data-8-7l60">
                                    <form action="/admin/course_instruction/store" method="Post" >
                                        {{ csrf_field() }}

                                        <div class="form-group">
                                            <label>Name</label>
                                            <input type="text" name="name" class="form-control" value="{{ $ci->name }}" placeholder="Name (optional)">
                                        </div>

                                        <div class="form-group" data-select2-id="select2-data-19-j9q4">
                                            <label class="input-label">Course</label>
                                            <select name="webinar_id" class="form-control search-webinar-select2 select2-hidden-accessible" data-placeholder="Search classes" data-select2-id="select2-data-3-dl6q" tabindex="-1" aria-hidden="true">
                                                @if(!empty($ci))
                                                    <option value="{{ $ci->course_id }}" selected>{{ $ci->webinar->slug }}</option>
                                                @else
                                                    <option selected disabled>Please select course</option>
                                                @endif
                                            </select>
                                        </div>

                                        <div class="form-group" data-select2-id="select2-data-6-yuvt">
                                            <label class="input-label d-block">Teacher</label>
                                            <select name="user_id" class="form-control search-user-select2 select2-hidden-accessible" data-placeholder="Search user" data-select2-id="select2-data-1-o95a" tabindex="-1" aria-hidden="true">
                                                @if(!empty($ci))
                                                    <option value="{{ $ci->teacher_id }}" selected>{{ $ci->teacher->full_name }}</option>
                                                @else
                                                    <option selected disabled>{{ trans('public.select_a_teacher') }}</option>
                                                @endif
                                            </select>
                                        </div>

                                        {{--File Upload--}}
                                        <div class="js-assignment-attachments-items form-group mt-15">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <label class="input-label mb-0">{{ trans('public.attachments') }}</label>

                                                {{--<button type="button" class="btn btn-primary btn-sm assignment-attachments-add-btn">
                                                    <i class="fa fa-plus"></i>
                                                </button>--}}
                                            </div>

                                            <div class="assignment-attachments-main-row js-ajax-attachments position-relative">
                                                <div class="mt-2 p-2 border rounded">
                                                    <div class="mb-2">
                                                        <label class="input-label">{{ trans('public.title') }}</label>
                                                        <input type="text" name="attachments[assignmentTemp][title]" class="form-control" placeholder="{{ trans('forms.maximum_255_characters') }}"/>
                                                    </div>

                                                    <div class="input-group product-images-input-group">
                                                        <div class="input-group-prepend">
                                                            <button type="button" class="input-group-text admin-file-manager" data-input="attachments_assignmentTemp" data-preview="holder">
                                                                <i class="fa fa-upload"></i>
                                                            </button>
                                                        </div>
                                                        <input type="text" name="attachments[assignmentTemp][attach]" id="attachments_assignmentTemp" value="" class="form-control" placeholder="{{ trans('update.assignment_attachments_placeholder') }}"/>
                                                    </div>
                                                </div>

                                                <button type="button" class="btn btn-danger btn-sm assignment-attachments-remove-btn d-none">
                                                    <i class="fa fa-times"></i>
                                                </button>
                                            </div>

                                            <div class="invalid-feedback"></div>

                                            <div class="js-assignment-attachments-lists"></div>
                                        </div>

                                        {{--Status--}}
                                        <div class="js-textLesson-status form-group mt-3">
                                            <div class="d-flex align-items-center justify-content-between">
                                                <label class="cursor-pointer input-label" for="textLessonStatusSwitch_record">{{ trans('admin/main.active') }}</label>
                                                <div class="custom-control custom-switch">
                                                    <input type="checkbox" name="status" checked class="custom-control-input" id="textLessonStatusSwitch_record">
                                                    <label class="custom-control-label" for="textLessonStatusSwitch_record"></label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class=" mt-4">
                                            <button type="submit" class="btn btn-primary">Add</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





@endsection

@push('scripts_bottom')

@endpush
