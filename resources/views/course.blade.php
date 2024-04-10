@extends('layouts.master')
@section('title','CodeCruise | Course')
@section('headasset')
@stop
@section('content')
<!-- ======= Top Bar ======= -->
@include('top-bar')
<!-- ======= Header ======= -->
@include('header')
<!-- End Header -->
<main id="main">
    <section class="inner-page" style="height: 10%;">
        <div class="container my-3">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-7">
                    <div class="card car" data-aos="zoom-in">
                        <img src="{{ asset('course_banner/' . $courseinfo->course_banner) }}" alt=""
                            class="p-3">
                    </div>
                    <div class="container">
                        <div class="custom-container" data-aos="zoom-out-down">
                            <div class="custom-div bg-success text-center">
                                <a href="{{route('enroll-course',encrypt($courseinfo->id))}}" class="text-white"
                                    target="_new">Enroll</a>
                            </div>
                            <div class="custom-div bg-primary text-white text-center">Course
                                Fee<br>{{$courseinfo->course_fee}}</div>
                            @if($courseinfo->apply_discount==1)
                            <div class="custom-div  bg-warning text-white text-center">
                                Discount<br>{{$courseinfo->current_discount}}</div>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-5">
                    <div class="card dis">
                        <h4 class="p p-4 text-uppercase">
                            {{$courseinfo->name}}
                        </h4>
                        <div class="card-body">
                            {!! $courseinfo->description !!}
                            {{--
                            <a href="#" class="btn btn-md btn-outline-info COLOR" id="buy1" onclick="disablebtn()"
                                data-bs-toggle="modal" data-bs-target="#staticBackdrop">QUERY</a>
                            @include('query')
                            --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container my-3" data-aos="zoom-out-down">
            <div class="card shadow" id="schedule">
                <div class="card-body">
                    <div class="row text-center">
                        <div class="col-12 col-sm-3 col-md-3">
                            <p class="p" style="cursor: pointer;">Program Duration</p>
                            <h4 class="sp">{{$courseinfo->course_duration}}</h4>
                        </div>
                        <div class="col-12 col-sm-3 col-md-4">
                            <p class="p" style="cursor: pointer;">Class Schedule</p>
                            <h4 class="sp">{{$courseinfo->class_schedule}}</h4>
                        </div>
                        <div class="col-12 col-sm-3 col-md-4">
                            <p class="p" style="cursor: pointer;">Delivery Mode</p>
                            <h4 class="sp">{{$courseinfo->delivery_mode}}</h4>
                        </div>
                        <!-- <div class="col-12 col-sm-3 col-md-4">
                            <p class="p" style="cursor: pointer;">Program Fees</p>
                            <h4>{{$courseinfo->course_fee}}</h4>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="container card shadow py-4">
            <div class="container mt-4 syllabus">
                <h2 class="text-center p" id="syllabus">Syllabus and Schedule</h2>
                <p class="text-center sp">{{$coursemodule->name}}</p>
                <p>
                    <a href="{{route('download-course-info',encrypt($courseinfo->id))}}" class="float-end"
                        target="_new"><img src="{{asset('assets/img/download.png')}}"
                            title="Download {{$courseinfo->name}} Info"></a>
                </p>
                <div class="row mt-2">
                    <div class="col-12 col-md-12 col-lg-12 mt-4 mx-2"  style="width: 90%;">
                        {!!$coursemodule->description!!}
                    </div>
                </div>

            </div>
        </div>
        <div class="container">
            <div class="container mt-5">
                <h2 class="text-center p" id="syllabus">Tech Stack To Be Covered</h2>
                <p class="text-center"></p>
                <div class="container mt-5">
                    <h2 class="text-center p" id="syllabus">Tech Stack To Be Covered</h2>
                    <p class="text-center"></p>
                    <div class="row justify-content-center">
                        @if($coursetechstack)
                        @foreach($coursetechstack as $ts)
                        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
                            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                                <img src="{{ asset('tech_stack/' . $ts->tech_stack_logo) }}" style="width: 120px;height:120px;margin: 5px auto;border-radius: 5px;" class="p-3">
                                <div class="card-tittle px-4 text-center">{{$ts->name}}</div>
                                <div class="card-body"></div>
                            </div>
                        </div>
                        @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
        @include('catalog')
        @include('team')
        <div class="container my-5">
            <div class="row">
                <h2 class="text-center p" id="contact">Contact us</h2>
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