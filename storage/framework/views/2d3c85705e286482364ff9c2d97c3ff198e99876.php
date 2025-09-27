
        <!-- jquery 3.6.3 -->
        <script src="<?php echo e(asset('frontend')); ?>/js/jquery-3.6.3.min.js"></script>
        <!-- Bootstrap jS -->
        <script src="<?php echo e(asset('frontend')); ?>/js/bootstrap.min.js"></script>
        <!-- Owl Carousel jS -->
        <script src="<?php echo e(asset('frontend')); ?>/js/plugin/owl.carousel.min.js"></script>
        <!-- Custom jS -->
        <script src="<?php echo e(asset('frontend')); ?>/js/custom.js"></script>
        <!-- header mobile menu js start -->
        <!--===========load more===============-->
        <script src="<?php echo e(asset('frontend')); ?>/js/jquery.loadMore.min.js"></script>
         <!-- Toastr jS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
        
        <script>
            function mobileSubmenu($id){
                document.getElementById($id).classList.toggle("mobile_submenu_toggle");
            }
            function mobileSubSubmenu(){
                document.getElementById($id).classList.toggle("mobile_sub_submenu_toggle");
            }
        </script>
        <!-- header mobile menu js end -->

        <!-- header mobile search js start -->
        <script>
            function search(){
                document.getElementById("search_id").classList.toggle("search_toggle");
            }
        </script>
        <!-- header mobile search js end -->

        <!-- multiple category mobile menu js start -->
        <script>
            function categoryList(){
                document.getElementById("category_list_id").classList.toggle("category_list_toggle");
            }
        </script>
        <!-- multiple category mobile menu js end -->


        <!-- Header Sticky Start -->
        <script>
            window.onscroll = function() {myFunction()};
            
            var header = document.getElementById("myHeader");
            var sticky = header.offsetTop;
            
            function myFunction() {
              if (window.pageYOffset > sticky) {
                header.classList.add("sticky");
              } else {
                header.classList.remove("sticky");
              }
            }
        </script>
        <!-- Header Sticky End --><?php /**PATH /home/alihama1/glowryaa.com/resources/views/frontend/partials/js.blade.php ENDPATH**/ ?>