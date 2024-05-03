@extends('layouts.admin.master')
@section('title','Admin Home')
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
                <h3 class="mt-4 text-uppercase">User Query</h3>
                <div class="action-container">
                    <a href="{{route('download-inquiry-candidate')}}" class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-download mx-1'></i> Download</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-dashboard')}}">Dashboard</a></li>
                    <li class="breadcrumb-item active">All Queries</li>
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
                        ALL QUERIES
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Candidate</th>
                                    <th>Email</th>
                                    <th>Contact</th>
                                    <th>Background</th>
                                    <th>InterestedIn</th>
                                    <th>Message</th>
                                    <th>InquiryDate</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Candidate</th>
                                    <th>Email</th>
                                    <th>Contact</th>
                                    <th>Background</th>
                                    <th>InterestedIn</th>
                                    <th>Message</th>
                                    <th>InquiryDate</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @if($user_query)
                                @foreach($user_query as $uq)
                                <tr>
                                    <td>{{$uq->name}}</td>
                                    <td>{{$uq->email}}</td>
                                    <td>{{$uq->contact}}</td>
                                    <td>{{$uq->company_college_name}}</td>
                                    <td>
                                        @if($uq->course_ids)
                                        @php
                                            $course_ids=$uq->course_ids;
                                        @endphp
                                        @foreach($course_ids as $cid)
                                        @if($cid=="other")
                                        {{$uq->other_course}}
                                        @else
                                        @php
                                            $course=App\Models\Course::find($cid);
                                        @endphp
                                        @if($course)
                                        {{$course->name}}<br>
                                        @endif
                                        @endif
                                        @endforeach
                                        @endif
                                    </td>
                                    <td>{{$uq->message}}</td>
                                    <td>{{Carbon\Carbon::parse($uq->created_at)->format('d-M-y')}}</td>
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