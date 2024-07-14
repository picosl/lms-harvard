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
                                    <form action="/admin/batchs/{{ $batch->id }}/update" method="Post" data-select2-id="select2-data-7-b82u">
                                        {{ csrf_field() }}
                                        <div class="form-group">
                                            <label>Batch Name</label>
                                            <input type="text" name="batch_name"
                                                   class="form-control  @error('batch_name') is-invalid @enderror"
                                                   value="{{ $batch->batch_name }}" required="" />
                                            @error('batch_name')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>
                                        
                                        <div class="form-group" data-select2-id="select2-data-19-j9q4">
                                            <label class="input-label">Course</label>
                                            <select name="webinar_id" required="" class="form-control search-webinar-select2 select2-hidden-accessible" data-placeholder="Search classes" data-select2-id="select2-data-3-dl6q" tabindex="-1" aria-hidden="true">
                                                <option value="{{ $batch->webinar_id }}" selected>{{ $batch->course->slug??"" }}</option>
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Start Date</label>
                                            <input type="date" name="start_date"
                                                   class="form-control  @error('start_date') is-invalid @enderror"
                                                   value="{{ $batch->start_date }}" required="" />
                                            @error('start_date')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>End Date</label>
                                            <input type="date" name="end_date"
                                                   class="form-control  @error('end_date') is-invalid @enderror"
                                                   value="{{ $batch->end_date }}" required="" />
                                            @error('end_date')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>
                                        
                                        
                                        
                                        <div class=" mt-4">
                                            <button type="submit" class="btn btn-primary">Update</button>
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
