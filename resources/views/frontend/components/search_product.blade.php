<ul>
    @foreach ($products as $product)
        <li>
            <a href="{{route('single.product',$product->slug)}}" class="header_search_item_link">
                <div class="header_search_item_content">
                    <div class="header_search_item_product_image">
                        <img src="{{ asset('storage/' . $product->thumbnail_img) }}" alt="{{$product->name}}">
                    </div>
                    <div class="header_search_item_product_details">
                        <div class="header_search_item_product_name">
                            <p>{{$product->name}}</p>
                        </div>
                        <div class="header_search_item_product_price">
                            <span class="header_search_item_product_new_price">{{$product->sale_price}} TK</span>
                            @if ($product->price > $product->sale_price)
                                <span class="header_search_item_product_discount_price">{{$product->price}} TK</span>
                            @endif 
                    </div>
                    </div>
                </div>
            </a>
        </li>
    @endforeach
</ul>