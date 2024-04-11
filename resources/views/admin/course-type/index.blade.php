@extends('layouts.admin.master')
@section('title','CODECRUISE | COURSE CATEGORY')
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
                <h3 class="mt-4 text-uppercase">Course type</h3>
                <div class="action-container">
                    <a href="{{route('new-course-type')}}" class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-plus mx-1'></i> New Course Type</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-course-type')}}">Dashboard</a></li>
                    <li class="breadcrumb-item active">COURSE TYPE</li>
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
                        ALL COURSE TYPE
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Action</th>
                                    <th>Name</th>
                                    <th>Status</th>
                                    <th>CreatedDate</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Action</th>
                                    <th>Name</th>
                                    <th>Status</th>
                                    <th>CreatedDate</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @if($coursetype)
                                @foreach($coursetype as $ct)
                                <tr>
                                    <td>
                                        <div class='d-flex'>
                                            <a href="{{route('edit-course-type',$ct->id)}}" title="View Course Type" class='text-dark'><i class='fas fa-eye'></i></a>                                
                                            <a href="{{route('edit-course-type',$ct->id)}}" title="Delete Course Type" class='mx-4 text-danger'><i class='fas fa-trash'></i></a>
                                            <a href="{{route('edit-course-type',$ct->id)}}" title="Edit Course Type" class='text-primary'><i class='fas fa-edit'></i></a>
                                        </div>
                                    </td>
                                    <td>{{$ct->name}}</td>
                                   
                                    <td>{{$ct->is_active==1?"Active":"Inactive"}}</td>
                                    <td>{{\Carbon\Carbon::parse($ct->created_at)->format('d-M-y')}}</td>
                                  
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