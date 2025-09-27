@extends('frontend.app')
@section('title', $page->name)
@section('content')
     <!--============ Contact Us Area Start ============-->
     <section class="contact_us_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title text-center">
                        <h2>{{$page->name}}</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_padding_top">
            <div class="row gy-4 gx-3">
                        {!! $page->details !!}
            </div>
        </div>
       
    </section>
    <!--============ Contact Us Area End ============-->
@endsection