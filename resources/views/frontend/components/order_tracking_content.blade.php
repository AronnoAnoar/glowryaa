@if ($order != null)  
<div class="order_tracking_wrap">
    <div class="order_tracking_body">
        <div class="row gx-3">   
            <div class="col-xxl-8 col-xl-9 col-lg-9 col-md-9 col-sm-9 col-12 order-xxl-1 order-xl-1 order-lg-1 order-md-1 order-sm-1 order-2">
                <div class="order_tracking_customer_information">
                    <div class="order_tracking_date_invoice">
                        <div class="order_tracking_date">
                            <p>{{$order->created_at->format('Y/M/d H:m a')}}</p>
                        </div>
                        <div class="order_tracking_invoice">
                            <strong>Invoice No :</strong>
                            <span>{{$order->invoice_no}}</span>
                        </div>
                        <div class="order_tracking_customer_address">
                            <div class="order_tracking_customer_item">
                                <strong>{{@$order->customer->image}}</strong>
                            </div>
                            <div class="order_tracking_customer_item">
                                <strong>Address :</strong>
                                <p>{{@$order->customer->address}}</p>
                            </div>
                            <div class="order_tracking_customer_item">
                                <strong>Phone Number :</strong>
                                <p>{{@$order->customer->phone}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xxl-4 col-xl-3 col-lg-3 col-md-3 col-sm-3 col-12 order-xxl-2 order-xl-2 order-lg-2 order-md-2 order-xxl-2 order-1">
                <div class="order_tracking_order_status_details">
                    <div class="order_tracking_order_cod">
                        <span>COD: {{$order->total}} TK</span>
                    </div>
                    <div class="order_tracking_order_status">
                        <span>{{$order_status}}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>  
    
    
    <div class="order_tracking_footer">
        <div class="row">
            <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="order_tracking_sender_information">
                    <div class="order_tracking_sender_title">
                        <h3>Sender Info</h3>
                    </div>
                    <div class="order_tracking_sender_organization">
                        <h3>{{$general_settings->title}}</h3>
                    </div>
                    <div class="order_tracking_sender_address">
                        <p>
                            <Strong>Office : </Strong>
                            {!! $general_settings->invoice_address_details !!}
                        </p>
                        <p>
                            <Strong>Phone : </Strong> 
                            <a href="tel:{{$general_settings->header_contact_number}}" class="order_tracking_sender_address_link">{{$general_settings->header_contact_number}}</a>
                        </p>
                    </div>
                </div>
                <div class="order_tracking_courier_information">
                    <div class="order_tracking_courier_title">
                        <h3>Courier</h3>
                    </div>
                    <div class="order_tracking_courier_name">
                        <h3 id="courier_name"></h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@else
    <span>No Invoice</span>
@endif