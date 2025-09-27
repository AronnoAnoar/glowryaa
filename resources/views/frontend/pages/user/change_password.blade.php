@extends('frontend.app')
@section('title','Change-password')
@section('content')
     <!--============ Profile Area Start ============-->
     <section class="profile_area section_padding">
        <div class="container">
            <div class="row gy-4">
                <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                    @include('frontend.components.user_dashboard')
                </div>
                <div class="col-xxl-7 col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                    <div class="profile_right_side">
                        <div class="profile_heading text-center">
                            <h3>Change password</h3>
                        </div>
                        <div class="profile_form section_top_space">
                            <form action="{{route('user.update.password',Auth::guard('customer')->user()->id)}}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>New Password</label>
                                            <input type="password" name="password" placeholder="Password">
                                            @error('password')
                                                <span class="is_error">{{$message}}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>Confirm password</label>
                                            <input type="password" name="confirm_password" placeholder="Confirm password">
                                            @error('confirm_password')
                                                <span class="is_error">{{$message}}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="profile_form_submit_btn">
                                            <button type="submit" class="profile_form_submit_btn_link">Save Change</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Profile Area End ============-->

@endsection