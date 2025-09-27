@extends('frontend.app')
@section('title','Login OTP')
@section('content')
     <!--============ Auth Area Start ============-->
     <section class="auth_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-4 col-xl-5 col-lg-6 col-md-8 col-sm-10 col-12 m-auto">
                    <div class="auth_wrap">
                        <div class="auth_title">
                            <h3>Login With Mobile Number</h3>
                        </div>

                        @if(session()->has('message'))
                            <div class="alert alert-success">
                                {{ session()->get('message') }}
                            </div>
                        @endif
                        
                        <form  id="send_otp_form">
                            <div class="auth_form">
                                <div class="auth_item">
                                    <label>Mobile Number <span class="required_r">*</span></label>
                                    <input type="text" name="mobile_no" placeholder="01xxxxxxxxx">
                                    @error('mobile_no')
                                        <span class="is_error">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="auth_sub_btn">
                                    <button id="send_otp_form_submit"
                          class="auth_sub_btn_link">Send</button>
                                </div>
                                <div class="auth_link_page">
                                    <a href="{{route('login')}}" class="auth_link_page_link">Login with password</a>
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