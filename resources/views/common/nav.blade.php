@php
$ctype=App\Models\CourseType::where('is_active',1)->orderBy('name','asc')->get();
@endphp
<div class="sticky-wrapper">
    <!-- Main Menu Area -->
    <div class="menu-area">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-auto">
                    <div class="header-logo">
                        <a href="{{route('landing-page')}}"><img src="{{asset('common/assets/img/logo-white.png')}}"
                                alt="Code-Cruise"></a>
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
                                    @php
                                    $checkpromos=App\Models\PromoSession::where('is_active', 1)->exists();
                                    @endphp
                                    @if( $checkpromos)
                                    <li>
                                        <a href="{{route('upcoming-event')}}">Event</a>
                                    </li>
                                    @endif
                                    {{--
                                    @if($ctype)
                                    @foreach($ctype as $ct)
                                    <li class="menu-item-has-children">
                                        <a href="{{route('course-by-type',$ct->slug)}}">{{$ct->name}}</a>
                                        <ul class="sub-menu">
                                            @php
                                            $course=App\Models\Course::where('course_type_id',$ct->id)->where('is_active',1)->orderBy('name','asc')->get();
                                            @endphp
                                            @if($course)
                                            @foreach($course as $c)
                                            <li><a href="{{route('course',$c->slug)}}">{{$c->name}}</a></li>
                                            @endforeach
                                        </ul>
                                        @endif
                                    </li>
                                    @endforeach
                                    @endif
                                    --}}
                                    <li class="menu-item-has-children">
                                        <a href="#">Courses</a>
                                        <ul class="sub-menu">
                                            @if($ctype)
                                            @foreach($ctype as $ct)
                                            <li class="menu-item-has-children">
                                                <a href="{{route('course-by-type',$ct->slug)}}">{{$ct->name}}</a>
                                                @php
                                                $course=App\Models\Course::where('course_type_id',$ct->id)->where('is_active',1)->orderBy('name','asc')->get();
                                                @endphp
                                                <ul class="sub-menu">
                                                    @if($course)
                                                    @foreach($course as $c)
                                                    <li><a href="{{route('course',$c->slug)}}">{{$c->name}} <span class="new-label">offer</span></a></li>
                                                    @endforeach
                                                    @endif
                                                </ul>
                                            </li>
                                            @endforeach
                                            @endif
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="{{route('course-catalog')}}">Course Catalog</a>
                                    </li>
                                    <li>
                                        <a href="{{route('about')}}">About</a>
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