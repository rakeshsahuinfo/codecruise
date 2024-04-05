@extends('layouts.master')
@section('title','CodeCruise | Enroll')
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
                    <div class="card shadow ">
                        <div class="card-body">
                            <form method="post" action="{{route('save-query')}}">
                                @csrf
                                <div class="row">
                                    <h4 class="text-uppercase my-2">Enroll For the course</h4>
                                    <div class="col-12 col-md-6 mt-3">
                                        <label for="name">Name</label></br>
                                        <input type="text" name="name" class="form-control" id="name"
                                            placeholder="&nbsp;&nbsp;Name" required>
                                    </div>
                                    <div class="col-12 col-md-6 mt-3">
                                        <label for="email">Email</label></br>
                                        <input type="email" name="email" class="form-control" id="email"
                                            placeholder="&nbsp;&nbsp;Email" required>
                                    </div>
                                    <div class="col-12 col-md-6 mt-3">
                                        <label for="contact">Contact no</label></br>
                                        <input type="text" class="form-control" name="contact" id="contact"
                                            placeholder="&nbsp;&nbsp;Contact">
                                    </div>
                                    <div class="col-12 col-md-6 mt-3">
                                        <label for="company_college_name">Company/College</label></br>
                                        <input type="text" name="company_college_name" class="form-control"
                                            id="company_college_name" placeholder="&nbsp;&nbsp;Company/College">
                                    </div>
                                    <div class="col-12 mt-3">
                                        <label for="myexampleCourse">Your Interest {{--(use <strong>ctrl +
                                                select</strong> for multiple)--}}</label>
                                        <select class="form-control" name="course_ids[]" id="myexampleCourse" multiple
                                            required>
                                            @php
                                            $courseTypes = App\Models\CourseType::where('is_active', 1)->get();
                                            @endphp
                                            @foreach($courseTypes as $courseType)
                                            <optgroup label="{{ $courseType->name }}">
                                                @php
                                                $allcourses = App\Models\Course::where('course_type_id',
                                                $courseType->id)->get();
                                                @endphp
                                                @foreach($allcourses as $ac)
                                                <option value="{{ $ac->id }}" {{$ac->
                                                    id==$courseinfo->id?"selected":""}}>{{
                                                    $ac->name }}</option>
                                                @endforeach
                                            </optgroup>
                                            @endforeach
                                            <option value="other">Other</option>
                                        </select>
                                        <div id="otherOption" style="display: none;">
                                            <label for="otherCourse">Enter your option:</label>
                                            <input type="text" class="form-control" id="otherCourse"
                                                name="other_course">
                                        </div>
                                    </div>
                                    <div class="col-12  mt-3">
                                        <label for="message">Your Query</label></br>
                                        <textarea rows="5" cols="70" id="message" name="message"
                                            placeholder="Type your message"></textarea>
                                    </div>
                                    <div class="col-12  mt-3">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-5">
                    <div class="card dis">
                        <div class="card car" data-aos="zoom-in">
                            <img src="{{ asset('storage/course_banner/' . $courseinfo->course_banner) }}" alt=""
                                class="p-3">
                        </div>
                        <div data-aos="zoom-out-down" class="w-100 d-flex">
                            <button type="button" class="btn btn-primary float-end mx-4 text-uppercase">
                                <h3><span class="badge badge-light">Course Fee<br>{{$courseinfo->course_fee}}</span>
                                </h3>
                            </button>
                            @if($courseinfo->apply_discount==1)
                            <button type="button" class="btn btn-warning float-end mx-4 text-uppercase">
                                <h3><span class="badge badge-light">Discount<br>{{$courseinfo->current_discount}}</span>
                                </h3>
                            </button>
                            @endif
                        </div>
                        <h4 class="p-4 text-uppercase">
                            {{$courseinfo->name}}
                        </h4>
                        <div class="card-body">
                            {!! $courseinfo->description !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @include('team')
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