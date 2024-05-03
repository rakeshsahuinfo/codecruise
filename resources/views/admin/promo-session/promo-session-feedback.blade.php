@extends('layouts.admin.master')
@section('title','User Feedback')
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
                <h3 class="mt-4 text-uppercase">User Feedback</h3>
               
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-dashboard')}}">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="{{route('admin-promo-session')}}">Promo Sessions</a></li>
                    <li class="breadcrumb-item active">{{$proses->name}}</li>
                </ol>
                <div class="card mb-4 {{session('msg')?'':'d-none'}}">
                    <div class="alert {{session('status')?'alert-'.session('status'):''}} alert-dismissible">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        {{session('msg')?session('msg'):''}}
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-header text-uppercase">
                        <i class="fas fa-table me-1"></i>
                        {{$proses->name}} FEEDBACK
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Candidate</th>
                                    <th>Email</th>
                                    <th>AlternateEmail</th>
                                    <th>Contact</th>
                                    <th>UserType</th>
                                    <th>SessionRating</th>
                                    <th>PresentationRating</th>
                                    <th>FavoritePart</th>
                                    <th>Recommendation</th>
                                    <th>SuggestFriend</th>
                                    <th>Suggestion</th>
                                    <th>FeedbackDate</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Candidate</th>
                                    <th>Email</th>
                                    <th>AlternateEmail</th>
                                    <th>Contact</th>
                                    <th>UserType</th>
                                    <th>SessionRating</th>
                                    <th>PresentationRating</th>
                                    <th>FavoritePart</th>
                                    <th>Recommendation</th>
                                    <th>SuggestFriend</th>
                                    <th>Suggestion</th>
                                    <th>FeedbackDate</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @if($prosesfb)
                                @foreach($prosesfb as $psfb)
                                <tr>
                                    <td>{{$psfb->name}}</td>
                                    <td>{{$psfb->email}}</td>
                                    <td>{{$psfb->alternate_email}}</td>
                                    <td>{{$psfb->contact}}</td>
                                    <td>{{$psfb->user_type}}</td>
                                    <td>{{$psfb->session_rating}}</td>
                                    <td>{{$psfb->presentation_rating}}</td>
                                    <td>{{$psfb->favorite_part}}</td>
                                    <td>{{$psfb->recommended_topic}}</td>
                                    <td>{{$psfb->recommend_other==1?"Yes":"No"}}</td>
                                    <td>{{$psfb->suggestion}}</td>
                                    <td>{{ \Carbon\Carbon::parse($psfb->created_at)->timezone('Asia/Kolkata')->format('d-M-y h:i A') }}</td>
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