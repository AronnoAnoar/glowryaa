@extends('frontend.app')
@section('title','Check Out')
@section('content')
          <!--============ Success Area Start ============-->
          <section class="success_area section_padding">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="success_content text-center">
                            <div class="error_icon">
                                <i class="fa-solid fa-xmark"></i>
                            </div>
                            <div class="success_subtitle">
                                <p>YOUR {{$name ? $name : "CART"}} IS EMPTY</p>
                            </div>
                            <div class="success_title">
                                <img height="150" width="150" src="{{asset('storage/images/check_out/blank_check_out.png')}}" alt="">
                            </div>
                            <div class="success_btn">
                                <a href="{{route('root')}}" class="success_btn_link">Continue Shopping</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--============ Success Area End ============-->

@endsection