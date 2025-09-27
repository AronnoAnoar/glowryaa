@extends('frontend.app')
@section('title','Contact-Us')
@section('content')
     <!--============ Contact Us Area Start ============-->
     <section class="contact_us_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title text-center">
                        <h2>Contact Us</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_padding_top">
            <div class="row gy-4 gx-3">
                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                    <div class="single_contact_us">
                        <div class="contact_us_title">
                            <i class="fa-solid fa-map-location-dot"></i>
                            <strong>Location</strong>
                        </div>
                        <div class="contact_us_location">
                            <p>{!!$general_settings->invoice_address_details!!}</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                    <div class="single_contact_us">
                        <div class="contact_us_title">
                            <i class="fa-solid fa-phone"></i>
                            <strong>Phone</strong>
                        </div>
                        <div class="contact_us_communication">
                            <ul>
                                <li>
                                    <a href="tel:{{$general_settings->header_contact_number}}"
                                        class="contact_us_communication_link">{{$general_settings->header_contact_number}}</a>
                                </li>
                                <li>
                                    <a href="tel:{{$general_settings->header_contact_number_two}}"
                                        class="contact_us_communication_link">{{$general_settings->header_contact_number_two}}</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                    <div class="single_contact_us">
                        <div class="contact_us_title">
                            <i class="fa-solid fa-envelope"></i>
                            <strong>Email</strong>
                        </div>
                        <div class="contact_us_communication">
                            <ul>
                                <li>
                                    <a href="mailto:info2@labtech.co.kr" class="contact_us_communication_link">{{$general_settings->header_email}}</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_padding_top">
            <div class="row">
                <div class="col-xl-8 col-lg-9 col-md-10 col-sm-12 col-12 col-sm-12 m-auto">
                    <div class="contact_us_form">
                        <form action="{{route('contact-us')}}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-sm-6 col-12 mb-2">
                                    <div class="contact_us_form_item">
                                        <input type="text" required name="name" value="{{old('name')}}" placeholder="Name" required>
                                        @error('name')
                                            <span class="is_error">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-sm-6 col-12 mb-2">
                                    <div class="contact_us_form_item">
                                        <input type="email" name="email"  value="{{old('email')}}" placeholder="Email Address" required>
                                    </div>
                                        @error('email')
                                            <span class="is_error">{{$message}}</span>
                                        @enderror
                                </div>
                                <div class="col-sm-12 col-12 mb-2">
                                    <div class="contact_us_form_item">
                                        <input type="number" name="phone" required value="{{old('phone')}}" placeholder="Phone Number">
                                        @error('phone')
                                            <span class="is_error">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-sm-12 col-12 mb-2">
                                    <div class="contact_us_form_item">
                                        <textarea name="message" placeholder="Message" required></textarea>
                                        @error('message')
                                            <span class="is_error">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-sm-12 col-12">
                                    <div class="contact_us_form_btn">
                                        <button type="submit" class="contact_us_form_btn_link">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Contact Us Area End ============-->

@endsection