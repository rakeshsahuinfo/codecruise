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
            <div class="row" id="about">
                <div class="col-12 col-lg-4" data-aos="fade-up">
                    <div class="row">
                        <div class="col-12">
                            <div class="col-12 col-md-9 col-lg-10">
                                <div class="card-body">
                                    <p class="p fs-3">ABOUT CODECRUISE</p>
                                    <p class="fs-5">Codecruise is a dynamic tech education platform dedicated to
                                        empowering individuals with the skills and knowledge needed to thrive in the
                                        digital era</p>
                                    <p class="p fs-4">OUR VISION</p>
                                    <p class="fs-5">Revolutionize tech education by providing accessible, innovative
                                        learning experiences</p>
                                    <p class="p fs-4">OUR MISSION</p>
                                    <p class="fs-5">Empower individuals worldwide to thrive in the digital age through
                                        comprehensive courses and dynamic learning environments</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-7 p-0" data-aos="fade-up">
                    <div class="row m-0">
                        <div class="col-12 col-md-5 p-1"><img src="{{asset('assets/img/office/office1.jpg')}}"
                                data-toggle="modal" data-target="#imageModal"
                                data-src="{{asset('assets/img/office/office1.jpg')}}"
                                class="img-fluid img-thumbnail w-100" style="height: 300px"></div>
                        <div class="col-12 col-md-3 p-1"><img src="{{asset('assets/img/office/office2.jpg')}}"
                                data-toggle="modal" data-target="#imageModal"
                                data-src="{{asset('assets/img/office/office2.jpg')}}"
                                class="img-fluid img-thumbnail w-100" style="height: 300px"></div>
                        <div class="col-12 col-md-4 p-1"><img src="{{asset('assets/img/office/office3.jpg')}}"
                                data-toggle="modal" data-target="#imageModal"
                                data-src="{{asset('assets/img/office/office3.jpg')}}"
                                class="img-fluid img-thumbnail w-100" style="height: 300px"></div>
                        <div class="col-12 col-md-3 p-1"><img src="{{asset('assets/img/office/office4.jpg')}}"
                                data-toggle="modal" data-target="#imageModal"
                                data-src="{{asset('assets/img/office/office4.jpg')}}"
                                class="img-fluid img-thumbnail w-100" style="height: 300px"></div>
                        <div class="col-12 col-md-5 p-1"><img src="{{asset('assets/img/office/office5.jpg')}}"
                                data-toggle="modal" data-target="#imageModal"
                                data-src="{{asset('assets/img/office/office5.jpg')}}"
                                class="img-fluid img-thumbnail w-100" style="height: 300px"></div>
                        <div class="col-12 col-md-4 p-1"><img src="{{asset('assets/img/office/office6.jpg')}}"
                                data-toggle="modal" data-target="#imageModal"
                                data-src="{{asset('assets/img/office/office6.jpg')}}"
                                class="img-fluid img-thumbnail w-100" style="height: 300px"></div>
                    </div>
                </div>
                
                <p class="p fs-3 text-uppercase mt-4">Our Core Values</p>
                <div class="row">
                    <div class="col-4">
                        <p class="p fs-4 text-uppercase"> Excellence</p>
                        <p class="fs-5">We are committed to delivering high-quality education and learning experiences that exceed expectations, driven by a relentless pursuit of excellence in everything we do.</p>
                    </div>
                    <div class="col-4">
                        <p class="p fs-4 text-uppercase">Innovation</p>
                        <p class="fs-5">We embrace innovation and creativity as catalysts for progress, continuously seeking new ways to enhance learning outcomes and shape the future of tech education.</p>
                    </div>
                    <div class="col-4">
                        <p class="p fs-4 text-uppercase">Community</p>
                        <p class="fs-5">We believe in the power of collaboration, fostering a supportive and inclusive environment where learners, instructors, and industry experts come together.</p>
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
    <div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-body text-center">
                    <img src="" class="img-fluid img-thumbnail" id="modalImage" alt="Modal Image">
                </div>
            </div>
        </div>
    </div>
</main>
<!-- End #main -->

<!-- ======= Footer ======= -->
@include('footer')
<!-- End Footer -->
@stop
@section('jsscript')
@include('layouts.jsscript')
<script>
    $(document).ready(function () {
        $('.img-thumbnail').click(function () {
            var src = $(this).data('src');
            $('#modalImage').attr('src', src); // Update the src attribute of the modal image
            $('#imageModal').modal('show'); // Show the modal
        });
    });
</script>
@stop