@php
$ctype=App\Models\CourseType::where('is_active',1)->get();
@endphp
<div class="th-menu-wrapper">
    <div class="th-menu-area text-center">
        <button class="th-menu-toggle"><i class="fal fa-times"></i></button>
        <div class="mobile-logo">
            <a href="{{route('landing-page')}}"><img src="{{asset('common/assets/img/logo-white.png')}}"
                    alt="Edura"></a>
        </div>
        <div class="th-mobile-menu">
            <ul>
                <li>
                    <a href="{{route('landing-page')}}">home</a>
                </li>
                @php
                $checkpromos=App\Models\PromoSession::where('is_active', 1)->exists();
                @endphp
                @if( $checkpromos)
                <li>
                    <a href="{{route('upcoming-event')}}">Event</a>
                </li>
                @endif
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
                        <li><a href="{{route('course',$c->slug)}}">{{$c->name}} <span class="new-label">offer</span></a></li>
                        @endforeach
                    </ul>
                    @endif
                </li>
                @endforeach
                @endif
                <li>
                    <a href="{{route('course-catalog')}}">Course Catalog</a>
                </li>
                <li>
                    <a href="{{route('about')}}">About</a>
                </li>
                <li>
                    <a href="{{route('contact')}}">Contact</a>
                </li>
                @if(Auth::user())
                <li>
                    <a href="{{route('user-desk')}}"> Welcome {{auth()->user()->name}}</a>
                 </li>
                <li>
                   <a href="{{route('sign-out')}}">Sign-out</a>
                </li>
                @else
                <li>
                    <a href="{{route('login')}}">Sign-In</a>
                </li>
                @endif
            </ul>
        </div>
    </div>
</div>