@extends('layouts.master')
@section('title','CodeCruise | Courses')
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
        <div class="container my-5">
            <h2 class="text-center mt-5 p" id="catalog">{{$course_type->name}}</h2>
            <p class="text-center sp">List of courses available</p>
            <div class="row ">
               
                @if($course)
                @foreach($course as $c)
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm" data-aos="fade-up">
                        <a class="nav-link" href="{{route('course',encrypt($c->id))}}">
                            <img src="{{ asset('storage/course_banner/' . $c->course_banner) }}" alt="" height="200" width="200"
                                class="team mt-3">
                        </a>
                        <div class="card-body">
                            <a href="{{route('course',encrypt($c->id))}}">
                                <h4 style="font-size: 20px;font-weight: bolder;" class="text-center text-dark">{{$c->name}}</h4>
                            </a>
                        </div>
                    </div>
                </div>
                @endforeach
                @endif
            </div>
        </div>
        @include('catalog')
        @include('team')
        <div class="container my-5">
            <div class="row">
                <h2 class="text-center p" id="contact">CONTACT US</h2>
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