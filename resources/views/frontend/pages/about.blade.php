@extends('frontend.app')
@section('title','About')
@section('content')
     <!--============ About Us Area Start ============-->
     <section class="about_us_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title">
                        <h2>About Us</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_top_space">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="about_details">
                        {!!$about!!}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ About Us Area End ============-->

@endsection