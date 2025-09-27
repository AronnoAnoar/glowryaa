@extends('frontend.app')
@section('title',$general_settings->title)
@section('meta_title',$general_settings->meta_title)
@section('meta_description',$general_settings->meta_description)
@section('meta_key', $general_settings->meta_key)
@section('meta_content', $general_settings->meta_content)
@section('content')
     <div class="banner_area section_padding_bottom">
         <div class="container">
             <div class="row">
                 <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                     <div class="slider_banner_active owl-carousel">
                         @foreach ($sliders as $slider)
                             <div class="slider_banner_item">
                                 <a href="{{$slider->url}}" target="_blank">
                                     <img src="{{ asset('storage/'. $slider->image)  }}" alt="{{$slider->url}}">
                                 </a>
                             </div>
                         @endforeach
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <section class="category_area section_padding_bottom">
         <div class="container">
             <div class="row">
                 <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                     <div class="section_title">
                         <h2>Category Items</h2>
                     </div>
                 </div>
             </div>
         </div>
         <div class="container">
             <div class="row">
                 <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                     <div class="category_slider">
                         @foreach ($top_section_categories as $category)
                             <div class="category_item">
                                 <a href="{{route('product.category',[$category->slug])}}" class="category_item_link">
                                     <div class="category_image">
                                         <img src="{{ asset('storage/' . $category->icon_image) }}" alt="{{$category->name}}">
                                     </div>
                                     <div class="category_name">
                                         <p>{{$category->name}}</p>
                                     </div>
                                 </a>
                             </div>
                         @endforeach
                     </div>
                 </div>
             </div>
         </div>
     </section>
     <div id="loadmore_category_product" >
     </div>
     <div class="single_product_specification_list" id="spinner" style=" display: none;text-align: center;">
         <img src="{{asset('frontend/images/spinner/200w.gif')}}" alt="Loading...">
     </div>
     <section class="happy_customer_area section_padding_bottom">
         <div class="container">
             <div class="row">
                 <div class="col-xxl-12">
                     <div class="section_title">
                         <h2>Our Happy Customer</h2>
                     </div>
                 </div>
             </div>
             <div class="row">
                 <div class="col-xxl-12">
                     <div class="happy_customer_active owl-carousel">
                         @if(isset($happyCustomers) && $happyCustomers->count() > 0)
                             @foreach ($happyCustomers as $customer)
                                 <div class="customer_item" style="margin: 0 10px;">
                                     <img src="{{ asset('storage/' . $customer->image) }}" alt="{{ $customer->alt_text ?? 'Happy Customer Review' }}" style="border-radius: 8px; border: 1px solid #eee;">
                                 </div>
                             @endforeach
                         @endif
                     </div>
                 </div>
             </div>
         </div>
     </section>
     <section class="service_area section_padding_bottom d-none d-lg-block">
         <div class="container">
             <div class="row gy-4">
                 <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6">
                     <div class="service_item">
                         <div class="service_icon">
                             <i class="fa-solid fa-thumbs-up"></i>
                         </div>
                         <div class="service_title">
                             <h4>High-quality Goods</h4>
                         </div>
                         <div class="service_description">
                             <p>Enjoy top quality items for less</p>
                         </div>
                     </div>
                 </div>
                 <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6">
                     <div class="service_item">
                         <div class="service_icon">
                             <i class="fa-solid fa-headset"></i>
                         </div>
                         <div class="service_title">
                             <h4>24/7 Live chat</h4>
                         </div>
                         <div class="service_description">
                             <p>Get instant assistance whenever you need it</p>
                         </div>
                     </div>
                 </div>
                 <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6">
                     <div class="service_item">
                         <div class="service_icon">
                             <i class="fa-solid fa-truck"></i>
                         </div>
                         <div class="service_title">
                             <h4>Express Shipping</h4>
                         </div>
                         <div class="service_description">
                             <p>Fast & reliable delivery options</p>
                         </div>
                     </div>
                 </div>
                 <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6">
                     <div class="service_item">
                         <div class="service_icon">
                             <i class="fa fa-credit-card"></i>
                         </div>
                         <div class="service_title">
                             <h4>Secure Payment</h4>
                         </div>
                         <div class="service_description">
                             <p>Multiple safe payment methods</p>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
@endsection

@section('scripts')
<script>
    // Global variable
    var isLoading = false;

    // Function definitions
    function loadData() {
        console.log('loading....');
        isLoading = true;
        $('#spinner').show();
        var data = {
            page: 1,
            limit: 2
        };
        $.ajax({
            url: "{{route('load.more.category.product')}}",
            type: 'POST',
            dataType: 'json',
            data: {page: data.page, limit: data.limit},
            success: function(res){
                $('#loadmore_category_product').append(res.data);
                isLoading = false;
                $('#spinner').hide();
            },
            error: function (xhr, status, error) {
                console.error(error);
                isLoading = false;
            }
        });
    }

    function render(data) {
        $("#loadmore_category_product").append(data);
    }


    // A SINGLE document.ready block to run all scripts when the page is loaded
    $(document).ready(function() {

        // ==========================================================
        // ## NEW ALTERNATIVE SLIDER SCRIPT ##
        // ==========================================================
        const slider = document.querySelector('.category_slider');
        if (slider) {
            const sliderWrapper = document.createElement('div');
            sliderWrapper.className = 'category_slider_wrapper';
            slider.parentNode.insertBefore(sliderWrapper, slider);
            sliderWrapper.appendChild(slider);

            const prevButton = document.createElement('button');
            prevButton.className = 'slider-btn prev';
            prevButton.innerHTML = '<i class="fa fa-chevron-left"></i>';
            sliderWrapper.appendChild(prevButton);

            const nextButton = document.createElement('button');
            nextButton.className = 'slider-btn next';
            nextButton.innerHTML = '<i class="fa fa-chevron-right"></i>';
            sliderWrapper.appendChild(nextButton);

            nextButton.addEventListener('click', () => {
                const itemWidth = slider.querySelector('.category_item').offsetWidth;
                slider.scrollLeft += itemWidth * 3; // Scroll by 3 items
            });

            prevButton.addEventListener('click', () => {
                const itemWidth = slider.querySelector('.category_item').offsetWidth;
                slider.scrollLeft -= itemWidth * 3; // Scroll by 3 items
            });
        }
        // ==========================================================
        // ## END OF NEW SCRIPT ##
        // ==========================================================

        // Initialize Happy Customer Carousel
        $('.happy_customer_active').owlCarousel({
            loop: true,
            margin: 20,
            nav: false,
            dots: true,
            autoplay: true,
            autoplayTimeout: 4000,
            responsive:{
                0:{ items:1 },
                576:{ items:2 },
                768:{ items:3 },
                992:{ items:4 },
                1200:{ items:5 }
            }
        });

        // Initialize Load More functionality
        loadData(); // Initial data load

        isLoading = true;
        $('#spinner').show();
        var data = {
            page: 2,
            limit: 2
        };

        var obj = $(document).loadMore({
            loadType: 'auto',
            url: "{{route('load.more.category.product')}}",
            dataType: 'json',
            type:'post',
            scrollBottom: 700,
            data: {page: data.page, limit: data.limit},
            success: function (res) {
                if(res.category_length == 0){
                    this.ajaxSwitch = false;
                }
                data.page += 1;
                obj.updatePram('data', data);
                render(res.data);
                isLoading = false;
                $('#spinner').hide();
            }
        });

    });
</script>
@endsection