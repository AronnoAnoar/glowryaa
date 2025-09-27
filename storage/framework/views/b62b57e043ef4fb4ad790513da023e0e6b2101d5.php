

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
            width: 35% !important;
            display: flex;
            flex-direction: column;
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
            width: 200px;
            margin-left: 20px;
        }
        
        .table td, .table th {
            padding: .30rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }

    </style>

 <?php
    
    function countOrderTotayQty($orderItem){
        $total_qty = 0 ;
        foreach ($orderItem as  $item) {
            $total_qty += $item->quantity ;
        }
        return $total_qty ;
    }
 ?>

</head>
<body>
<div class="btn-pr">
    <button class="btn btn-success text-center print-button" onclick="allPrint()" id="print"><i class="fa fa-print"></i></button>
</div>
<?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

 <div class="container page-break">
        <div class="row justify-content-center break">
            <div class="invoice_header_left_section">
                    <ul class="customer_info_list">
                        <li> <strong> Name:  <?php echo e($order->customer->name ?? ""); ?> </strong>  </li>
                        <li> <strong> Mobile: <?php echo e($order->customer_phone ?? ""); ?> </strong>  </li>
                        <li> <strong> Address: </strong>     <?php if(!empty($order->customer->address)): ?>
                                                                    <?php echo e($order->customer->address. ','); ?>

                                                                <?php endif; ?>
                                                                <?php if(!empty($order->sub_city->name)): ?>
                                                                <?php echo e($order->sub_city->name.','); ?>

                                                                <?php endif; ?>
                                                                <?php echo e($order->city->name ?? ''); ?>.

                        </li>
                        <li> <strong> Invoice No: <?php echo e($order->invoice_no); ?> </strong> </li>
                        <?php if($order->courier): ?>
                        <li> <strong> Courier:  <?php echo e($order->courier->name ?? ""); ?> </strong> </li>
                        <?php endif; ?>
                    </ul>
                        </div>
            <div class="invoice_header_right_section">
              <img class="company_logo" src="<?php echo e(asset('storage/'.$setting->logo)); ?>" alt="logo">
                <div class="pull-right moha_add_inv" >
                    <p> <?php echo $setting->invoice_address_details; ?> </p>
                    <p class="current_date" style="margin-top: 5px;" >
                     <strong>  Date: <span style="border:1px solid #ddd">  <?php echo date("d/m/Y"); ?></span>   </strong> </p>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-11 col-md-11 col-lg-offset-1 col-md-offset-1">

                <table class="table table-bordered moha_tbl_inv" style="margin-top: 5px;">

                <tbody>
                    <?php if($order->note): ?>
                     <tr>
                        <td colspan="7" class="text-left" ><b> Note  : <?php echo e($order->note); ?> </b>
                        </td>
                    </tr>
                    <?php endif; ?>

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
                    <?php $__currentLoopData = $order->orderItem; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k=> $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                        <tr>

                            <td class="text-center"><?php echo e($k+1); ?></td>
                            <td class="text-center" style="text-transform: capitalize;">
                                <img src="<?php echo e(asset('storage/'.$item->product->thumbnail_img)); ?>" alt="logo" width="60px" height="60px"> 
                                <?php echo e($item->product->name); ?> <?php echo e($item->product->product_code); ?>

                            </td>
                            <td>
                                 <?php echo e($item->size ?? '-'); ?>

                            </td>
                            <td>
                                <?php echo e($item->color ?? '-'); ?>

                           </td>
                           <td>
                            <?php echo e($item->weight ?? '-'); ?>

                       </td>
                            <td class="text-center">
                                <?php echo e($item->id); ?>

                            </td>
                            <td class="text-center">
                                <?php echo e($item->price); ?>

                            </td>
                            <td class="text-center"><span style="border: 1px solid #ddd;"><b style="font-size: 16px;padding:5px 5px 5px 5px;"> <?php echo e($item->quantity); ?></b></span></td>
                            <td class="text-right"><?php echo e($item->quantity*$item->price); ?> Tk</td>
                        </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>



                    <tr>
                        <td colspan="7" class="text-right"> Total Quantity and Shipping Charge </td>
                        <td> <strong> = <?php echo e(countOrderTotayQty($order->orderItem)); ?> </strong> </td>
                        <td class="text-right"><span style="font-size: 13px;"><?php echo e($order->shipping_cost); ?> Tk</span></td>
                    </tr>
                    <tr>
                        <td colspan="8" class="text-right">Total:</td>
                        <td class="text-right">
                         <span style="font-weight:bold;font-size:13px;">
                            <?php echo e($order->shipping_cost + $order->total); ?> TK</span>
                        </td>
                    </tr>
                        <tr>
                            <td colspan="8" class="text-right">Discount:</td>
                            <td class="text-right"> <?php echo e($order->discount); ?> Tk</td>
                        </tr>
                         <tr>
                            <td colspan="8" class="text-right">Paid:</td>
                            <td class="text-right"> <?php echo e($order->paid); ?> Tk</td>
                        </tr>
                         <tr>
                            <td colspan="8" class="text-right">Amount Due:</td>
                            <td class="text-right"><?php echo e(($order->total)-($order->paid+$order->discount)+$order->shipping_cost); ?> Tk</td>
                        </tr>

                    </tbody>
                </table>

            </div>
        </div>



    </div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

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


<?php /**PATH /home/rawcodei/glowryaa.com/resources/views/admin/pdf/print/invoicePrint.blade.php ENDPATH**/ ?>