<footer id="footer">
    <div class="footer-top mt-3">
        <div class="container">
            <div class="row">

                <div class="col-lg-4 col-md-6 footer-info">
                    <h3>CodeCruise</h3>
                    <p>
                        A74, TechnoPark, <br>Andheri, Mumbai, Maharashtra India.<br>
                        <strong>Phone:</strong> +91 703 456 2050<br>
                        <strong>Email:</strong> ask@codecruise.in<br>
                    </p>
                    <div class="social-links mt-3">
                        <a href="https://facebook.com/codecruise/" class="facebook" target="_new"><i class="bi bi-facebook"></i></a>
                        <a href="https://instagram.com/codecruise/" class="instagram" target="_new"><i class="bi bi-instagram"></i></a>
                        <a href="https://www.linkedin.com/company/codecruise" class="linkedin" target="_new"><i class="bi bi-linkedin"></i></i></a>
                        <a href="https://twitter.com/codecruiseindia/" class="twitter" target="_new"><i class="bi bi-twitter"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 footer-links">
                    <h4>Useful Links</h4>
                    <ul class="ul">
                        <li><i class="bx bx-chevron-right"></i> <a href="{{route('landing-page')}}">Home</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="{{route('about')}}">About us</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="{{route('privacy-policy')}}" target="_new">Privacy Policy</a></li>
                    </ul>
                </div>
                @php
                $ctype=App\Models\CourseType::where('is_active',1)->get();
                @endphp
                <div class="col-lg-4 col-md-6 footer-links">
                    <h4>Top Courses</h4>
                    <ul class="ul">
                        @if($ctype)
                        @foreach($ctype as $ct)
                        <li><a href="{{route('course-by-type',encrypt( $ct->id))}}">{{$ct->name}}</a></li>
                        @endforeach
                        @endif
                    </ul>
                </div>
                <!-- 
                <div class="col-lg-4 col-md-6 footer-newsletter">
                    <h4>Our Newsletter</h4>
                    <p>Please subcribe to get our weekly news letter</p>
                    <form action="subscribe.php" method="post">
                        <input type="email" name="email"><input type="submit" value="Subscribe">
                    </form>
                </div> -->
            </div>
        </div>
    </div>
    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong><span>CodeCruise</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
            Designed by <a href="https://codecruise.in/">CodeCruise</a>
        </div>
    </div>
</footer>