<div class="container mt-5">
    <h2 class="text-center mt-5" id="catalog">Our Courses</h2>
    <p class="text-center">List of Courses from Specialization to Short-term courses and Certification courses</p>
    <div class="row ">
        @php
        $course=App\Models\Course::where('is_active',1)->orderBy('course_type_id')->get();
        @endphp
        @if($course)
        @foreach($course as $c)
        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
            <div class="card shadow-sm" data-aos="fade-up">
                <a class="nav-link" href="{{route('course',encrypt($c->id))}}">
                    <img src="{{ asset('storage/course_banner/' . $c->course_banner) }}" alt="" height="200" width="200"
                        class="team mt-3">
                </a>
                <div class="card-body">
                    <a class="nav-link" href="{{route('course',encrypt($c->id))}}">
                        <h4 style="font-size: 20px;font-weight: bolder;" class="text-center text-dark">{{$c->name}}</h4>
                    </a>
                </div>
            </div>
        </div>
        @endforeach
        @endif
    </div>
</div>