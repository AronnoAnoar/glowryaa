@extends('frontend.app')
@section('title', 'Reset-Password')
@section('content')
     <!--============ Auth Area Start ============-->
     <section class="auth_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-4 col-xl-5 col-lg-6 col-md-8 col-sm-10 col-12 m-auto">
                    <div class="auth_wrap">
                        <div class="auth_title">
                            <h3>Reset Password</h3>
                        </div>
                        <form action="{{route('reset.password')}}" method="POST">
                            @csrf
                            <div class="auth_form">
                                <div class="auth_item">
                                    <label>Mobile <span class="required_r">*</span></label>
                                    <input type="number" name="phone" value="{{old('phone')}}" placeholder="Enter Phone">
                                    @error('phone')
                                        <span class="is_error">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="auth_sub_btn">
                                    <button type="submit" class="auth_sub_btn_link">Reset password</button>
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