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

        {{--Table--}}
        <div class="row">
            <div class="col-12 col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped font-14" id="datatable-details">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th class="text-middle">Batch Name</th>
                                        <th class="text-middle">Course</th>
                                        <th class="text-middle">Start Date</th>
                                        <th class="text-middle">End Date</th>
                                        <th width="120">Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($batch_list as $row)
                                        <tr>
                                            <td>
                                                <span class="d-block font-16 font-weight-500 text-dark-blue">{{ $row->id }}</span>
                                            </td>

                                            <td>
                                                <span class="font-weight-500">{{ $row->batch_name  }}</span>
                                            </td>
                                            
                                            <td>
                                                <span class="font-weight-500">{{ $row->course->slug??""  }}</span>
                                            </td>

                                            <td>
                                                {{ date('d M Y', strtotime($row->start_date)) }}
                                            </td>
                                            
                                            <td>
                                                {{ date('d M Y', strtotime($row->end_date)) }}
                                            </td>

                                            <td class="align-middle text-right">
                                                
                                                <a href="/admin/batchs/{{ $row->id }}/edit"><i class="fa fa-edit" aria-hidden="true"></i></a>
                                                @include('admin.includes.delete_button',['url' => '/admin/batchs/'.$row->id.'/delete' , 'btnClass' => ''])
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
