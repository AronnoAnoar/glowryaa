@extends('frontend.app')
@section('title','LogIn')
@section('content')
     <!--============ Auth Area Start ============-->
     <section class="auth_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-4 col-xl-5 col-lg-6 col-md-8 col-sm-10 col-12 m-auto">
                    <div class="auth_wrap">
                        <div class="auth_title">
                            <h3>Welcome Back</h3>
                        </div>
                        <form action="{{route('login')}}" method="POST">
                            @csrf
                            <div class="auth_form">
                                <div class="auth_item">
                                    <label>Mobile No <span class="required_r">*</span></label>
                                    <input type="text" name="phone" value="{{old('phone')}}" placeholder="01xxxxxxxxx">
                                    @error('phone')
                                        <span class="is_error">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="auth_item">
                                    <label>Password <span class="required_r">*</span></label>
                                    <input type="password" name="password" value="{{old('password')}}" placeholder="password">
                                    @error('password')
                                        <span class="is_error">{{$message}}</span>
                                    @enderror
                                </div>
                                {{-- <div class="auth_forgotten_pass">
                                    <a href="{{route('reset.password')}}" class="auth_forgotten_pass_link">Forgotten password?</a>
                                </div> --}}
                                <div class="auth_sub_btn">
                                    <button type="submit" class="auth_sub_btn_link">Login</button>
                                </div>
                                <div class="auth_sub_btn_two">
                                    <a href="{{route('login.otp')}}" class="auth_sub_btn_two_link">Login With OTP</a>
                                </div>
                                <div class="auth_link_page">
                                    <p>Don't have an account?</p>
                                    <a href="{{route('register')}}" class="auth_link_page_link">Register here</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Auth Area End ============-->
@endsection