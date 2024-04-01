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
        <div class="container mt-5 team">
            <h2 class="text-center" id="team">Our Trainers & Faculty</h2>
            <p class="text-center">Our team consist of trainers and faculties who are themselves experienced working
                professionals with reputed companies
                <br>
                Our team is fully committed to train you so that you are ready to work on live projects anytime and
                anywhere.
            </p>
            <div class="row ">
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="assets/img/team/OIP.jfif" alt="" height="200" width="200" class="team mt-3">

                        <div class="card-body">
                            <h4 class="text-center">Senior Software Trainers</h4>
                            <p class="text-center">Full stack Developer </p>
                            <p class="text-center">Experience of more than 12 years in development and DevOps</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="assets/img/team/th (1).jfif" alt="" height="200" width="200" class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Senior Cloud Architect</h4>
                            <p class="text-center">Cloud Engineer</p>
                            <p class="text-center">Experience on Cloud Service platforms for more than 12 years</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="assets/img/team/th.jfif" alt="" height="200" width="200" class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Data Analyst</h4>
                            <p class="text-center">Data Science and Machine Learning</p>
                            <p class="text-center">7-10 years experience in Data science, ML and AI </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="assets/img/team/OIP (2).jfif" alt="" height="200" width="200" class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Cyber & Network Security Analyst</h4>
                            <p class="text-center">Network Analyst</p>
                            <p class="text-center">8-10 years expeience in network and data security and DevSecOps
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="assets/img/team/th (1).jfif" alt="" height="200" width="200" class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Mobile App Developer</h4>
                            <p class="text-center">Android, IOS, Flutter</p>
                            <p class="text-center">Experience for more than 12 years in mobile app development</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="assets/img/team/th.jfif" alt="" height="200" width="200" class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Senior Software Test engineer</h4>
                            <p class="text-center">Software Testing</p>
                            <p class="text-center">7-10 experience in manual and automation testing</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="assets/img/team/th (1).jfif" alt="" height="200" width="200" class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Senior DevOps Engineer</h4>
                            <p class="text-center">DevOps Tools</p>
                            <p class="text-center">Experience than 12 years in cloud enabled development and
                                operations</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="assets/img/team/th.jfif" alt="" height="200" width="200" class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Senior SEO & Digital Marketing Expert</h4>
                            <p class="text-center">SEO, SMO and digital marketing tools</p>
                            <p class="text-center">7-10 years experience in digital marketing and SEO</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container mt-5">
            <div class="row">
                <h2 class="text-center m-5" id="contact">Contact us</h2>
                <div class="col-12 col-lg-4">
                    <div class="card shadow contact p-4">
                        <div class="card-body">
                            <h5 class="text-white">REACH OUT US</h5>
                            <p>Got a question about our programs? Interested in partnering with us?</p>
                            <p>Got suggestions or just want to say hi?</p>
                            <p> <i class="bi bi-telephone"></i> &nbsp;&nbsp; <span>+91 703 456 2050</span></p>
                            <p><i class="bi bi-envelope"></i>&nbsp;&nbsp; <span> ask@codecruise.in</span></p>
                            <p><i class="bi bi-geo-alt"></i>&nbsp;&nbsp; <span> A74, TechnoPark, Andheri, Mumbai,
                                    Maharashtra India.</span></p>
                        </div>
                    </div>
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