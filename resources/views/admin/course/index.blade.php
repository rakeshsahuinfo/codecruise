@extends('layouts.admin.master')
@section('title','CODECRUISE | COURSES')
@section('headasset')
@stop
@section('content')
@include('admin.top-nav')
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        @include('admin.nav')
       
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h3 class="mt-4 text-uppercase">Courses</h3>
                <div class="action-container">
                    <a href="{{route('new-course')}}" class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-plus mx-1'></i> New Course</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-dashboard')}}">Dashboard</a></li>
                    <li class="breadcrumb-item active">Courses</li>
                </ol>
                <div class="card mb-4 {{session('msg')?'':'d-none'}}">
                    <div class="alert {{session('status')?'alert-'.session('status'):''}} alert-dismissible">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        {{session('msg')?session('msg'):''}}
                    </div>
                </div>
              
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        ALL COURSES
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Action</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Banner</th>
                                    <th>Status</th>
                                    <th>Created date</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Action</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Banner</th>
                                    <th>Status</th>
                                    <th>Created date</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @if($course)
                                @foreach($course as $c)
                                <tr>
                                    <td>
                                        <div class='d-flex'>
                                            <a href="{{route('show-course',$c->id)}}" class='text-info'> <i class='fas fa-eye'></i></a>                                
                                            <a href="{{route('edit-course',$c->id)}}" class='mx-3 text-primary'> <i class='fas fa-edit'></i></a>
                                            <a href='#'
                                                class='text-danger'
                                                data-class-level='$val' onclick='deleteModelData($val)'  data-toggle='modal'  data-target='#manage_model_data'>
                                                <i class='fas fa-trash'></i>
                                            </a>
                                        </div>
                                    </td>
                                    <td>{{$c->name}}</td>
                                    <td>{{$c->description}}</td>
                                    <td>
                                        <img class="img-fluid" width="200" height="100" src="{{ asset('storage/course_banner/' . $c->course_banner) }}" alt="Main Banner">
                                    </td>
                                    <td>{{$c->is_active==1?"Active":"Inactive"}}</td>
                                    <td>{{\Carbon\Carbon::parse($c->created_at)->format('d-M-y')}}</td>
                                  
                                </tr>
                                @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
        @include('admin.footer')
    </div>
</div>
@stop
@section('jsscript')
@stop