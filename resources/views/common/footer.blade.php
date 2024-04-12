<footer class="footer-wrapper footer-layout1" data-bg-src="{{asset('common/assets/img/bg/footer-bg.png')}}">
    <div class="shape-mockup footer-shape1 jump" data-left="60px" data-top="70px">
        <img src="{{asset('common/assets/img/normal/footer-bg-shape1.png')}}" alt="img">
    </div>
    <div class="shape-mockup footer-shape2 jump-reverse" data-right="80px" data-bottom="120px">
        <img src="{{asset('common/assets/img/normal/footer-bg-shape2.png')}}" alt="img">
    </div>
    <div class="footer-top">
        <div class="container">
            <div class="footer-contact-wrap">
                <div class="footer-contact">
                    <div class="footer-contact_icon icon-btn">
                        <i class="fal fa-phone"></i>
                    </div>
                    <div class="media-body">
                        <p class="footer-contact_text">Call us any time:</p>
                        <a href="tel+917304562050" class="footer-contact_link">+91 730 456 2050</a>
                    </div>
                </div>
                <div class="divider"></div>
                <div class="footer-contact">
                    <div class="footer-contact_icon icon-btn">
                        <i class="fal fa-envelope"></i>
                    </div>
                    <div class="media-body">
                        <p class="footer-contact_text">Email us 24/7 hours:</p>
                        <a href="mailto:ask@codecruise.in" class="footer-contact_link">ask@codecruise.in</a>
                    </div>
                </div>
                <div class="divider"></div>
                <div class="footer-contact">
                    <div class="footer-contact_icon icon-btn">
                        <i class="fal fa-location-dot"></i>
                    </div>
                    <div class="media-body">
                        <p class="footer-contact_text">Our Office:</p>
                        <a href="https://www.google.com/maps" class="footer-contact_link">A-74, TechnoPark, C Cross
                            Road, Andheri(E), Mumbai,MH, India.</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-wrap" data-bg-src="{{asset('common/assets/img/bg/jiji.png')}}">
        <div class="widget-area">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-md-6 col-xxl-3 col-xl-3">
                        <div class="widget footer-widget">
                            <div class="th-widget-about">
                                <div class="about-logo">
                                    <a href="{{route('landing-page')}}"><img src="{{asset('common/assets/img/logo-white.png')}}"
                                            alt="Codecruise"></a>
                                </div>
                                <p class="about-text">Sail Smooth in Tech Ocean</p>
                                <div class="th-social">
                                    <h6 class="title text-white">FOLLOW US ON:</h6>
                                    <a href="https://www.facebook.com/codecruiseindia" target="_new"><i
                                            class="fab fa-facebook-f"></i></a>
                                    <a href="https://www.twitter.com/codecruiseindia" target="_new"><i class="fab fa-twitter"></i></a>
                                    <a href="https://www.linkedin.com/company/codecruise" target="_new"><i
                                            class="fab fa-linkedin-in"></i></a>
                                    <!-- <a href="https://www.youtube.com/"><i class="fab fa-youtube"></i></a> -->
                                    <a href="https://www.instagram.com/codecruise" target="_new"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    @php
                    $ctype=App\Models\CourseType::where('is_active',1)->get();
                    @endphp
                    <div class="col-md-6 col-xl-auto">
                        <div class="widget widget_nav_menu footer-widget">
                            <h3 class="widget_title">Top Courses</h3>
                            <div class="menu-all-pages-container">
                                <ul class="menu">
                                    @if($ctype)
                                    @foreach($ctype as $ct)
                                    <li><a href="{{route('course-by-type',base64_encode( $ct->id))}}">{{$ct->name}}</a></li>
                                    @endforeach
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto">
                        <div class="widget widget_nav_menu footer-widget">
                            <h3 class="widget_title">Resources</h3>
                            <div class="menu-all-pages-container">
                                <ul class="menu">
                                    <li><i class="bx bx-chevron-right"></i> <a href="{{route('landing-page')}}">Home</a>
                                    </li>
                                    <li><i class="bx bx-chevron-right"></i> <a href="{{route('about')}}">About us</a>
                                    </li>
                                    <li><i class="bx bx-chevron-right"></i> <a href="{{route('privacy-policy')}}"
                                            target="_new">Privacy Policy</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xxl-3 col-xl-3">
                        <div class="widget widget_nav_menu footer-widget">
                            <h3 class="widget_title">Our Branches</h3>
                            <ul class="menu">

                                <li><i class="bx bx-chevron-right"></i> <a href="javascript:void(0)">Andheri</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="javascript:void(0)">BKC</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="javascript:void(0)">Vikhroli</a></li>

                            </ul>
                            <!-- <p class="footer-text">Subscribe our newsletter to get our latest
                                Update & news</p>
                            <form class="newsletter-form form-group">
                                <input class="form-control" type="email" placeholder="Email Email" required="">
                                <i class="far fa-envelope"></i>
                                <button type="submit" class="th-btn style3">Subscribe Now <i class="far fa-arrow-right ms-1"></i></button>
                            </form> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="copyright-wrap">
                <div class="row justify-content-between align-items-center">
                    <div class="col-md-6">
                        <p class="copyright-text">Copyright © 2024 <a href="{{route('landing-page')}}">Codecruise</a>
                            All Rights Reserved.</p>
                    </div>
                    <div class="col-md-6 text-end d-none d-md-block">
                        <div class="footer-links">
                            <ul>
                                <li><a href="{{route('privacy-policy')}}">Privacy Policy</a></li>
                                <!-- <li><a href="#">Terms & Condition</a></li> -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>