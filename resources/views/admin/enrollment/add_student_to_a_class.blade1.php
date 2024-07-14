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
                                    <form action="/admin/enrollments/store" method="Post" data-select2-id="select2-data-7-b82u">
                                        {{ csrf_field() }}
                                        <div class="form-group" data-select2-id="select2-data-19-j9q4">
                                            <label class="input-label">Course</label>
                                            <select name="webinar_id" class="form-control select2" data-placeholder="Search classes" data-select2-id="select2-data-3-dl6q" tabindex="-1" aria-hidden="true">
                                                @foreach($webinars as $course)
                                                <option value="{{$course->id}}">{{$course->getTitleAttribute()}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group" data-select2-id="select2-data-6-yuvt">
                                            <label class="input-label d-block">Student</label>
                                            <select name="user_id" class="form-control select2" data-placeholder="Search student" data-select2-id="select2-data-1-o95a" tabindex="-1" aria-hidden="true">
                                                @foreach($students as $student)
                                                <option value="{{$student->id}}">{{$student->name}}</option>
                                                @endforeach
                                            </select>
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
