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
        @include('main-slide')
        <div class="container mt-5">
            <div class="row learns">
                <div class="col-12 col-lg-5" data-aos="fade-up">
                    <img src="{{asset('assets/img/slide/online-girl.jpg')}}" alt="" id="imge">
                </div>
                <div class=" col-12 col-lg-7" data-aos="fade-up">
                    <div class="row">
                        <p class="p">LEARN ANYTHING</p>
                        <h2>Benefits About Online and Offline Learning Expertise</h2>
                        <div class="col-12">
                            <div class="card learn">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12 col-md-3 col-lg-2 ">
                                            <img src="{{asset('assets/img/logo/online-learning.png')}}" alt="">

                                        </div>
                                        <div class="col-12 col-md-9 col-lg-10">
                                            <span class="head ml-2">Offline and Online Courses</span>
                                            <p class="ml-2"> Get both Online and Offline as per your Requirements it
                                                will help to make busy schedule more convenient for learning and
                                                gain Knowledge</p>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 ">
                            <div class="card learn">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12 col-md-3 col-lg-2 ">
                                            <img src="{{asset('assets/img/logo/certificate.png')}}" alt="">
                                        </div>
                                        <div class="col-12 col-md-9 col-lg-10">
                                            <span class="head ml-2">Earn A Certificates</span>
                                            <p class="ml-2">Get a valid Certificates to show your Progress and take
                                                the high payment job easily</p>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 ">
                            <div class="card learn">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12 col-md-3 col-lg-2">
                                            <img src="{{asset('assets/img/logo/expert (1).png')}}" alt="">
                                        </div>
                                        <div class="col-12 col-md-9 col-lg-10">
                                            <span class="head ml-2">Learn with Expert</span>
                                            <p class="ml-2">Get the personal attention with over expert Trainers &
                                                Faculty</p>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @include('catalog')
        @include('team')
        <div class="container my-5">
            <div class="row">
                <h2 class="text-center" id="contact">Contact us</h2>
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