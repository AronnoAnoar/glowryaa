@extends('frontend.app')
@section('title','Category Products')
@if (isset($category) && isset($sub_category) && isset($sub_sub_category))
    @section('meta_title', $sub_sub_category->meta_title)
    @section('meta_description', $sub_sub_category->meta_description)
    @section('meta_key', $sub_sub_category->meta_key)
    @section('meta_content', $sub_sub_category->meta_content)  
@elseif (isset($category) && isset($sub_category)) 
    @section('meta_title', $sub_category->meta_title)
    @section('meta_description', $sub_category->meta_description)
    @section('meta_key', $sub_category->meta_key)
    @section('meta_content', $sub_category->meta_content)
@elseif (isset($category) && $sub_category == null && $sub_sub_category == null)
    @section('meta_title', $category->meta_title)
    @section('meta_description', $category->meta_description)
    @section('meta_key', $category->meta_key)
    @section('meta_content', $category->meta_content)
@endif
@section('content')
       <!--============ Breadcrumb Area Start ============-->
       <div class="breadcrumb_area section_top_space">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-12">
                    <div class="_breadcrumb">
                        <ul>
                            <li>
                                <a href="{{route('root')}}" class="breadcrumb_link">
                                    <i class="fa-solid fa-house-chimney"></i>
                                </a>
                            </li>
                            <li>
                                <a href="{{route('product.category',[$category->slug])}}" class="breadcrumb_link">
                                   {{$category->name}}
                                </a>
                            </li>
                            @if (isset($sub_category))
                                <li>
                                    <a href="{{route('product.category',[$category->slug, $sub_category->slug])}}" class="breadcrumb_link">
                                    / {{$sub_category->name}}
                                    </a>
                                </li>
                            @endif
                            @if (isset($sub_sub_category))
                                <li>
                                    <a href="{{route('product.category',[$category->slug, $sub_category->slug, $sub_sub_category->slug])}}" class="breadcrumb_link">
                                    / {{$sub_sub_category->name}}
                                    </a>
                                </li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--============ Breadcrumb Area End ============-->

    <!--============ Shop Category Area Start ============-->
    <div class="shop_category_area section_top_space">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-12">
                    <div class="shop_category">
                        <ul>

                            @if (isset($sub_category->subSubCategory) && count($sub_category->subSubCategory) > 0)
                                @foreach ($sub_category->subSubCategory as $sub_subCategory)
                                    <li>
                                        <a href="{{route('product.category',[$category->slug, $sub_category->slug, $sub_subCategory->slug])}}" class="shop_category_link">{{$sub_subCategory->name}}</a>
                                    </li>
                                @endforeach
                            @else
                                @if (isset($category->subCategory) && count($category->subCategory) > 0)
                                    @foreach ($category->subCategory as $subCategory)
                                        <li>
                                            <a href="{{route('product.category',[$category->slug, $subCategory->slug])}}" class="shop_category_link">{{$subCategory->name}}</a>
                                        </li>
                                    @endforeach
                                @endif
                            @endif
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--============ Shop Category Area End ============-->

    <!--============ Shop Area Start ============-->
    <div class="shop_area section_padding_bottom section_top_space">
        <div class="container">
            <!-------------------show load product---------------->
            <div class="row gy-3 gx-3" id="moreDataLoad">
                
            </div>
        </div>
    </div>
    <!--============ Shop Area End ============-->

    
    <!--================Loading Spinner Start==========================-->
    <div id="spinner" style=" display: none;text-align: center;">
        <img src="{{asset('frontend/images/spinner/200w.gif')}}" alt="Loading...">
    </div>
     <!--================Loading Spinner end==========================-->

     <!--===========get value ================== -->
     <input type="hidden" id="category_slug" value="{{$category->slug}}">
     <input type="hidden" id="subcategory_slug" value="{{$sub_category->slug ?? ""}}">
     <input type="hidden" id="sub_subcategory_slug" value="{{$sub_sub_category->slug ?? ""}}">


@endsection
@section('scripts')
   

    <script>
        //==============variable=====================
        var isLoading = false;
        $('#spinner').hide();

        var category_slug = $('#category_slug').val();
        var subcategory_slug = $('#subcategory_slug').val();
        var sub_subcategory_slug = $('#sub_subcategory_slug').val();

        //=========loadData==========
            function loadData() {
                isLoading = true; // Set loading flag to true
                $('#spinner').show();
                var postData = {
                    page:1,
                    limit:12,
                    category_slug:category_slug,
                    subcategory_slug:subcategory_slug,
                    sub_subcategory_slug:sub_subcategory_slug,
                };

                $.ajax({
                    url: "{{route('load.more')}}",
                    type: 'POST',
                    dataType: 'json',
                    data: postData,
                    success: function(res){
                        $('#moreDataLoad').append(res.data);
                        isLoading = false;
                        $('#spinner').hide();
                    },
                    error: function (xhr, status, error) {
                        console.error(error);
                        isLoading = false;
                    }
                });
            }
         //==========================load more data===========================
         $(function(){
            loadData();

            isLoading = true; // Set loading flag to true
            $('#spinner').show();

            var data = {
                page: 2,
                limit: 12,
                category_slug:category_slug,
                subcategory_slug:subcategory_slug,
                sub_subcategory_slug:sub_subcategory_slug
            };


            var postData = {
                    page:data.page,
                    limit:data.limit,
                    category_slug:data.category_slug,
                    subcategory_slug:data.subcategory_slug,
                    sub_subcategory_slug:data.sub_subcategory_slug,
                };

            var obj = $(document).loadMore({
                url: "{{route('load.more')}}",
                dataType: 'json',
                type:'post',
                scrollBottom: 700,
                data: postData,
                success: function (res) {
                    if(res.product_length == 0){
                        this.ajaxSwitch = false; 
                    }
                    data.page += 1;
                    obj.updatePram('data', data);
                    render(res.data);

                    isLoading = false;
                    $('#spinner').hide();
                }
            });

            function render(data) {
                $("#moreDataLoad").append(data);
            }
              
        });
    </script>
@endsection