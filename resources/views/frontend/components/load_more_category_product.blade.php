  
  @if (isset($category->products[0]))    
    <section class="category_wise_multi_product_area section_padding_bottom">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_title_table_cell">
                        <div class="section_title single_product_specification_list">
                            <h2 onclick="categoryList()">
                                {{$category->name}}
                                <i class="fa-solid fa-list"></i>
                            </h2>
                        </div>
                        <div class="category_list">
                            <ul id="category_list_id" class="category_list_class">
                                @foreach ($category->subCategory as $subcategory)     
                                    <li>
                                        <a href="{{route('product.category',[$category->slug, $subcategory->slug])}}" class="category_list_link">{{$subcategory->name}}</a>
                                    </li>
                                @endforeach
                            
                                <li>
                                    <a href="{{route('product.category',[$category->slug])}}" class="category_list_link category_list_link_view_all">View All</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row gy-3 gx-3">
                @forelse ($category->products as $product)    
                    <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-4 col-sm-4 col-6">
                        @include('frontend.components.product_content', ['product' => $product])
                    </div>
                @empty
                    <p>No Product</p>
                @endforelse
            </div>
        </div>
        
    </section>
  @endif
