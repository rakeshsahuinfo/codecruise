@extends('layouts.master')
@section('title','CodeCruise')
@section('headasset')
@stop
@section('content')
<!-- ======= Top Bar ======= -->
<section id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-center justify-content-md-between">
        <div class="contact-info d-flex align-items-center ">
            <i class="bi bi-envelope-fill num"></i><a href="mailto:ask@codecruise.in" class="num">ask@codecruise.in</a>
            <!--<i class="bi bi-phone-fill phone-icon num"></i> <span class="num"> (Prefer Email)</span>-->
        </div>
        <div class="social-links d-none d-md-block">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
        </div>
    </div>
</section>
<!-- ======= Header ======= -->
@include('header')
<!-- End Header -->
<main id="main">
    <section class="inner-page" style="height: 10%;">
        <div class="container my-3">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-7">
                    <div class="card car" data-aos="zoom-in">
                        <img src="{{ asset('storage/course_banner/' . $courseinfo->course_banner) }}" alt=""
                            class="p-3">
                    </div>
                    <div data-aos="zoom-out-down" class="w-100 d-flex">
                        <a href="{{route('enroll-course',encrypt($courseinfo->id))}}"
                            class="btn btn-success mx-4 text-uppercase" target="_new">
                            <h3><span class="badge badge-light">Enroll<br>Now</span></h3>
                        </a>
                        <button type="button" class="btn btn-primary float-end mx-4 text-uppercase">
                            <h3><span class="badge badge-light">Course Fee<br>{{$courseinfo->course_fee}}</span></h3>
                        </button>
                        @if($courseinfo->apply_discount==1)
                        <button type="button" class="btn btn-warning float-end mx-4 text-uppercase">
                            <h3><span class="badge badge-light">Discount<br>{{$courseinfo->current_discount}}</span>
                            </h3>
                        </button>
                        @endif
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-5">
                    <div class="card dis">
                        <h4 class="p-4 text-uppercase">
                            {{$courseinfo->name}}
                        </h4>
                        <div class="card-body">
                            {!! $courseinfo->description !!}
                            {{-- 
                            <a href="#" class="btn btn-md btn-outline-info COLOR" id="buy1" onclick="disablebtn()" data-bs-toggle="modal" data-bs-target="#staticBackdrop">QUERY</a>
                            @include('query') 
                            --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container my-3" data-aos="zoom-out-down">
            <div class="card shadow Schedule">
                <div class="card-body">
                    <div class="row ">
                        <div class="col-12 col-sm-3 col-md-3">
                            <p class="p" style="cursor: pointer;">Program Duration</p>
                            <h4>{{$courseinfo->course_duration}}</h4>
                        </div>
                        <div class="col-12 col-sm-3 col-md-3">
                            <p class="p" style="cursor: pointer;">Class Schedule</p>
                            <h4>{{$courseinfo->class_schedule}}</h4>
                        </div>
                        <div class="col-12 col-sm-3 col-md-3">
                            <p class="p" style="cursor: pointer;">Delivery Mode</p>
                            <h4>{{$courseinfo->delivery_mode}}</h4>
                        </div>
                        <div class="col-12 col-sm-3 col-md-3">
                            <p class="p" style="cursor: pointer;">Program Fees</p>
                            <h4>{{$courseinfo->course_fee}}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="container mt-5 syllabus">
                <h2 class="text-center" id="syllabus">Syllabus and Schedule</h2>
                <p class="text-center">{{$coursemodule->name}}</p>
                <div class="row">
                    <div class="col-12 col-md-12 col-lg-12 mt-4 mx-2">
                        {!!$coursemodule->description!!}
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="container mt-5 syllabus">
                <h2 class="text-center" id="team">Tech Stack To Be Covered</h2>
                <p class="text-center"></p>
                <div class="row justify-content-center">
                    @if($coursetechstack)
                    @foreach($coursetechstack as $ts)
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
                        <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                            <img src="{{ asset('storage/tech_stack/' . $ts->tech_stack_logo) }}" alt="" class="p-3">
                            <div class="card-tittle px-4 text-center">{{$ts->name}}</div>
                            <div class="card-body"></div>
                        </div>
                    </div>
                    @endforeach
                    @endif
                </div>
            </div>
        </div>
        @include('team')
        <div class="container mt-5">
            <div class="row">
                <h2 class="text-center m-5" id="contact">Contact us</h2>
                <div class="col-12 col-lg-4">
                    @include('address')
                </div>
                <div class="col-12 col-lg-8 p-4 forms">
                    <div class="card shadow ">
                        <div class="card-body">
                            @include('contact-form')
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<!-- End #main -->
<!-- ======= Footer ======= -->
@include('footer')
<!-- End Footer -->
@stop
@section('jsscript')
@include('layouts.jsscript')
@stop