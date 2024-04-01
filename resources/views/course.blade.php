@extends('layouts.master')
@section('title','CodeCruise | Course')
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
<div class="container my-3">
    <div class="row">
        <div class="col-12 col-md-6 col-lg-7 ">
            <div class="card car" data-aos="zoom-in">
                <img src="{{asset('assets/img/IMGS/download (23).jfif')}}" alt="" class="p-3">
            </div>
        </div>
        <div class="col-12 col-md-6 col-lg-5">
            <div class="card dis">
                <h4 class="p-4">FULL STACK IN PYTHON DEVELOPMENT </h4>
                <div class="card-body">
                    <p class="p-2">
                        A full-stack Python developer has expertise in using the Python suite of languages for all the
                        applications.

                        Python is one language that permits our computer systems to execute software and communicate
                        with each other. Python code interacts with code which is written in other languages such as C
                        and JavaScript to provide an entire web stack.
                    <ul class="int">
                        <li>HTML5</li>
                        <li>CSS3 and SASS</li>
                        <li>Javascript</li>
                        <li>Typescript</li>
                        <li>Ecma Script</li>
                        <li>Bootstrap</li>
                        <li>JQuery and AJAX</li>
                        <li>MY-SQL</li>
                        <li>Python Basic and Advanced </li>
                        <li>Flask/Django Framework</li>
                        <li>SCM with GitHub</li>
                        <li>CICD with Jenkins / Azure DevOps</li>

                    </ul>
                    </p>
                    <a href="#" class="btn btn-md btn-outline-info COLOR" id="buy1" onclick="disablebtn()"
                        data-bs-toggle="modal" data-bs-target="#staticBackdrop">QUERY</a>
                    <!-- Modal -->
                    @include('query')
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container my-3" data-aos="zoom-out-down">
    <div class="card shadow Schedule">
        <div class="card-body">
            <div class="row ">
                <div class="col-12 col-sm-6 col-md-4">
                    <p class="p" style="cursor: pointer;">Program Duration</p>
                    <h4>6-8 Months</h4>
                </div>
                <div class="col-12 col-sm-6 col-md-4">
                    <p class="p" style="cursor: pointer;">Class Schedule</p>
                    <h4>2 to 3 hours</h4>
                </div>
                <div class="col-12 col-sm-6 col-md-4">
                    <p class="p" style="cursor: pointer;">Delivery Mode</p>
                    <h4>online and offline</h4>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row" id="col">
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow " data-aos="zoom-in-up">
                <img src="{{asset('assets/img/IMGS/R.png')}}" alt="" class="p-3">
                <div class="card-tittle  px-4">HTML5</div>
                <div class="card-body">

                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow" data-aos="zoom-in-up">
                <img src="{{asset('assets/img/IMGS/R.jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4">CSS AND SASS</div>
                <div class="card-body">

                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow " data-aos="zoom-in-up">
                <img src="{{asset('assets/img/topic/OIP.jfif')}}" alt="" class="p-3 ">
                <div class="card-tittle  px-4">JAVASCRIPT</div>
                <div class="card-body">

                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow" data-aos="zoom-in-up">
                <img src="{{asset('assets/img/IMGS/OIP (1).jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4">TYPESCRIPT</div>
                <div class="card-body">

                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow" data-aos="zoom-in-up">
                <img src="{{asset('assets/img/IMGS/maxresdefault.jpg')}}" alt="" class="p-3">
                <div class="card-tittle px-4">ECMA SCRIPT</div>
                <div class="card-body">

                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow " data-aos="zoom-in-up">
                <img src="{{asset('assets/img/IMGS/OIP (2).jfif')}}" alt="" class="p-3">
                <div class="card-tittle  px-4">BOOTSTRAP</div>
                <div class="card-body">

                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow" data-aos="zoom-in-up">
                <img src="{{asset('assets/img/IMGS/download.jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4">JQUERY AND AJAX</div>
                <div class="card-body">

                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow" data-aos="zoom-in-up">
                <img src="{{asset('assets/img/IMGS/download (24).jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4">BASIC AND ADVANCED PYTHON PROGRAMMING</div>
                <div class="card-body">
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow" data-aos="zoom-in-up">
                <img src="{{asset('assets/img/IMGS/download (25).jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4">PYTHON FRAMWORK DJAGOFLASK/FLASK</div>
                <div class="card-body">
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow" data-aos="zoom-in-up">
                <img src="{{asset('assets/img/IMGS/OIP (15).jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4">MY-SQL</div>
                <div class="card-body">
                    <hr>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow" data-aos="zoom-in-up">
                <img src="{{asset('assets/img/IMGS/download (3).jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4">SCM WITH GITHUB</div>
                <div class="card-body">
                    <hr>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card shadow " data-aos="zoom-in-up">
                <img src="{{asset('assets/img/topic/download (1).jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4">CICD WITH JENKINS / AZURE DEVOPS</div>
                <div class="card-body">

                </div>
            </div>
        </div>
    </div>
</div>
<main id="main">
    <section class="inner-page" style="height: 10%;">
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
                        <img src="{{asset('assets/img/team/OIP.jfif')}}" alt="" height="200" width="200"
                            class="team mt-3">

                        <div class="card-body">
                            <h4 class="text-center">Senior Software Trainers</h4>
                            <p class="text-center">Full stack Developer </p>
                            <p class="text-center">Experience of more than 12 years in development and DevOps</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="{{asset('assets/img/team/th (1).jfif')}}" alt="" height="200" width="200"
                            class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Senior Cloud Architect</h4>
                            <p class="text-center">Cloud Engineer</p>
                            <p class="text-center">Experience on Cloud Service platforms for more than 12 years</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="{{asset('assets/img/team/th.jfif')}}" alt="" height="200" width="200"
                            class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Data Analyst</h4>
                            <p class="text-center">Data Science and Machine Learning</p>
                            <p class="text-center">7-10 years experience in Data science, ML and AI </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="{{asset('assets/img/team/OIP (2).jfif')}}" alt="" height="200" width="200"
                            class="team mt-3">
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
                        <img src="{{asset('assets/img/team/th (1).jfif')}}" alt="" height="200" width="200"
                            class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Mobile App Developer</h4>
                            <p class="text-center">Android, IOS, Flutter</p>
                            <p class="text-center">Experience for more than 12 years in mobile app development</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="{{asset('assets/img/team/th.jfif')}}" alt="" height="200" width="200"
                            class="team mt-3">
                        <div class="card-body">
                            <h4 class="text-center">Senior Software Test engineer</h4>
                            <p class="text-center">Software Testing</p>
                            <p class="text-center">7-10 experience in manual and automation testing</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm teams" data-aos="fade-up">
                        <img src="{{asset('assets/img/team/th (1).jfif')}}" alt="" height="200" width="200"
                            class="team mt-3">
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
                        <img src="{{asset('assets/img/team/th.jfif')}}" alt="" height="200" width="200"
                            class="team mt-3">
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