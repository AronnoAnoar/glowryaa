<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha34a-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <title>Print || Invoice</title>

    <?php
        $setting = App\Models\GeneralSetting::latest()->first();
    ?>
    <style>

        .pull-right.moha_add_inv {
            text-align: left;
            margin-right: 20px ;
            margin-left: 20px ;
            margin-top: 10px;
        }

        body {
            background: #ddd;
        }


        th {
        background-color: #04AA6D !important;
        color: #000 !important;
        }

        .print {
            background: #fff;
            padding:28px;
            display:block;
        }
        .page-break {
            page-break-after: always;
            background-color: #fff;
            padding-bottom: 50px;
            padding-top: 15px;
            margin-bottom: 10px;
            width: 70%;
        }
        .invoice_header_left_section{
            text-align: left;
            width: 55% !important;
        }
        .invoice_header_right_section{
            text-align: center;
            width: 45% !important; /* Adjusted width slightly for better spacing */
            display: flex;
            flex-direction: column;
            align-items: center; /* Center logo */
        }
        @media print {
            #print {
                display: none;
            }

        }
        .btn-pr{
            text-align: right;
            display: block;
            position: fixed;
            right:0;
            top: 280px;
        }
        .btn-pr button{
            height: 50px;
        }


        .rotate-logo {
            position: fixed;
            left: 30%;
            top:30%;
            right: 0;
            bottom: 50%;
            width: 502px;
            font-size: 24px;
            opacity: 0.2;

        }

        .rotate-logo img{ width: 350px; }


        .customer_info_list {
          border:3px dashed #000 ;
          margin-top: 30px;
          margin-right: 100px;
          margin-left: 10px;
        }

        .customer_info_list li {
            list-style-type: square;
            padding: 5px 0px;
            text-align: left;
         }

        .current_date {
            margin-right: 110px;
        }

        .company_logo {
            width: 250px; /* Adjusted logo size */
            margin-bottom: 15px; /* Added space below logo */
        }
        
        .table td, .table th {
            padding: .30rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }

        /* --- CSS FOR HEADER AND FOOTER LAYOUT --- */
        .header-bottom-content {
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
            width: 100%;
        }

        .qr-code {
            width: 100px;
            height: 100px;
            border: 1px solid #000;
            padding: 5px;
            margin-top: 10px; /* Align with top of address */
        }
        
        .invoice-footer {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-top: 40px;
            padding-top: 20px;
            border-top: 2px solid #333;
        }

        .story-section {
            width: 55%; /* Takes left half area */
            border: 2px solid #dc3545;
            padding: 10px;
            text-align: center;
            font-weight: bold;
        }

        .signature-section {
            width: 40%; /* Takes right half area */
            text-align: center;
        }

        .signature-line {
            border-top: 1px solid #000;
            margin-top: 40px;
        }
        /* --- End of CSS --- */

    </style>

 @php
    
    function countOrderTotayQty($orderItem){
        $total_qty = 0 ;
        foreach ($orderItem as  $item) {
            $total_qty += $item->quantity ;
        }
        return $total_qty ;
    }
 @endphp

</head>
<body>
<div class="btn-pr">
    <button class="btn btn-success text-center print-button" onclick="allPrint()" id="print"><i class="fa fa-print"></i></button>
