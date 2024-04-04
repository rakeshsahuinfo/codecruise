<nav id="navbar" class="navbar">
    <ul>
        <li><a class="nav-link scrollto " href="{{route('landing-page')}}">Home</a></li>
        @php
        $ctype=App\Models\CourseType::where('is_active',1)->get();
        @endphp
        @if($ctype)
            @foreach($ctype as $ct)
            <li class="dropdown"><a class="nav-link" href="#">{{$ct->name}}</a>
                <ul>
                @php
                $course=App\Models\Course::where('course_type_id',$ct->id)->get();
                @endphp
                @if($ctype)
                    @foreach($course as $c)
                    <li><a class="nav-link scrollto" href="{{route('course',encrypt($c->id))}}">{{$c->name}}</a></li>
                    @endforeach
                </ul>
                @endif
            @endforeach
        @endif
        <!-- <li class="dropdown"><a class="nav-link" href="#">Programs</a>
            <ul>
                <li><a class="nav-link scrollto" href="programming-fundamental/">Programming Fundamentals</a></li>
                <li><a class="nav-link scrollto" href="fullstack-python/">Full Stack Python</a></li>
                <li><a class="nav-link scrollto" href="software-testing/">Software Testing</a></li>
                <li><a class="nav-link scrollto" href="dbms/">DBMS and DBA</a></li>
                <li><a class="nav-link scrollto" href="net-development/">.NET Development</a></li>
                <li><a class="nav-link scrollto" href="fullstack-(mean)/">Full Stack (MEAN)</a></li>
                <li><a class="nav-link scrollto" href="devops-engineer/">DevOps Engineer</a></li>
                <li><a class="nav-link scrollto" href="fullstack-php/">Full Stack PHP</a></li>
                <li><a class="nav-link scrollto" href="java-development/">Full Stack JAVA</a></li>
                <li><a class="nav-link scrollto" href="fullstack-mern/">Full Stack (MERN)</a></li>
                <li><a class="nav-link scrollto" href="cloud-development/">Cloud Development</a></li>
                <li><a class="nav-link scrollto" href="linux-administration/">Linux & Administration</a>
                </li>
                <li><a class="nav-link scrollto" href="mobailapp-development/">Mobile App Development</a>
                </li>
                <li><a class="nav-link scrollto" href="data-science/">Data Science</a></li>
                <li><a class="nav-link scrollto" href="data-analysis/">Data Analytics</a></li>
                <li><a class="nav-link scrollto" href="machine-learning/">AI & Machine Learning</a></li>
                <li><a class="nav-link scrollto" href="cyber-security/">Cyber Security</a></li>
            </ul>

        </li> -->
        <li><a class="nav-link scrollto" href="{{route('about')}}">About</a></li>
        <li><a class="nav-link scrollto" href="#team">Team</a></li>
        <li><a class="nav-link scrollto" href="#contact">Contact us</a></li>
        <li><a class="nav-link scrollto" href="{{route('login')}}">Admin</a></li>
    </ul>
    <i class="bi bi-list mobile-nav-toggle"></i>
</nav>