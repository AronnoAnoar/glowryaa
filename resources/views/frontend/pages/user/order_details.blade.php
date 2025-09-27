@extends('frontend.app')
@section('title','Order-Details')
@section('content')
    
        <!--============ Profile Area Start ============-->
        <section class="profile_area section_padding">
            <div class="container">
                <div class="row gy-4">
                    <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                       @include('frontend.components.user_dashboard')
                    </div>
                    <div class="col-xxl-9 col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                        <div class="profile_right_side">
                            <div class="profile_heading text-center">
                                <h3>Order Details</h3>
                            </div>
                            <div class="profile_page_content section_top_space">
                                <div class="profile_page_order_view table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>Product</th>
                                                <th>Code</th>
                                                <th>Quantity</th>
                                                <th>Price</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($order_items as  $item)      
                                                <tr>
                                                    <td>1</td>
                                                    <td>
                                                        <div class="order_details">
                                                            <img src="{{asset('storage/'.$item->product->thumbnail_img)}}" alt="product">
                                                            <p>{{$item->product->name}}</p>
                                                        </div>
                                                    </td>
                                                    <td>{{$item->product->product_code}}</td>
                                                    <td>{{$item->quantity}}</td>
                                                    <td>{{$item->price}} TK</td>
                                                    <td>{{$item->total}} TK</td>
                                                </tr>
                                            @endforeach
                                            <tr>
                                                <td colspan="4"></td>
                                                <td>
                                                    <strong>Sub Total</strong>
                                                </td>
                                                <td>{{$sub_total}} TK</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"></td>
                                                <td>
                                                    <strong>Discount</strong>
                                                </td>
                                                <td>{{$order->discount}} TK</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"></td>
                                                <td>
                                                    <strong>Paid</strong>
                                                </td>
                                                <td>{{$order->paid}} TK</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"></td>
                                                <td>
                                                    <strong>Shipping Cost</strong>
                                                </td>
                                                <td>{{$order->shipping_cost}} TK</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"></td>
                                                <td>
                                                    <strong>Amount Due</strong>
                                                </td>
                                                <td>{{$total_due_amount}} TK</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--============ Profile Area End ============-->

@endsection