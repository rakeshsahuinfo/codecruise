<header id="header" class="d-flex align-items-center fixed-top ">
    <div class="container d-flex align-items-center">

        <div class="logo me-auto">
            <!-- <h1><a href="index">SkillAdders</a></h1> -->
            <!-- Uncomment below if you prefer to use an image logo -->
            <a href="{{route('landing-page')}}"><img src="{{asset('assets/img/logo/SALOGO2.png')}}" alt="" class="img-fluid"></a>
        </div>
        <!-- nabar -->
        @include('nav')
        <!-- .navbar -->

    </div>
    @include('mega-nav')
   
</header> 