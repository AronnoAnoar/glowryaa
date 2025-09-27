<div class="product_card">
    <div class="product_image">
        <a href="{{route('single.product',$product->slug)}}">
                    <img src="{{ asset('storage/' . $product->thumbnail_img) }}" alt="{{$product->name}}">
            </a>
        <div class="product_discount">
            <span>{{getProductDiscountPrice($product->price, $product->sale_price)}}%</span>
        </div>
        <div class="new_product">
            @if (today()->diffindays($product->created_at) < 14)
                <span>New</span>
            @else
                <span>in-stock</span>    
            @endif
        </div>
    </div>
    <div class="product_content">
        <div class="product_name"  >
            <a href="{{route('single.product', $product->slug)}}" class="product_name_link">{{$product->name}}</a>
        </div>
        <div class="product_price">
            <span class="product_new_price">{{$product->sale_price}} ৳</span>
            @if ($product->price > $product->sale_price)
                <span class="product_discount_price">{{$product->price}} ৳</span>
            @endif
        </div>
        <div class="product_btn">
            <a href="{{route('single.product',$product->slug)}}" class="product_btn_link">Order Now</a>
        </div>
    </div>
</div>