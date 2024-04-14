@php
$ctype=App\Models\CourseType::where('is_active',1)->get();
@endphp
<nav id="navbar" class="navbar">
    <ul>
        <li><a class="nav-link scrollto " href="{{route('landing-page')}}">Home</a></li>
        @if($ctype)
        @foreach($ctype as $ct)
        <li class="dropdown"><a class="nav-link" href="{{route('course-by-type',encrypt( $ct->id))}}">{{$ct->name}}</a>
            <ul>
                @php
                $course=App\Models\Course::where('course_type_id',$ct->id)->orderBy('name','asc')->get();
                @endphp
                @if($course)
                @foreach($course as $c)
                <li><a class="nav-link" href="{{route('course',encrypt($c->id))}}">{{$c->name}}</a></li>
                @endforeach
            </ul>
            @endif
            @endforeach
            @endif
        <li><a class="nav-link scrollto" href="#catalog">Course Catalog</a></li>
        <li><a class="nav-link scrollto" href="{{route('about')}}">About</a></li>
        <li><a class="nav-link scrollto" href="#team">Team</a></li>
        <li><a class="nav-link scrollto" href="#contact">Contact us</a></li>
    </ul>
    <i class="bi bi-list mobile-nav-toggle"></i>
</nav>