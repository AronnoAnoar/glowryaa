<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>order pcklist </title>
    <style>
        body {
            margin-top: 20px;
        }

        * {
            margin: 0;
            padding: 0;
        }



        table {
            border: 1px solid #000;
            padding: 10px 10px;
        }

        td {
            border: 1px solid #ddd;
            padding: 5px 5px;
        }


        .address {
            line-height: 0.4;
            text-align: center;
        }

        .logo {
            font-size: 32px;
            font-weight: bolder;
        }

        .p-h {
            text-align: center;
            text-transform: uppercase;
            font-weight: bold;
            font-size: 16px;
        }

        
        th {
            border: 1px solid #000;
            padding: 2px;
        }


    </style>
</head>

<body>
 
    <div class="container">
        <div class="row">
            <div class="address">
                <p class="logo"> {{$company_info->title}} </p>
                <p class="address_line">
                    {!! $company_info->invoice_address_details !!}
                  </p>
                

            </div>

            <div class="col-lg-12">
               orders :    
               @foreach ($order_invoices as $item)
                    {{ $item->invoice_no }} ,
                @endforeach

                <div>
                    <br>
                    printed @php
                        echo date("l jS \of F Y h:i:s A") . "<br>";
                    @endphp
                </div>
            </div>

            <div class="col-lg-12">
                <p class="p-h">order picklist</p>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Code </th>
                            <th>Name</th>
                            <th>Size</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($orders as $k => $item)
                            <tr>
                                <td>{{ $k + 1 }}</td>
                                <td>
                                   
                                    <p>{{ $item->product_code }} </p>
                      
                                </td>
                                <td>
                                    <img width="60px" height="60px"
                                    src="{{ asset('storage/' . $item->thumbnail_img) }} " />
                                    {{ $item->slug }}
                                </td>
                                <td>
                                    <ul style="list-style: none">
                                        @foreach ( $item->items as $size )
                                            <li style="font-size:14px" > 
                                                {{$size->size}} = {{ $size->qty }}
                                            </li> 
                                        @endforeach
                                    </ul>
                                </td>

                                <td>{{ $item->total_qty }}</td>

                            </tr>

                            
                        @endforeach

                    </tbody>
                </table>
            </div>

        </div>
    </div>

</body>

</html>
