@extends('layouts.admin.master')
@section('title','CODECRUISE | NEW COURSE')
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
                    <a href="{{route('admin-course')}}" class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-eye mx-1'></i> All Courses</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-dashboard')}}">Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="{{route('admin-course')}}">Courses</a></li>
                    <li class="breadcrumb-item active">New Course</li>
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
                        NEW COURSE
                    </div>
                    <div class="card-body">
                        <div class="col-md-8 offset-md-1">
                            <form id="create-property-amenity" method="POST"
                                action="{{route('create-course')}}" enctype="multipart/form-data">
                                <div class="bp-list-wrapper">
                                    @csrf
                                    <div class="form-row form-row-2 px-3 py-2">
                                      
                                        <div class="form-group w-100  my-4">
                                            <label for="name">Course Name</label>
                                            <input type="text" class="form-control" name="name" id="name">
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="description">Course Description</label>
                                            <textarea class="form-control" name="description" id="description" cols="30" rows="5"></textarea>
                                        </div>
                                        
                                        <div class="form-group w-100  my-4">
                                            <label for="course_banner">Course Banner</label>
                                            <input type="file" accept="image/*" class="form-control" name="course_banner" id="course_banner">
                                        </div>
                                        
                                        <div class="form-group w-100 my-4">
                                            <label for="is_active">Status</label>
                                            <select class="selectpicker form-control" data-live-search="true" data-size="8" name="is_active" id="is_active" required>
                                                <option value="1" selected>Active</option>
                                                <option value="0">Inactive</option>
                                            </select>
                                        </div>
                                      
                                        <div class="form-group text-center mt-2" style="width: 100%;">
                                            <button type="submit" class="btn btn-submit btn-dark w-100">CRAETE COURSE <i class="fas fa-arrow-right"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
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