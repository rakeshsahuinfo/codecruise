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
        <div class="container my-4">
            <div class="row">
                <div class="col-12 col-md-12 col-lg-7">
                    <div class="card shadow ">
                        <div class="card-body">
                            <form method="post" action="{{route('save-query')}}">
                                @csrf
                                <div class="row">
                                    <h4 class="text-uppercase my-4">Enroll To course</h4>
                                    @php
                                    $mycourse=App\Models\Course::find($courseinfo->id);
                                    @endphp
                                    @if($mycourse)
                                    <div class="col-12 col-md-12 mt-2">
                                        <label for="mycourse">Course</label></br>
                                        <input type="text" name="mycourse" class="form-control" id="mycourse"
                                            value="{{$mycourse->name}}" readonly>
                                        <input type="hidden" name="course_ids[]" value="{{$mycourse->id}}">
                                    </div>
                                    @else
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
                                                <option value="{{ $ac->id }}">{{$ac->name }}</option>
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
                                    @endif

                                   
                                    <div class="col-12 col-md-12 mt-3">
                                        <label for="name">Name</label></br>
                                        <input type="text" name="name" class="form-control" id="name"
                                            placeholder="&nbsp;&nbsp;Name" required>
                                    </div>
                                    <div class="col-12 col-md-12 mt-3">
                                        <label for="email">Email</label></br>
                                        <input type="email" name="email" class="form-control" id="email"
                                            placeholder="&nbsp;&nbsp;Email" required>
                                    </div>
                                    <div class="col-12 col-md-12 mt-3">
                                        <label for="mycontact">Contact no</label></br>
                                        <input type="text" class="form-control" name="contact" id="mycontact"
                                            placeholder="&nbsp;&nbsp;Contact">
                                    </div>
                                    <div class="col-12 col-md-12 mt-3">
                                        <label for="company_college_name">Company/College</label></br>
                                        <input type="text" name="company_college_name" class="form-control"
                                            id="company_college_name" placeholder="&nbsp;&nbsp;Company/College">
                                    </div>

                                    <input type="hidden" name="message" value="Enroll me">

                                    <div class="col-12 mt-3 text-center">
                                        <button type="submit" class="btn" style="background-color: #008080;color:white;width: 200px;">ENROLL</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-12 col-lg-5">
                    <div>
                        <div class="card" data-aos="zoom-in">
                            <img src="{{ asset('storage/course_banner/' . $courseinfo->course_banner) }}" alt=""
                                class="p-3">
                        </div>
                        <div class="container">
                            <div class="custom-container" data-aos="zoom-out-down">
                                <div class="custom-div bg-primary text-white text-center">Course
                                    Fee<br>{{$courseinfo->course_fee}}</div>
                                @if($courseinfo->apply_discount==1)
                                <div class="custom-div  bg-warning text-white text-center">
                                    Discount<br>{{$courseinfo->current_discount}}</div>
                                @endif
                                <div class="card-body my-1">
                                    <h4 class="p-1 text-uppercase">
                                        {{$courseinfo->name}}
                                    </h4>
                                    {!! $courseinfo->description !!}
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