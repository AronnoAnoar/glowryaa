@extends('frontend.app')
@section('title','Order-Success')
@section('content')
<!--================== success header start ==================-->
<div class="success_header_area section_padding_bottom">
<div class="success_header">
<div class="success_title">
<div class="check_out_icon">
<i class="fa-solid fa-check"></i>
</div>
<h2>Thank you</h2>
</div>
</div>
<div class="success_content_info">
<p class="success_p english_p">
Your order has been successfully submitted. One of our representatives will call you shortly
</p>
<div class="success_order_details">
<div class="success_order_header">
<div class="overview__order">
<p>Order number:</p>
<span>{{$order->invoice_no}}</span>
<input type="hidden" id="invoice_id" value="{{$order->invoice_no}}">

                </div>
                <div class="overview__order">
                    <p>Date:</p>
                    <span>{{$order->created_at->format('Y/M/d h:i a')}}</span>
                </div>
                <div class="overview__order">
                    <p>Total:</p>
                    <span>{{number_format($order->total + $order->shipping_cost)}} TK</span>
                </div>
                <div class="overview__order">
                    <p>Payment method:</p>
                    <span>Cash on delivery</span>
                </div>
            </div>
            <div class="pay_deliveay_title">
                <p>Pay with cash upon delivery.</p>
            </div>
            <div class="order_details">
                <h4>Order details</h4>
                <table class="order_details_table">
                    <tr>
                        <td class="order_left_side product_total">Product</td>
                        <td class="product_total">Total</td>
                    </tr>
                    @foreach ($order->orderItem as $item)
                        <tr class="winter_warm_face_masks">
                            <td class="order_left_side winter_warm_td">
                                {{$item->product->name}} × {{$item->quantity}}
                            </td>
                            <td class="">{{number_format($item->total)}} TK</td>
                        </tr>
                    @endforeach
                    <tr>
                        <td class="order_left_side">Subtotal</td>
                        <td class="">{{number_format($order->orderItem->sum('total'))}} TK</td>
                    </tr>
                    <tr>
                        <td class="order_left_side">Shipping</td>
                        <td class="">{{number_format($order->shipping_cost)}} TK
                        </td>
                    </tr>
                    <tr>
                        <td class="order_left_side">Payment method</td>
                        <td class="">Cash on delivery</td>
                    </tr>
                    <tr>
                        <td class="left total">Total</td>
                        <td class="total">{{number_format($order->total + $order->shipping_cost)}} TK</td>
                    </tr>
                </table>
            </div>
        </div>
        
        <!-- Back To Home Button Added Here -->
        <div style="text-align: center; margin-top: 20px;">
            <a href="{{ url('/') }}" style="
                background-color: #830353;
                color: white;
                padding: 10px 20px;
                text-decoration: none;
                border-radius: 5px;
                font-weight: bold;
                display: inline-block;
                transition: background-color 0.3s ease;
            ">Back To Home</a>
        </div>
        <!-- End of Button -->
    </div>
</div>
<!--================== success header end ==================-->

@endsection
@section('scripts')
<script>

    document.addEventListener('DOMContentLoaded', function() {
    // Code to execute when the DOM is fully loaded
    function handleWindowLoad() {
        console.log('Window loading has ended.');
        var invoice_id = $('#invoice_id').val();
        gtmCartItemsEvent('purchase', invoice_id) ;
        
        window.removeEventListener('load', handleWindowLoad);
    }
    window.addEventListener('load', handleWindowLoad, { once: true });
    });
</script>

@endsection