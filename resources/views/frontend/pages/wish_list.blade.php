@extends('frontend.app')
@section('title','Wish-List')
@section('content')
     <!--============ Wishlist Area Start ============-->
     <section class="wishlist_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title custom_section_title text-center">
                        <h2>Wishlist</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container section_padding_top">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="wishlist_content">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                      <th class="padding_left_zero">Image</th>
                                      <th>Name</th>
                                      <th>Price</th>
                                      <th>Action</th>
                                      <th class="padding_right_zero" style="text-align: right;">Removie</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($wishlist_content as $item)    
                                        <tr>
                                        <td class="padding_left_zero">
                                            <div class="wishlist_image">
                                                <a href="single_product.html">
                                                    <img src="{{asset('storage/'.$item->options->image)}}" alt="{{$item->name}}">
                                                </a>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="wishlist_name">
                                                <a href="#" class="wishlist_name_link">{{$item->name}}</a>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="wishlist_price">
                                                <span>{{$item->price}} TK</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="wishlist_action">
                                                <a href="{{route('single.product', $item->options->slug)}}"  class="wishlist_action_link">
                                                    Add To Cart
                                                </a>
                                            </div>
                                        </td>
                                        <td class="padding_right_zero" style="text-align: right;">
                                            <div class="wishlist_delete">
                                                <a  class="wishlist_delete_link" id="{{$item->rowId}}" onclick="removeWishList(this.id)">
                                                    <i class="fa-solid fa-trash"></i>
                                                </a>
                                            </div>
                                        </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Wishlist Area End ============-->
@endsection