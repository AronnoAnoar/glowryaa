@extends('frontend.app')
@section('title','Register')
@section('content')
     <!--============ Auth Area Start ============-->
     <section class="auth_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-4 col-xl-5 col-lg-6 col-md-8 col-sm-10 col-12 m-auto">
                    <div class="auth_wrap">
                        <div class="auth_title">
                            <h3>Account Register</h3>
                        </div>
                        <form action="{{route('register')}}" method="POST">
                            @csrf
                            <div class="auth_form">
                                <div class="auth_item">
                                    <label>Name <span class="required_r">*</span></label>
                                    <input type="text" name="name" value="{{old('name')}}" placeholder="name">
                                    @error('name')
                                        <span class="is_error">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="auth_item">
                                    <label>Email <span class="required_r">*</span></label>
                                    <input type="email" name="email" value="{{old('email')}}" placeholder="email">
                                    @error('email')
                                        <span class="is_error">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="auth_item">
                                    <label>Mobile</label>
                                    <input type="text" name="phone" value="{{old('phone')}}" placeholder="phone">
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
                                <div class="auth_sub_btn">
                                    <button type="submit" class="auth_sub_btn_link">Register</button>
                                </div>
                                <div class="auth_link_page">
                                    <p>Already have an account?</p>
                                    <a href="{{route('login')}}" class="auth_link_page_link">Login</a>
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