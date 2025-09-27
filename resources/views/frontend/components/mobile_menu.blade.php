<ul>
    @foreach ($categories as $category)     
        <li>
            <a href="{{route('product.category',[$category->slug])}}" class="mobile_main_menu_link">{{$category->name}}</a>
            @if (count($category->subCategory) > 0)
                <i class="fa-solid fa-angle-down" onclick="toggleSubMenu('mobile_submenu_id_'+{{$category->id}})"></i>
            @endif
            <ul id="mobile_submenu_id_{{$category->id}}" class="mobile_main_submenu mobile_submenu_class">
                @foreach ($category->subCategory as $subCategory)     
                    <li>
                        <a href="{{route('product.category',[$category->slug, $subCategory->slug])}}" class="mobile_main_submenu_link">{{$subCategory->name}}</a>
                        @if (count($subCategory->subSubCategory) > 0)
                            <i class="fa-solid fa-angle-down" onclick="toggleSubMenu('mobile_sub_submenu_id_'+{{$subCategory->id}})"></i>
                        @endif
                        <ul id="mobile_sub_submenu_id_{{$subCategory->id}}" class="mobile_main_sub_submenu mobile_sub_submenu_class">
                            @foreach ($subCategory->subSubCategory as $sub_SubCategory)    
                                <li>
                                    <a href="{{route('product.category',[$category->slug, $subCategory->slug, $sub_SubCategory->slug])}}" class="mobile_main_sub_submenu_link">{{$sub_SubCategory->name}}</a>
                                </li>
                            @endforeach
                            
                        </ul>
                    </li>
                @endforeach
                
            </ul>
        </li>
    @endforeach
</ul>

<script>
      
      function toggleSubMenu(subMenuId) {
// console.log('toggle working');
        var subMenu = document.getElementById(subMenuId);
        if (subMenu.style.display === 'block') {
            subMenu.style.display = 'none';
        } else {
            subMenu.style.display = 'block';
          }
    };
</script>
