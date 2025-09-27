 @if (isset($cart_content) )
    @foreach ($cart_content as $cart)
        <div class="fixed_product_card_list_table_cell">
            <!-- fixed product cart image start -->
            <div class="fixed_product_card_image">
                <img src="{{ asset('storage/'.$cart->options['image']) }}" alt="{{$cart->name}}">
            </div>
            <!-- fixed product cart image end -->
    
            <div class="fixed_product_card_details">
                <div class="fixed_product_card_name_size_delete">
                    <div class="fixed_product_card_name_size">
                        <!-- fixed product cart name start -->
                        <div class="fixed_product_card_name">
                            <h5>{{$cart->name}}</h5>
                        </div>
                        <!-- fixed product cart name end -->
    
                        <!-- fixed product cart size start -->
                        <div class="fixed_product_card_size">
                            <strong>Size:</strong>
                            <span>{{$cart->options['size_name']}}</span>
                        </div>
                        <!-- fixed product cart size end -->
                    </div>
    
                    <!-- fixed product cart delete start -->
                    <div class="fixed_product_card_delete_icon">
                        <button class="fa-solid fa-trash card_remove" id="{{$cart->rowId}}" onclick="miniCartRemove(this.id)" >
                            {{-- <input type="hidden"  value="{{$cart->rowId}}"> --}}
                        </button>
                    </div>
                    <!-- fixed product cart delete end -->
                </div>
                <div class="fixed_product_card_qty_price">
                    <!-- fixed product cart quantity start -->
                    <div class="fixed_product_card_qty">
                        <div class="fixed_product_card_qty_minus">
                            <i class="fa-solid fa-minus"></i>
                        </div>
                        <input type="hidden" id="fixed_product_stock" value="{{$cart->options['stock']}}">
                        <input id="fixed_product_qty" type="text" value="{{$cart->qty}}">
                        <div class="fixed_product_card_qty_plus">
                            <i class="fa-solid fa-plus"></i>
                        </div>
                    </div>
                    <!-- fixed product cart quantity end -->
    
                    <!-- fixed product cart price start -->
                    <div class="fixed_product_card_close_price">
                        <p>{{($cart->qty * $cart->price)}} ৳</p>
                    </div>
                    <!-- fixed product cart price end -->
                </div>
            </div>
        </div>
    @endforeach
 @endif

<script type="text/javascript">
</script>
