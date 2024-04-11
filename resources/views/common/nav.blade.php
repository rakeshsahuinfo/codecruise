@php
$ctype=App\Models\CourseType::where('is_active',1)->get();
@endphp
<div class="sticky-wrapper">
    <!-- Main Menu Area -->
    <div class="menu-area">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-auto">
                    <div class="header-logo">
                        <a href="{{route('landing-page')}}"><img src="{{asset('common/assets/img/logo-white.png')}}" alt="Code-Cruise"></a>
                    </div>
                </div>
                <div class="col-auto">
                    <div class="row">
                        <div class="col-auto">
                            <nav class="main-menu d-none d-lg-inline-block">
                                <ul>
                                    <li>
                                        <a href="{{route('landing-page')}}">Home</a>
                                    </li>
                                  
                                    @if($ctype)
                                    @foreach($ctype as $ct)
                                    <li class="menu-item-has-children">
                                        <a href="{{route('course-by-type',encrypt( $ct->id))}}">{{$ct->name}}</a>
                                            <ul class="sub-menu">
                                                @php
                                                $course=App\Models\Course::where('course_type_id',$ct->id)->orderBy('name','asc')->get();
                                                @endphp
                                                @if($course)
                                                @foreach($course as $c)
                                                <li><a href="{{route('course',encrypt($c->id))}}">{{$c->name}}</a></li>
                                                @endforeach
                                            </ul>
                                            @endif
                                    </li>
                                    @endforeach
                                    @endif
                                    <li>
                                        <a href="{{route('course-catalog')}}">All Courses</a>
                                    </li>
                                    <li>
                                        <a href="{{'about'}}">About</a>
                                    </li>
                                    <li>
                                        <a href="{{route('contact')}}">Contact</a>
                                    </li>
                                </ul>
                            </nav>
                            <button type="button" class="th-menu-toggle d-block d-lg-none"><i
                                    class="far fa-bars"></i></button>
                        </div>
                        <div class="col-auto d-none d-xl-block">
                            <div class="header-button">
                                <button type="button" class="icon-btn searchBoxToggler"><i
                                        class="far fa-search"></i></button>
                                <!-- <a href="wishlist.html" class="icon-btn">
                                    <i class="far fa-heart"></i>
                                    <span class="badge">3</span>
                                </a>
                                <button type="button" class="icon-btn sideMenuToggler">
                                    <i class="far fa-shopping-cart"></i>
                                    <span class="badge">5</span>
                                </button>
                                <a href="contact.html" class="th-btn ml-25">Contact Us <i
                                        class="fas fa-arrow-right ms-1"></i></a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>