</div>
@foreach($orders as $order)

 <div class="container page-break">
        <div class="row justify-content-center break">
            <div class="invoice_header_left_section">
                    <ul class="customer_info_list">
                        <li> <strong>Customer Name:  {{ $order->customer->name ?? "" }} </strong>  </li>
                        <li> <strong> Mobile: {{ $order->customer_phone ?? "" }} </strong>  </li>
                        <li> <strong> Address: </strong>     @if(!empty($order->customer->address))
                                                                    {{ $order->customer->address. ',' }}
                                                                @endif
                                                                @if(!empty($order->sub_city->name))
                                                                {{$order->sub_city->name.','}}
                                                                @endif
                                                                {{ $order->city->name ?? ''}}.

                        </li>
                        <li> <strong> Invoice No: {{ $order->invoice_no }} </strong> </li>
                        @if ($order->courier)
                        <li> <strong> Courier:  {{ $order->courier->name ?? "" }} </strong> </li>
                        @endif
                    </ul>
            </div>
            <div class="invoice_header_right_section">
              <img class="company_logo" src="{{ asset('storage/'.$setting->logo) }}" alt="logo">

              <div class="header-bottom-content">
                    <div class="pull-right moha_add_inv" >
                        <p> {!! $setting->invoice_address_details !!} </p>
                        <p class="current_date" style="margin-top: 5px;" >
                        <strong>  Date: <span style="border:1px solid #ddd">  <?php echo date("d/m/Y"); ?></span>     </strong> </p>
                    </div>
                    <img class="qr-code" src="/public/frontend/images/Gloryaaa.png" alt="QR Code">
              </div>

            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-11 col-md-11 col-lg-offset-1 col-md-offset-1">

                <table class="table table-bordered moha_tbl_inv" style="margin-top: 5px;">

                <tbody>
                    @if ($order->note)
                      <tr>
                         <td colspan="7" class="text-left" ><b> Note  : {{ $order->note }} </b>
                         </td>
                     </tr>
                    @endif

                    <tr>
                        <th  style="background-color: #ddd !important;" class="text-left ">No</th>
                        <th  style="background-color: #ddd !important;" class="text-left ">Product Details</th>
                        <th  style="background-color: #ddd !important;" class="text-left ">Size</th>
                        <th  style="background-color: #ddd !important;" class="text-left ">Color</th>
                        <th  style="background-color: #ddd !important;" class="text-left ">Weight</th>
                        <th  style="background-color: #ddd !important;" class="text-left ">Order No</th>
                        <th  style="background-color: #ddd !important;" class="text-right ">Price</th>
                        <th  style="background-color: #ddd !important;" class="text-right ">Qty</th>
                        <th  style="background-color: #ddd !important;" class="text-right ">Total</th>
                    </tr>
                    @foreach($order->orderItem as $k=> $item)

                        <tr>

                            <td class="text-center">{{$k+1}}</td>
                            <td class="text-center" style="text-transform: capitalize;">
                                <img src="{{ asset('storage/'.$item->product->thumbnail_img) }}" alt="logo" width="60px" height="60px"> 
                                {{$item->product->name}} {{$item->product->product_code}}
                            </td>
                            <td>{{$item->size ?? '-'}}</td>
                            <td>{{$item->color ?? '-'}}</td>
                           <td>{{$item->weight ?? '-'}}</td>
                            <td class="text-center">{{$item->id}}</td>
                            <td class="text-center">{{$item->price}}</td>
                            <td class="text-center"><span style="border: 1px solid #ddd;"><b style="font-size: 16px;padding:5px 5px 5px 5px;"> {{$item->quantity}}</b></span></td>
                            <td class="text-right">{{$item->quantity*$item->price}} ৳</td>
                        </tr>
                    @endforeach



                    <tr>
                        <td colspan="7" class="text-right"> Total Quantity and Shipping Charge </td>
                        <td> <strong> = {{ countOrderTotayQty($order->orderItem) }} </strong> </td>
                        <td class="text-right"><span style="font-size: 13px;">{{$order->shipping_cost}} ৳</span></td>
                    </tr>
                    <tr>
                        <td colspan="8" class="text-right">Total:</td>
                        <td class="text-right">
                         <span style="font-weight:bold;font-size:13px;">
                            {{ $order->shipping_cost + $order->total }} ৳</span>
                        </td>
                    </tr>
                        <tr>
                            <td colspan="8" class="text-right">Discount:</td>
                            <td class="text-right"> {{$order->discount}} ৳</td>
                        </tr>
                         <tr>
                            <td colspan="8" class="text-right">Paid:</td>
                            <td class="text-right"> {{$order->paid}} ৳</td>
                        </tr>
                         <tr>
                            <td colspan="8" class="text-right">Amount Due:</td>
                            <td class="text-right">{{ ($order->total)-($order->paid+$order->discount)+$order->shipping_cost}} ৳</td>
                        </tr>

                    </tbody>
                </table>
                
                <div class="invoice-footer">
                    <div class="story-section">
                        You're now part of our story! ⭐ Share a photo/review on social and tag us — we might just surprise you with a feature or reward!
                    </div>
                    <div class="signature-section">
                        <div class="signature-line"></div>
                        Authorized Signature
                    </div>
                </div>
                </div>
        </div>



     </div>
@endforeach

<script>
    function allPrint() {
        window.print();
    };

    window.addEventListener('DOMContentLoaded', (event) => {
     window.print();
    });

</script>

</body>
</html>