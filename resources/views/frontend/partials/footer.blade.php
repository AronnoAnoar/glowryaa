<!--============ Footer Area Start ============-->
<footer class="footer_area">
    <div class="container">
        <div class="row gy-4">
            
            <!-- Left Column -->
            <div class="col-lg-4 col-md-6">
                <div class="footer_box">
                    <div class="footer_logo mb-3">
                        <a href="{{route('root')}}">
                            <img src="{{ asset('storage/' . $general_settings->logo) }}" alt="logo">
                        </a>
                    </div>
                    <p class="footer_text">{!! $footer_settings->footer_description !!}</p>
                    <div class="footer_social mt-3">
                        <a href="{{$footer_settings->facebook_url}}" target="_blank" class="social_icon facebook"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="{{$footer_settings->youtube_url}}" target="_blank" class="social_icon youtube"><i class="fa-brands fa-youtube"></i></a>
                        <a href="{{$footer_settings->linkedin_url}}" target="_blank" class="social_icon linkedin"><i class="fa-brands fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>

            <!-- Middle Column -->
            <div class="col-lg-4 col-md-6">
                <div class="footer_box">
                    <h4 class="footer_title">Address</h4>
                    <p class="footer_text">{!! $footer_settings->footer_payment_info !!}</p>

                </div>
            </div>

            <!-- Right Column -->
            <div class="col-lg-4 col-md-12">
                <div class="footer_box">
                    <h4 class="footer_title">Services & Help</h4>
                    <ul class="footer_links">
                        <li><a href="{{route('about')}}">About Us</a></li>
                        <li><a href="{{route('contact-us')}}">Contact Us</a></li>
                        <li><a href="{{route('custom.page','refund-and-returns')}}">Refund and Returns Policy</a></li>
                        <li><a href="{{route('custom.page','privacy-policy')}}">Privacy Policy</a></li>
                    </ul>

                </div>
            </div>
        </div>

        <!-- Bottom Row -->
        <div class="footer_bottom text-center mt-4">
            <p>{{$footer_settings->copyright_info}}</p>
        </div>
    </div>
</footer>
<!--============ Footer Area End ============-->
