@extends('frontend.app')
@section('title','Dashboard')
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
                            <h3>All Orders</h3>
                        </div>
                        <div class="profile_page_content section_top_space">
                            <div class="profile_page_order_view">
                                <div class="table-responsive">
                                    <table id="user_order_table" class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>Invoice No</th>
                                                <th>Date</th>
                                                <th>Status</th>
                                                <th>Discount</th>
                                                <th>Total</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($orders as $order)    
                                                <tr>
                                                    <td>{{$loop->index + 1}}</td>
                                                    <td>{{$order->invoice_no}}</td>
                                                    <td>{{Carbon\Carbon::parse($order->created_at)->format('Y-m-d h:i a')}}</td>
                                                    <td>
                                                        @if ($order->status == 1)
                                                            <span class="badge bg-secondary" >New</span>
                                                        @elseif ($order->status == 2)
                                                            <span class="badge" >Pending</span>
                                                        @elseif ($order->status == 3)
                                                            <span class="badge bg-success">Approved</span>
                                                        @elseif ($order->status == 4)
                                                            <span class="badge bg-success" >Shipment</span>
                                                        @elseif ($order->status == 5)
                                                            <span class="badge bg-warning">Delivered</span>
                                                        @elseif ($order->status == 6)
                                                            <span class="badge bg-danger" >Cancel</span>
                                                        @elseif ($order->status == 7)
                                                            <span class="badge bg-danger">Return</span>
                                                        @else
                                                            <span class="badge bg-info ">Processing</span>
                                                        @endif

                                                    </td>
                                                    <td>
                                                        <span class="order_discount">{{$order->discount}}</span>
                                                    </td>
                                                    <td>{{$order->total}}</td>
                                                    <td>
                                                        <div class="profile_oder_view">
                                                            @if ($order->status == 1 || $order->status == 2 || $order->status == 3)    
                                                                <a href="{{route('user.order.Update',$order->id)}}" class="profile_oder_cancel_btn">
                                                                    Cancel
                                                                </a>   
                                                            @endif
                                                            <a href="{{route('user.order.details',$order->id)}}" class="profile_oder_view_link">
                                                                <i class="fa-regular fa-eye"></i>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            @empty
                                                <p>No Order</p>
                                            @endforelse
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Profile Area End ============-->
@endsection

@push('scripts')
<script>
    $(document).ready( function () {
        $('#user_order_table').DataTable();
    });
</script>
@endpush
