@extends('frontend.app')
@section('title','Check Out')
@section('content')
    <!--============ Checkout Area Start ============-->
    <section class="checkout_area section_padding">
       
        <form id="order_form">
            <div class="container">
                <div class="row gy-4">
                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-12 col-12">
                        <div class="checkout_form">
                                <div class="checkout_form_title">
                                    <h3>Please Order Now</h3>
                                </div>
                                <div class="checkout_form_group">
                                    <label>Full Name <span class="text-danger">*</span></label>
                                    <input type="text" name="name" value="{{old('name')}}" required  placeholder="Your Name">
                                    @error('name')
                                        <span style="color:red">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="checkout_form_group">
                                    <label>Mobile Number <span class="text-danger">*</span></label>
                                    <input type="text"  name="mobile_no" maxlength="11" minlength="11" required value="{{old('mobile_no')}}" placeholder="01xxxxxxxxx">
                                    @error('mobile_no')
                                        <span style="color:red">{{$message}}</span>
                                    @enderror
                                </div>
                                <input type="hidden" id="set_city_id" value="0" name="city_id" >
                                <div class="checkout_form_group">
                                    <label>District <span class="text-danger">*</span></label>
                                    <input type="hidden" id="setInputShippingCharge" name="shipping_charge">
                                    <select id="select_area" onchange="shippingCharge( this.options[this.selectedIndex].id, this.value)" required class="checkout_form_select">
                                        <option value="">Select District</option>
                                        @foreach ($cities as $city)
                                            <option value="{{$city->delivery_charge}}" id="{{$city->id}}"   >{{$city->name}}</option>
                                        @endforeach    
                                    </select>
                                    @error('shipping_charge_id')
                                        <span style="color:red">{{$message}}</span>
                                    @enderror
                                </div>

                                <div class="checkout_form_group">
                                    <label>Upazila <span class="text-danger">*</span></label>
                                    <select id="subcity" name="subcity_id" required class="checkout_form_select">
                                        <option value="">Select Upazila</option>
                                    </select>
                                    @error('subcity')
                                        <span style="color:red">{{$message}}</span>
                                    @enderror
                                </div>
                                
                                <div class="checkout_form_group">
                                    <label>Full Address <span class="text-danger">*</span></label>
                                    <textarea name="address" required placeholder="Village,union,thana,district">{{ old('address') }}</textarea>
                                    @error('address')
                                        <span style="color:red">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="checkout_form_btn">
                                    <button  id="order_form_submit" class="checkout_form_btn_link">Order Submit</button>
                                </div>
                           
                        </div>
                    </div>
                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-12 col-12">
                        <div class="checkout_order_summary">
                            <div class="order_summary_title">
                                <h3>Order Summary</h3>
                            </div>
                            <div class="table-responsive order_summary_table">
                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th class="checkout_product_td_left">Product</th>
                                            <th>Quantity</th>
                                            <th>Price</th>
                                            <th class="checkout_product_th_total_price">Total Price</th>
                                            <th class="checkout_product_td_right">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="check_out_carts">
                                       
                                    </tbody>
                                </table>
                            </div>
                            <div >
                                <div class="price_summary_table_cell">
                                    <strong>Sub Total :</strong>
                                    <input id="cart_sub_total" type="hidden" value="{{$cart_sub_total}}">
                                    <strong  >{{$cart_sub_total}} ৳</strong>
                                </div>
                                <div class="price_summary_table_cell">
                                    <strong>Shipping Charge :</strong>
                                    <strong id="show_shipping_charge">00 ৳</strong>
                                </div>
                                <div class="price_summary_table_cell">
                                    <strong>Discount Amount :</strong>
                                    <strong id="show_discount">00 ৳</strong>
                                </div>
                                <div class="price_summary_table_cell">
                                    <strong >Payable Amount :</strong>
                                    <strong id="show_payable">00 ৳</strong>
                                </div>
                            </div>
                            <div class="apply_coupon_group">
                                <label>Apply Coupon Here</label>
                                <div class="apply_coupon_item">
                                    <input type="text" id="coupon_name" value="" name="coupon">
                                    <button type="button" id="coupon_apply" class="apply_coupon_item_link">Apply</button>
                                </div>
                                <span id="coupon_valid" style="color: green;display:none">Congratulations. This Coupon is Valid.</span>
                                <span id="coupon_invalid" style="color: red;display:none">Oops Sorry!. This Coupon is Invalid.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        
    </section>
    <!--============ Checkout Area End ============-->

@endsection
@section('scripts')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
        // Code to execute when the DOM is fully loaded
        function handleWindowLoad() {
            console.log('Window loading has ended.');
            gtmCartItemsEvent('begin_checkout');
            window.removeEventListener('load', handleWindowLoad);
        }

        window.addEventListener('load', handleWindowLoad, { once: true });

        // Other JavaScript functionality
    });
    </script>
@endsection