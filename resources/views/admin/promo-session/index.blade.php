@extends('layouts.admin.master')
@section('title','CODECRUISE | PROMO SESSIONS')
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
                <h3 class="mt-4 text-uppercase">Promo Sessions</h3>
                <div class="action-container">
                    <a href="{{route('new-promo-session')}}" class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-plus mx-1'></i> New Promo Session</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-dashboard')}}">Dashboard</a></li>
                    <li class="breadcrumb-item active">Promo Session</li>
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
                        ALL PROMO SESSIONS
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Action</th>
                                    <th>PromoType</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>RegistrationLink</th>
                                    <th>PromoBanner</th>
                                    <th>CollectMessage</th>
                                    <th>Status</th>
                                    <th>CreatedDate</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Action</th>
                                    <th>PromoType</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>RegistrationLink</th>
                                    <th>PromoBanner</th>
                                    <th>CollectMessage</th>
                                    <th>Status</th>
                                    <th>CreatedDate</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @if($proses)
                                @foreach($proses as $ps)
                                <tr>
                                    <td>
                                        <div class='d-flex'>
                                            <a href="{{route('show-promo-session-registration',$ps->id)}}" title="View Registrations" class='text-dark'><i class='fas fa-eye'></i></a>                               
                                            <a href="{{route('edit-promo-session',$ps->id)}}" title="Edit Promo Session" class='mx-4 text-primary'><i class='fas fa-edit'></i></a>
                                            <a href="{{route('edit-course',$ps->id)}}" title="Delete Course" class='text-danger'><i class='fas fa-trash'></i></a>
                                        </div>
                                    </td>
                                    <td>{{$ps->promo_type}}</td>
                                    <td>{{$ps->name}}</td>
                                    <td>{!! $ps->description !!}</td>
                                    <td>
                                        {!! QrCode::size(200)->generate( 'https://codecruise.in/promo/'.$ps->promo_type.'/'.$ps->slug) !!}<br><br>
                                        https://codecruise.in/promo/{{$ps->promo_type}}/{{$ps->slug}}
                                    </td>
                                    <td>
                                        <img class="img-fluid" width="200" height="100" src="{{ asset('promo_banner/' . $ps->promo_banner) }}" alt="Promo Banner">
                                    </td>
                                    <td>{{$ps->apply_message==1?"Yes":"No"}}</td>
                                    <td>{{$ps->is_active==1?"Active":"Inactive"}}</td>
                                    <td>{{ \Carbon\Carbon::parse($ps->created_at)->timezone('Asia/Kolkata')->format('d-M-y h:i A') }}</td>
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