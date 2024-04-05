@extends('layouts.master')
@section('title','CodeCruise | About')
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
                    <img src="assets/img/slide/online-girl.jpg" alt="" id="imge">
                </div>
                <div class=" col-12 col-lg-7" data-aos="fade-up">
                    <div class="row">
                        
                        <div class="col-12">
                            <div class="col-12 col-md-9 col-lg-10">
                                <div class="card-body">
                                    <p class="p">ABOUT CODECRUISE</p>
                                    <p class="fs-5">We create simplified and interactive learning
                                        experiences.

                                        Learning web development,Cloud computing ,operating system and
                                        Software testing should be easy to understand and available for
                                        everyone, everywhere!

                                        CodeCruise is a industry level training platform for web developers
                                        and others, covering all the aspects of each topic so that the
                                        Learners be industry ready.</p>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
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