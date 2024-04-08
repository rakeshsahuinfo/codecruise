@extends('layouts.admin.master')
@section('title','CODECRUISE | TECH STACK')
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
                <h3 class="mt-4 text-uppercase">Tech Stack</h3>
                <div class="action-container">
                    <a href="{{route('new-tech-stack')}}" class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-plus mx-1'></i> New Tech Stack</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-tech-stack')}}">Dashboard</a></li>
                    <li class="breadcrumb-item active">Tech Stack</li>
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
                        ALL TECH STACKS
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Action</th>
                                    <th>Name</th>
                                    <th>Logo</th>
                                    <th>Status</th>
                                    <th>CreatedDate</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Action</th>
                                    <th>Name</th>
                                    <th>Logo</th>
                                    <th>Status</th>
                                    <th>CreatedDate</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @if($techstack)
                                @foreach($techstack as $ts)
                                <tr>
                                    <td>
                                        <div class='d-flex'>
                                            <a href="{{route('show-tech-stack',$ts->id)}}" title="View Tech Stack" class='text-dark'><i class='fas fa-eye'></i></a>                                
                                            <a href="{{route('edit-tech-stack',$ts->id)}}" title="Delete Tech Stack" class='mx-4 text-danger'><i class='fas fa-trash'></i></a>
                                            <a href="{{route('edit-tech-stack',$ts->id)}}" title="Edit Tech Stack" class='text-primary'><i class='fas fa-edit'></i></a>
                                        </div>
                                    </td>
                                    <td>{{$ts->name}}</td>
                                    <td>
                                        <img class="img-fluid" width="100" height="100" src="{{ asset('storage/tech_stack/' . $ts->tech_stack_logo) }}" alt="Main Logo">
                                    </td>
                                    <td>{{$ts->is_active==1?"Active":"Inactive"}}</td>
                                    <td>{{\Carbon\Carbon::parse($ts->created_at)->format('d-M-y')}}</td>
                                  
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