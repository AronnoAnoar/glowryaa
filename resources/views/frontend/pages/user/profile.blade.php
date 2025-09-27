@extends('frontend.app')
@section('title','Profile')
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
                            <h3>Address</h3>
                        </div>
                        <div class="profile_shipping_address section_top_space">
                            <div class="profile_shipping_address_list">
                                <ul>
                                    <li>
                                        <p><strong>Name : </strong>{{Auth::guard('customer')->user()->name}}</p>
                                    </li>
                                    <li>
                                        <p><strong>Email : </strong>{{Auth::guard('customer')->user()->email}}</p>
                                    </li>
                                    <li>
                                        <p><strong>Phone : </strong>{{Auth::guard('customer')->user()->phone}}</p>
                                    </li>
                                    <li>
                                        <p><strong>Address : </strong>{{Auth::guard('customer')->user()->address}}</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Profile Area End ============-->

@endsection