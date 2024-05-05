@php
$ctype=App\Models\CourseType::where('is_active',1)->get();
@endphp
<div class="th-menu-wrapper">
    <div class="th-menu-area text-center">
        <button class="th-menu-toggle"><i class="fal fa-times"></i></button>
        <div class="mobile-logo">
            <a href="{{route('landing-page')}}"><img src="{{asset('common/assets/img/logo-white.png')}}" alt="Edura"></a>
        </div>
        <div class="th-mobile-menu">
            <ul>
                <li>
                    <a href="{{route('landing-page')}}">home</a>
                </li>
                <li>
                    <a href="{{route('upcoming-event')}}">Upcoming Events</a>
                </li>
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
                <li>
                    <a href="{{route('course-catalog')}}">All Courses</a>
                </li>
                <li>
                    <a href="{{route('about')}}">About</a>
                </li>
                <li>
                    <a href="{{route('contact')}}">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</div>