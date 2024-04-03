@extends('layouts.master')
@section('title','CodeCruise | Course')
@section('headasset')
<style>
    .card {
        border: none;
        border-radius: 10px;
        overflow: hidden;
    }

    .card img {
        width: 100%;
        height: auto;
    }
</style>
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
    <a class="btn btn-success mx-2">SYLLABUS AND SCHEDULE</a>
    <div class="row">
        <div class="col-12 col-md-12 col-lg-12 mt-4 mx-2">
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Schedule for the <strong>BootCamp </strong>is 3 months divided in 16 weeks (5 days a week and 6 hours daily divided in pre and post lunch sessions each of 2 hours)</span></p>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt;"><strong><span style="line-height: 107%;">Week 1 to week 3:</span></strong></span></p>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Design Web pages using HTML5, CSS and JS</span></p>
            <ul style="margin-bottom: 0cm; margin-top: 0px;">
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Introduction to HTML </span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Basic HTML tags</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Formatting Tags</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Modern HTML5 tags</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Class and ID attributes </span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">CSS (Inline, embedded and External)</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Working with images and media files</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Media queries</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">HTML and CSS framework Bootstrap</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Creating responsive static website <strong>(First Project)</strong></span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Week 2</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Introduction to JavaScript</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Built-in functions in JS</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">DOM manipulation and JS objects</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Modern JavaScript using ECMAScript </span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">JQuery and AJAX</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Fetch API</span></li>
            <li style="margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Working with JSON and Arrays</span></li>
            </ul>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt;"><strong><span style="line-height: 107%;">Week 4 and week 5:</span></strong></span></p>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Introduction to My-SQL DBMS</span></p>
            <ul style="margin-bottom: 0cm; margin-top: 0px;">
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Data Definition Language query</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Creating database and table </span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Modifying tables and other database objects</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Data manipulation language queries</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Insert, delete and update queries</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Working with index and triggers</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Referential integrity and normalization</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Data query language</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Select queries</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Join, Sub-Queries</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Functions and procedures in T-SQL</span></li>
            <li style="margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Creating real time project database architecture<strong>(Second Project)</strong></span></li>
            </ul>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt;"><strong><span style="line-height: 107%;">Week 6 to week 7:</span></strong></span></p>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Web development concept using core PHP.</span></p>
            <ul style="margin-bottom: 0cm; margin-top: 0px;">
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">PHP script</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Working with different data types</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Built-in functions</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Control statements</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Programs to build logic</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Introduction to OOP</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Working with PHP and MY-SQL database</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">CRUD application using OOP<strong>(Third Project)</strong></span></li>
            <li style="margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Exception handling</span></li>
            </ul>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt;"><strong><span style="line-height: 107%;">Week 8 to Week 13:</span></strong></span></p>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Complete project development using PHP(Laravel)</span></p>
            <ul style="margin-bottom: 0cm; margin-top: 0px;">
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">Creating projects, Dependency management using composer</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">PHP artisan command for Laravel web artisan</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">Laravel Project Structure</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">Routes and redirects</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">Template Engine using Laravel Blade</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">Template Inheritance</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">Models and Controllers</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">Working with My-SQL database and database migrations</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">CRUD Application</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">Laravel Eloquent ORM</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 0.0001pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">Laravel Authentication setup</span></li>
            <li style="text-align: justify; line-height: normal; background: white; margin: 0cm 0cm 8pt 0px; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; font-family: Arial, sans-serif; color: #333333;">REST API and JWT http authentication</span></li>
            </ul>
            <p style="margin: 0cm 0cm 8pt 18pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Create 2 different projects</span></p>
            <ol style="margin-bottom: 0cm; margin-top: 0px;">
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">A complete Dynamic web application with MY-SQL as back-end <strong>(Forth Project)</strong></span></li>
            <li style="margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">A Back-end application to provide API&rsquo;s to work with single page application <strong>(Fifth Project)</strong></span></li>
            </ol>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt;"><strong><span style="line-height: 107%;">Week 14 to week 16:</span></strong></span></p>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt;"><strong><span style="line-height: 107%;">Internship</span></strong></span></p>
            <p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Project dissertation and project presentation</span></p>
            <ol style="margin-bottom: 0cm; margin-top: 0px;">
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Prepare documentation</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Project Architecture</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Database Architecture</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Modules </span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Test Plans</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Coding</span></li>
            <li style="margin: 0cm 0cm 0.0001pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Testing and debugging</span></li>
            <li style="margin: 0cm 0cm 8pt 0px; line-height: 107%; font-size: 14pt; font-family: Calibri, sans-serif;"><span style="font-size: 14pt; line-height: 107%;">Hosting on server</span></li>
            </ol>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.png')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">HTML5</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">CSS AND SASS</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.png')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">HTML5</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">CSS AND SASS</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.png')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">HTML5</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">CSS AND SASS</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.png')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">HTML5</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">CSS AND SASS</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.png')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">HTML5</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">CSS AND SASS</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.png')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">HTML5</div>
                <div class="card-body"></div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
            <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                <img src="{{asset('assets/img/IMGS/R.jfif')}}" alt="" class="p-3">
                <div class="card-tittle px-4 text-center">CSS AND SASS</div>
                <div class="card-body"></div>
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