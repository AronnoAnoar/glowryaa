@extends('frontend.app')
@section('title','Profile-Edit')
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
                            <h3>Profile Edit</h3>
                        </div>
                        <div class="profile_form section_top_space">
                            <form action="{{route('user.profile.update',Auth::guard('customer')->user()->id)}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>Name</label>
                                            <input type="text" required name="name" value="{{Auth::guard('customer')->user()->name}}" placeholder="name">
                                            @error('name')
                                                <span class="is_error">{{$message}}</span>
                                            @enderror                                        
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>Email</label>
                                            <input type="email" name="email" value="{{Auth::guard('customer')->user()->email}}" placeholder="email">
                                            @error('email')
                                                <span class="is_error">{{$message}}</span>
                                            @enderror  
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>Phone</label>
                                            <input type="text" name="phone" value="{{Auth::guard('customer')->user()->phone}}" required placeholder="phone">
                                            @error('phone')
                                                <span class="is_error">{{$message}}</span>
                                            @enderror  
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="profile_form_item">
                                            <label>City</label>
                                            <select class="checkout_form_select" name="city_id" id="">
                                                <option value="">--Select One--</option>
                                                @foreach ($cities as $city)
                                                    <option value="{{$city->id}}" {{Auth::guard('customer')->user()->city_id == $city->id ? 'selected' : ''}} >{{$city->name}}</option>
                                                @endforeach
                                            </select>
                                            @error('city_id')
                                                <span class="is_error">{{$message}}</span>
                                            @enderror  
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="profile_form_item">
                                            <label>Address</label>
                                            <input type="text" name="address" value="{{Auth::guard('customer')->user()->address}}" placeholder="address">
                                            @error('address')
                                                <span class="is_error">{{$message}}</span>
                                            @enderror  
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="profile_form_item">
                                            <label>Image</label>
                                            <input type="file" name="image">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="profile_form_submit_btn">
                                            <button type="submit" class="profile_form_submit_btn_link">Update</button>
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