<div class="container my-5">
    <h2 class="text-center mt-5 p" id="catalog">Explore more Courses</h2>
    <p class="text-center sp">List of courses available</p>
    <div class="row ">
        @php
        $course=App\Models\Course::where('is_active',1)->orderBy('course_type_id')->get();
        @endphp
        @if($course)
        @foreach($course as $c)
        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
            <div class="card shadow-sm" data-aos="fade-up">
                <a class="nav-link" href="{{route('course',encrypt($c->id))}}">
                    <img src="{{ asset('course_banner/' . $c->course_banner) }}" alt="" height="150" width="200"
                        class="team mt-3">
                </a>
                <div class="card-body">
                    <a href="{{route('course',encrypt($c->id))}}">
                        <h4 style="font-size: 20px;font-weight: bolder;" class="text-center text-dark">{{$c->name}}</h4>
                    </a>
                </div>
            </div>
        </div>
        @endforeach
        @endif
    </div>
</div>