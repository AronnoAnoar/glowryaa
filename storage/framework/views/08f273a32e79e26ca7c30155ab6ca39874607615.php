

<?php
    $color = DB::table('background_and_colors')->first();
?>
<style>
/*
==========================================
    Google Fonts
==========================================
*/
/* font-family: 'Rubik', sans-serif;  */

@import url("https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600;700;800&display=swap");


:root {

    
--primary_color: <?php echo $color->primary_color; ?>;
--primary_text_color: <?php echo $color->primary_text_color; ?>;
--menu_background_color: <?php echo $color->menu_background_color; ?>;
--menu_text_color: <?php echo $color->menu_text_color; ?>;
--white: #ffffff;
--black: #323232;
--border: #ced4da;
--shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
--hover: var(--primary_color);
--success_color: #177e62;
--top_header_color:  <?php echo $color->top_bar_background_color; ?>;
}



* {
  margin: 0;
  padding: 0;
}

html,
body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  font-family: "Rubik", sans-serif;
  font-weight: normal;
  font-style: normal;
  font-size: 16px;
  line-height: 26px;
  color: var(--black);
}



p {
  color: var(--black);
}

a,
.button {
  -webkit-transition: all 0.3s ease-out 0s;
  -o-transition: all 0.3s ease-out 0s;
  transition: all 0.3s ease-out 0s;
}

a:focus,
.button:focus {
  text-decoration: none;
  outline: none;
}
select:focus {
  outline: none;
}
button:focus,
input:focus,
input:focus,
textarea,
textarea:focus {
  outline: 0;
}

ul {
  margin: 0px;
  padding: 0px;
}

li {
  list-style: none;
}

a {
  text-decoration: none;
}

h1,
h2,
h3,
h4,
h5,
h6,
p {
  margin: 0px;
}

h1,
h2,
h3,
h4,
h5,
h6 {
  color: var(--black);
}

hr {
  -webkit-box-sizing: content-box;
  box-sizing: content-box;
  height: 0;
}

*::-moz-placeholder {
  color: #555555;
  opacity: 1;
  font-size: 16px;
}

*::-webkit-input-placeholder {
  color: #555555;
  opacity: 1;
  font-size: 16px;
}

*:-ms-input-placeholder {
  color: #555555;
  opacity: 1;
  font-size: 16px;
}

*::-ms-input-placeholder {
  color: #555555;
  opacity: 1;
  font-size: 16px;
}

*::placeholder {
  color: #555555;
  opacity: 1;
  font-size: 16px;
}


.padding_left_zero {
  padding-left: 0px !important;
}
.padding_right_zero {
  padding-right: 0px !important;
}
.section_padding {
  padding: 60px 0px;
}

.section_padding_top {
  padding-top: 60px;
}

.section_padding_bottom {
  padding-bottom: 60px;
}

.section_top_space {
  padding-top: 30px;
}
.common_table_cell {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
}

/*
==============================================================
    Common Button Css
==============================================================
*/

/*
==============================================================
    Section Heading Css
==============================================================
*/
.section_title_table_cell {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  padding-bottom: 10px;
  margin-bottom: 10px;
  border-bottom: 1px solid var(--border);
}
.section_title h2 {
  font-size: 20px;
  display: block;
  text-transform: capitalize;
  color: var(--black);
  font-weight: 500;
  margin-bottom: 0;
}
.category_list ul {
  margin: 0;
  padding: 0;
}
.category_list ul li {
  list-style: none;
  display: inline-block;
  line-height: 25px;
  margin-right: 3px;
}
.category_list ul li:last-child {
  margin-right: 0px;
}
.category_list ul li .category_list_link {
  display: block;
  border-bottom: 1px solid var(--primary_color);
  color: var(--black);
  font-size: 14px;
  text-transform: capitalize;
  padding: 0px 3px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.category_list ul li:hover .category_list_link {
  color: var(--hover);
}
.category_list_link_view_all {
  background-color: var(--primary_color) !important;
  color: var(--white) !important;
  padding: 1px 10px !important;
  border-radius: 3px !important;
  border-bottom: none !important;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.category_list_link_view_all:hover {
  color: var(--black) !important;
}
.section_title i {
  display: none;
}
/*
==============================================================
    Header Area Css
==============================================================
*/
/* header top css */
.header_top {
  border-bottom: 1px solid var(--border);
  padding: 3px 0px;
  background-color: var(--top_header_color);
}
/* This is the container for your text */
.header_top_site_title {
  height: 100%;
  /* Crucial: Hide the text when it's outside the container */
  overflow: hidden; 
  /* Prevent the text from wrapping to a new line */
  white-space: nowrap; 
  display: flex;
  align-items: center;
}

/* This is the paragraph that will scroll */
.header_top_site_title p {
  /* This starts the animation */
  animation: scroll-left 20s linear infinite; 
  display: inline-block; /* Helps with positioning */
  padding-left: 100%; /* Ensures the text starts outside the container */
}

/* This defines the animation's movement */
@keyframes scroll-left {
  0% {
    transform: translateX(0%);
  }
  100% {
    transform: translateX(-100%);
  }
}
.header_top_list {
  text-align: right;
}
.header_top_list ul {
  margin: 0;
  padding: 0;
}
.header_top_list ul li {
  list-style: none;
  display: inline-block;
  margin-left: 20px;
}
.header_top_list ul li:first-child {
  margin-left: 0px;
}
.header_top_list ul li:last-child {
  display: inline-block;
}
.header_top_list ul li .header_top_list_link {
  display: block;
  font-size: 14px;
  color: var(--black);
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.header_top_list ul li .header_top_list_link:hover {
  color: var(--hover);
}
.header_top_list ul li .header_top_list_link i {
  padding-right: 2px;
  color: var(--primary_color);
}
.header_top_list_auth {
  background-color: var(--primary_color) !important;
  color: var(--white) !important;
  padding: 2px 20px;
  border-radius: 3px;
}

/*
==============================================================
    MODIFIED STICKY CLASS
==============================================================
*/
.sticky {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  -webkit-box-shadow: var(--shadow);
  box-shadow: var(--shadow);
  z-index: 99999;
  /* background-color and padding are removed from here */
}

/* Optional: if you want the middle header to shrink when sticky */
.sticky .header_middle {
  padding: 8px 0px;
  transition: padding 0.3s ease;
}

/* header middle css */
.header_middle {
  padding: 15px 0px;
  background-color: var(--white); /* Ensure middle header has a background */
}
.header_middle_logo {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  height: 100%;
}
.header_middle_logo img {
  max-width: 100%;
  max-height: 100%;
  height: 50px;
}
.header_middle_search {
  position: relative;
}
.header_middle_search input {
  border: 1px solid var(--border);
  width: 100%;
  font-size: 16px;
  border-radius: 3px;
  height: 55px;
  padding-left: 20px;
  padding-right: 60px;
}
.header_middle_search_link {
  border: none;
  background-color: transparent;
  color: var(--black);
  font-size: 20px;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  padding: 0px 20px;
}
.header_middle_table_cell {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: end;
  -ms-flex-pack: end;
  justify-content: end;
  height: 100%;
}
.header_middle_call_link {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}
.header_middle_call_icon i {
  color: var(--primary_color);
  font-size: 26px;
  -webkit-transform: rotate(36deg);
  -ms-transform: rotate(36deg);
  transform: rotate(36deg);
  margin-right: 5px;
}
.header_middle_call_text p {
  font-size: 14px;
  line-height: 14px;
}
.header_middle_call_text span {
  line-height: 13px;
  display: inline-block;
  color: var(--black);
  font-size: 15px;
  font-weight: 500;
}
.header_middle_wishlist {
  border-left: 1px solid var(--border);
  border-right: 1px solid var(--border);
  padding: 0px 20px;
  margin: 0px 50px;
  height: 40px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}
.header_middle_wishlist_icon {
  position: relative;
}
.header_middle_wishlist_icon i {
  font-size: 28px;
  color: var(--primary_color);
}
.header_middle_wishlist_icon span {
  position: absolute;
  bottom: 0;
  right: 0;
  color: var(--black);
  margin-bottom: -5px;
  margin-right: -6px;
  font-size: 14px;
}
.header_middle_cart p {
  font-size: 14px;
  line-height: 14px;
}
.header_middle_cart span {
  line-height: 13px;
  display: inline-block;
  color: var(--black);
  font-size: 15px;
  font-weight: 500;
}
.header_mobile_icon_link span {
  position: absolute;
  top: 0;
  left: 0;
  width: 16px;
  height: 16px;
  background-color: var(--black);
  text-align: center;
  line-height: 18px;
  font-size: 11px;
  color: var(--white);
  border-radius: 50%;
  margin-top: -9px;
  margin-left: 14px;
  display: block;
}
.header_mobile_cart {
  display: inline-block;
  position: relative;
  width: 22px;
  height: 22px;
  padding: 3px;
  border: 1px solid var(--primary_color);
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
  color: var(--black);
  font-size: 14px;
  line-height: 14px;
  text-align: center;
  -webkit-transition: all 0.2s;
  -o-transition: all 0.2s;
  transition: all 0.2s;
}
.header_mobile_cart_count {
  color: var(--black);
}
.header_mobile_cart_count::after {
  position: absolute;
  bottom: 90%;
  left: 50%;
  width: 10px;
  height: 6px;
  margin-bottom: 1px;
  margin-left: -6px;
  border: 1px solid #dc9814;
  color: var(--black);
  border-bottom: 0;
  border-top-left-radius: 99px;
  border-top-right-radius: 99px;
  content: "";
  -webkit-transition: all 0.2s;
  -o-transition: all 0.2s;
  transition: all 0.2s;
  pointer-events: none;
}

/* header search result item css */
.header_search_item_content {
  position: relative;
}
.header_search_item {
  -webkit-box-shadow: var(--shadow);
  box-shadow: var(--shadow);
  background-color: var(--white);
  max-height: 400px;
  overflow: auto;
  position: absolute;
  top: 100%;
  left: 0;
  width: 100%;
  z-index: 999999999;
}
.header_search_item::-webkit-scrollbar-thumb {
  background: var(--primary_color);
  border-radius: 20px;
}
.header_search_item::-webkit-scrollbar {
  width: 5px;
}
.header_search_item ul {
  margin: 0;
  padding: 0;
}
.header_search_item ul li {
  list-style: none;
  display: block;
  width: 100%;
  overflow: hidden;
  border-bottom: 1px solid var(--border);
  padding: 5px 0px 5px 5px;
}
.header_search_item ul li:last-child {
  border-bottom: 0px;
}
.header_search_item_product_image {
  float: left;
  margin-right: 10px;
}
.header_search_item_product_image img {
  width: 50px;
  height: 50px;
}
.header_search_item_product_new_price {
  color: var(--black);
}
.header_search_item_product_discount_price {
  color: #94a3b8;
  text-decoration: line-through;
  padding-left: 8px;
}

/* header bottom css */
.header_bottom {
  background-color: var(--menu_background_color);
}
.main_menu ul {
  margin: 0;
  padding: 0;
}
.main_menu ul li {
  list-style: none;
  display: inline-block;
  margin-right: 30px;
  position: relative;
}
.main_menu ul li:last-child {
  margin-right: 0px;
}
.main_menu ul li .main_menu_link {
  color: var(--menu_text_color);
  font-size: 14px;
  text-transform: uppercase;
  display: block;
  padding: 15px 0px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.main_menu ul li:hover > .main_menu_link {
  color: var(--menu_text_color);
  font-weight: bold;
}
.main_menu ul li .submenu {
  position: absolute;
  top: 100%;
  left: 0;
  width: 240px;
  text-align: left;
  border-radius: 0px 0px 3px 3px;
  -webkit-box-shadow: var(--shadow);
  box-shadow: var(--shadow);
  background-color: var(--white);
  visibility: hidden;
  opacity: 0;
  z-index: 9999999999;
}
.main_menu ul li:hover > .submenu {
  visibility: visible;
  opacity: 1;
}
.main_menu ul li .submenu li {
  display: block;
  width: 100%;
  margin-right: 0px;
  border-bottom: 1px solid var(--border);
}
.main_menu ul li .submenu li:last-child {
  border-bottom: none;
}
.main_menu ul li .submenu li .submenu_link {
  color: var(--black);
  display: block;
  padding: 5px 15px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.main_menu ul li .submenu li .submenu_link i {
  font-size: 14px;
  float: right;
  line-height: 26px;
}
.main_menu ul li .submenu li:hover > .submenu_link {
  color: var(--black);
  margin-left: 0.156in;
}
.main_menu ul li .submenu li:hover {
  background-color: #e5e5e5;
}
.main_menu ul li .submenu li .submenu {
  top: 0;
  left: 100%;
  border-radius: 0px 3px 3px 3px;
}

/*
==============================================================
    Banner Area Css
==============================================================
*/

.slider_banner_item img {
  width: 100% !important;
  max-height: 450px !important;
}
.slider_banner_active .owl-nav div {
  background-color: var(--primary_color);
  border: 1px solid var(--primary_color);
  color: var(--white);
  width: 45px;
  height: 45px;
  line-height: 45px;
  text-align: center;
  font-size: 20px;
  position: absolute;
  top: 50%;
  margin-top: -23px;
  font-weight: 400;
  margin-left: 0px;
  -webkit-transition: 0.5s;
  -o-transition: 0.5s;
  transition: 0.5s;
}
.slider_banner_active .owl-nav div:hover {
  color: var(--white);
}
.slider_banner_active .owl-nav .owl-next {
  right: 0;
  margin-right: 0px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}

/*
==============================================================
   Final Consolidated Category Area CSS
==============================================================
*/
.category_item_link {
  display: block;
  text-decoration: none;
}
.category_image {
  height: 100px;
  width: 100px;
  margin: 10px auto;
  border-radius: 50%;
  /*background-color: var(--primary_color);*/
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  transition: transform 0.3s ease;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  border-radius: 50%;
}
.category_image img {
  max-width: 90%;
  max-height: 90%;
  object-fit: contain;
  border-radius: 50%;
}
.category_item_link:hover .category_image {
  transform: scale(1.05);
}
.category_name {
  text-align: center;
}
.category_name p {
  transition: 0.3s;
  font-size: 14px;
  font-weight: 500;
  color: #333;
}
.category_item_link:hover .category_name p {
  color: var(--hover);
  font-weight: bold;
}

/*
==============================================================
   Alternative Custom Slider CSS
==============================================================
*/
.category_slider {
    display: flex;
    overflow-x: auto;
    scroll-behavior: smooth;
    scrollbar-width: none;
    -ms-overflow-style: none;
    padding-bottom: 15px;
}
.category_slider::-webkit-scrollbar {
    display: none;
}
.category_slider .category_item {
    flex: 0 0 25%;
    padding: 0 5px;
}
@media (min-width: 768px) {
    .category_slider .category_item {
        flex: 0 0 15%;
    }
}
@media (min-width: 992px) {
    .category_slider .category_item {
        flex: 0 0 12.5%;
    }
}
.category_slider_wrapper {
    position: relative;
}
.slider-btn {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(255, 255, 255, 0.2);
    border: none;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    box-shadow: 0 1px 3px rgba(0,0,0,0.2);
    cursor: pointer;
    z-index: 10;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #333;
    font-size: 14px;
    transition: background-color 0.3s ease;
}
.slider-btn:hover {
    background-color: #fff;
}
.slider-btn.prev {
    left: -10px;
}
.slider-btn.next {
    right: -10px;
}


/*
==============================================================
    Product Cart Area Css
==============================================================
*/
/* --- NEW PRODUCT CARD DESIGN --- */

.product_card {
  border: 1px solid var(--border, #e2e8f0);
  background-color: var(--white, #ffffff);
  border-radius: 8px;
  transition: box-shadow 0.3s ease, transform 0.3s ease;
}

.product_card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 20px -5px rgba(0, 0, 0, 0.1);
}

.product_image {
  position: relative;
  width: 100%;
  aspect-ratio: 1/1; /* Slightly taller aspect ratio */
  overflow: hidden; /* This is crucial for the effects */
  border-radius: 8px 8px 0 0;
  max-height: 265px;
}

/* Image Zoom Effect */
.product_image img {
  width: 100%;
  height: 100%;
  object-fit: contain; /* Changed to 'contain' to show the full image */
  transition: transform 0.4s ease-in-out; /* Transition for the zoom effect */
}

.product_card:hover .product_image img {
  transform: scale(1.1); /* Zoom in on hover */
}


/* Action Buttons that appear on hover */
.product_actions {
  position: absolute;
  top: 12px;
  right: -50px; /* Start off-screen */
  display: flex;
  flex-direction: column;
  gap: 8px;
  transition: right 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.product_card:hover .product_actions {
  right: 12px; /* Slide in on hover */
}

.action_btn {
  background-color: var(--white, #fff);
  color: var(--black, #1a202c);
  border-radius: 50%;
  width: 36px;
  height: 36px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 18px;
  text-decoration: none;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  transition: background-color 0.3s, color 0.3s;
}

.action_btn:hover {
  background-color: var(--primary_color, #007bff);
  color: var(--primary_text_color, #fff);
}

/* Discount Badge */
.product_discount {
  position: absolute;
  top: 12px;
  left: 12px;
  background-color: #dc3545;
  color: var(--white, #fff);
  padding: 4px 8px;
  font-size: 12px;
  font-weight: 500;
  border-radius: 4px;
  line-height: 1;
}

/* Product Info Section */
.product_info {
  padding: 16px;
  text-align: center;
}

.product_name_link {
  font-size: 14px;
  font-weight: 500;
  color: var(--black, #333);
  text-decoration: none;
  transition: color 0.3s;
  display: block; /* Make it a block for better spacing */
  margin-bottom: 1px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  padding-left: 10px;
}

.product_name_link:hover {
  color: var(--primary_color);
}

.product_price {
  margin-bottom: 2px;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 8px;
}

.product_new_price {
  font-size: 18px;
  font-weight: 600;
  color: var(--primary_color);
}

.product_discount_price {
  font-size: 14px;
  color: red;
  text-decoration: line-through;
}

/* Main Add to Cart Button */
.product_btn_link {
  color: var(--primary_color, #007bff);
  background-color: transparent;
  display: inline-block; /* Changed for better centering */
  border: 1px solid var(--border, #e2e8f0);
  width: 100%;
  text-align: center;
  padding: 10px 0px;
  border-radius: 6px;
  transition: all 0.3s;
  font-weight: 500;
  text-decoration: none;
}

.product_btn_link:hover {
  background-color: var(--primary_color, #007bff);
  color: var(--primary_text_color, #fff);
  border-color: var(--primary_color, #007bff);
}
/*
==============================================================
    Service Area Css
==============================================================
*/
.service_item {
  text-align: center;
}
.service_icon {
  width: 80px;
  height: 80px;
  line-height: 73px;
  text-align: center;
  font-size: 35px;
  border-radius: 50%;
  background: var(--primary_color);
  color: var(--white);
  border: 5px solid var(--border);
  margin: 0 auto;
}
.service_icon i {
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.service_item:hover .service_icon i {
  -webkit-transform: scaleX(-1);
  -ms-transform: scaleX(-1);
  transform: scaleX(-1);
  cursor: pointer;
  -webkit-transition: 0.5s;
  -o-transition: 0.5s;
  transition: 0.5s;
}
.service_title {
  margin-top: 20px;
  margin-bottom: 5px;
}
.service_title h4 {
  font-size: 22px;
}

/*
==============================================================
    Wishlist Area Css
==============================================================
*/
.wishlist_image img {
  width: 60px;
  height: 60px;
}
.wishlist_name_link {
  color: var(--black);
  display: block;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.wishlist_name_link:hover {
  color: var(--hover);
}
.wishlist_action_link {
  border: none;
  background-color: var(--black);
  color: var(--white);
  font-size: 14px;
  display: inline-block;
  padding: 3px 10px;
  border-radius: 3px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.wishlist_action_link:hover {
  color: var(--hover);
}
.wishlist_delete_link {
  border: none;
  background-color: transparent;
  font-size: 18px;
  color: var(--black);
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.wishlist_delete_link:hover {
  color: var(--hover);
}

/*
==============================================================
    View Cart Area Css
==============================================================
*/
.btn_disabled {
  pointer-events: none;
  opacity: 0.65;
}
.view_cart_shipping_content {
  border-top: 1px solid var(--border);
  border-bottom: 1px solid var(--border);
  padding: 20px 0px;
}
.view_cart_subtotal {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  padding-bottom: 15px;
  padding-top: 10px;
}
.view_cart_subtotal strong {
  font-size: 20px;
  font-weight: 500;
}
.view_cart_total {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  padding-top: 25px;
  margin-bottom: 25px;
}
.view_cart_total strong {
  font-size: 20px;
  font-weight: 500;
}

.view_cart_image img {
  width: 60px;
  height: 60px;
}
.view_cart_name_link {
  color: var(--black);
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.view_cart_name_link:hover {
  color: var(--hover);
}
.view_cart_action_link {
  border: none;
  background-color: var(--black);
  color: var(--white);
  font-size: 14px;
  display: inline-block;
  padding: 3px 10px;
  border-radius: 3px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.view_cart_action_link:hover {
  color: var(--hover);
}
.view_cart_delete_link {
  border: none;
  background-color: transparent;
  font-size: 18px;
  color: var(--black);
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.view_cart_delete_link:hover {
  color: var(--hover);
}

.view_cart_qty_minus {
  border: 1px solid var(--border);
  color: var(--black);
  width: 40px;
  height: 40px;
  line-height: 40px;
  text-align: center;
  border-right: 0px;
  float: left;
  border-radius: 3px 0px 0px 3px;
  cursor: pointer;
  background-color: transparent;
}
.view_cart_qty input {
  border: 1px solid var(--border);
  color: var(--black);
  width: 50px;
  height: 40px;
  line-height: 40px;
  text-align: center;
  float: left;
  cursor: pointer;
}
.view_cart_qty_plus {
  border: 1px solid var(--border);
  color: var(--black);
  width: 40px;
  height: 40px;
  line-height: 40px;
  text-align: center;
  border-left: 0px;
  float: left;
  border-radius: 0px 3px 3px 0px;
  cursor: pointer;
  background-color: transparent;
}

.view_cart_right_side {
  background: var(--white);
  -webkit-box-shadow: 0px 30px 70px rgba(1, 15, 28, 0.1);
  box-shadow: 0px 30px 70px rgba(1, 15, 28, 0.1);
  padding: 36px 24px 28px;
}
.view_cart_process_checkout_link {
  display: inline-block;
  color: var(--white);
  background-color: var(--primary_color);
  border: 1px solid var(--primary_color);
  width: 100%;
  text-align: center;
  padding: 10px 0px;
  border-radius: 3px;
  font-size: 18px;
  text-transform: capitalize;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.view_cart_process_checkout_link:hover {
  color: var(--primary_color);
  background-color: var(--white);
  border: 1px solid var(--primary_color);
}

.view_cart_coupon {
  position: relative;
}
.view_cart_coupon label {
  display: block;
}
.view_cart_coupon input {
  border: 1px solid var(--border);
  padding: 10px 10px;
  width: 450px;
  height: 50px;
}
.view_cart_coupon_update {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  margin-top: 20px;
}
.view_cart_coupon_btn {
  position: absolute;
  top: 0;
  right: 0;
  border: none;
  background: var(--primary_color);
  color: var(--white);
  padding: 10px 20px;
  display: inline-block;
  height: 50px;
}
.view_cart_update_btn {
  border: none;
  background-color: var(--primary_color);
  color: var(--white);
  display: inline-block;
  padding: 12px 25px;
  border-radius: 3px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.view_cart_update_btn:hover {
  color: var(--black);
}
.product_shipping {
  -webkit-box-shadow: var(--shadow);
  box-shadow: var(--shadow);
  padding: 20px;
  border-radius: 3px;
}
.shipping_option_item {
  margin-top: 10px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}
.shipping_option_item input[type="radio"] {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  height: 20px;
  width: 20px;
  background-color: var(--white);
  border: 1px solid var(--border);
  border-radius: 3px;
  cursor: pointer;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  outline: none;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  float: left;
  margin-right: 10px;
}
.shipping_option_item label {
  color: var(--black);
  font-size: 16px;
  cursor: pointer;
}
.shipping_option_item input[type="radio"]:after {
  font-family: "Font Awesome 6 Free";
  content: "\f00c";
  font-weight: 600;
  font-size: 16px;
  color: var(--white);
  display: none;
}
.shipping_option_item input[type="radio"]:checked {
  background-color: var(--hover);
}
.shipping_option_item input[type="radio"]:checked:after {
  display: block;
}
.shipping_option_item label,
.shipping_option_item input {
  cursor: pointer;
}
/*
==============================================================
    Footer Area Css
==============================================================
*/
.footer_area {
  background-color: var(--primary_color);
  padding: 50px 0 20px;
  color: #fff;
}

.footer_box {
  background: rgba(255, 255, 255, 0.05); /* transparent dark overlay */
  padding: 25px;
  border-radius: 12px;
  height: 100%;
  backdrop-filter: blur(4px); /* optional: adds glass effect */
  -webkit-backdrop-filter: blur(4px);
}

.footer_logo img {
  height: 60px;
}

.footer_text {
  margin-top: 12px;
  font-size: 15px;
  line-height: 1.6;
  color: var(--primary_text_color) !important;
}

.footer_title {
  font-size: 20px;
  font-weight: 600;
  margin-bottom: 15px;
  color: var(--primary_text_color);
}

.footer_links {
  list-style: none;
  padding: 0;
  margin: 0 0 15px;
}
.footer_links li {
  margin-bottom: 10px;
}
.footer_links li a {
  color: #ccc;
  font-size: 15px;
  text-decoration: none;
  transition: 0.3s;
}
.footer_links li a:hover {
  color: #f5c400;
}

.footer_btn {
  display: inline-block;
  background: #f5c400;
  color: #000;
  padding: 12px 20px;
  border-radius: 6px;
  font-weight: 600;
  text-transform: uppercase;
  transition: 0.3s;
}
.footer_btn i {
  margin-right: 6px;
}
.footer_btn:hover {
  background: #d9aa00;
}

.footer_social {
  display: flex;
  gap: 10px;
}
.social_icon {
  width: 40px;
  height: 40px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #fff;
  font-size: 18px;
  border-radius: 6px;
  transition: 0.3s;
}
.social_icon.facebook { background: #3b5998; }
.social_icon.instagram { background: #e1306c; }
.social_icon.youtube { background: #ff0000; }
.social_icon.linkedin { background: #0077b5; }
.social_icon:hover { opacity: 0.8; }

.footer_bottom {
  border-top: 1px solid #333;
  padding-top: 15px;
  margin-top: 25px;
}
.footer_bottom .highlight {
  color: #f5c400;
  font-weight: 600;
}

/*
==============================================================
    Fornt Toggle button Area Css
==============================================================
*/
 /* Main container for the entire button widget */
        .fab-container {
            position: fixed;
            bottom: 80px;
            right: 20px;
            z-index: 1000;
            display: block;
            flex-direction: column-reverse; /* Stacks options above the main button */
            align-items: center;
        }

        /* The main button that opens the menu */
        .fab-toggle {
            width: 50px;
            height: 50px;
            background-color: var(--primary_color);
            border-radius: 50%;
            color: white;
            font-size: 28px;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .fab-toggle:hover {
            transform: scale(1.1);
        }

        /* Container for the hidden option links */
        .fab-options {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 15px; /* Space between options and main button */
        }

        /* Styling for each individual option link (Messenger, Phone, etc.) */
        .fab-link {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            color: white;
            font-size: 22px;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 10px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
            text-decoration: none;
            cursor: pointer;

            /* --- This is the animation part --- */
            opacity: 0;
            transform: scale(0);
            transition: all 0.3s ease;
        }

        /* This class will be added by JavaScript to show the options */
        .fab-container.active .fab-link {
            opacity: 1;
            transform: scale(1);
        }

        /* Staggered animation delay for a smoother effect */
        .fab-container.active .fab-options a:nth-child(1),
        .fab-container.active .fab-options div:nth-child(1) { transition-delay: 0.3s; }

        .fab-container.active .fab-options a:nth-child(2),
        .fab-container.active .fab-options div:nth-child(2) { transition-delay: 0.2s; }

        .fab-container.active .fab-options a:nth-child(3),
        .fab-container.active .fab-options div:nth-child(3) { transition-delay: 0.1s; }

        .fab-container.active .fab-options a:nth-child(4),
        .fab-container.active .fab-options div:nth-child(4) { transition-delay: 0s; }


/*
==============================================================
    Header Mobile Device Area Css
==============================================================
*/
.header_mobile_table_cell {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
}
.header_mobile_toggle {
  line-height: 0;
}
.header_mobile_toggle i {
  font-size: 22px;
  color: var(--primary_color);
}
.header_mobile_search {
  line-height: 0px;
}
.header_mobile_search i {
  font-size: 22px;
  color: var(--primary_color);
}
.header_mobile_icon_link {
  position: relative;
}
.header_mobile_icon_link i {
  font-size: 22px;
  color: var(--primary_color);
}

/*
==============================================================
    Breadcrumb Area Css
==============================================================
*/
._breadcrumb {
  line-height: 14px;
}
._breadcrumb ul {
  margin: 0;
  padding: 0;
}
._breadcrumb ul li {
  list-style: none;
  display: inline-block;
  margin-right: 5px;
}
._breadcrumb ul li:last-child {
  margin-right: 0px;
}
._breadcrumb ul li .breadcrumb_link {
  display: block;
  color: var(--black);
  font-size: 14px;
  line-height: 12px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
._breadcrumb ul li .breadcrumb_link:hover {
  color: var(--hover);
}

/*
==============================================================
    Shop Category Area Css
==============================================================
*/
.shop_category ul {
  margin: 0;
  padding: 0;
}
.shop_category ul li {
  list-style: none;
  display: inline-block;
  margin-right: 1px;
  margin-bottom: 5px;
}
.shop_category ul li:last-child {
  margin-right: 0px;
}
.shop_category ul li .shop_category_link {
  display: block;
  font-size: 14px;
  color: var(--white);
  background-color: var(--primary_color);
  padding: 3px 10px;
  text-transform: uppercase;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.shop_category ul li .shop_category_link:hover {
  color: var(--black);
}
/*
==============================================================
    Single Product Area Css
==============================================================
*/
.zooming_show_image {
    position: relative;
    /* This height property was causing issues with responsiveness. Using a padding-bottom trick for aspect ratio is better. */
    /* height: 500px; */
    padding-bottom: 100%; /* Creates a 1:1 aspect ratio container */
    overflow: hidden;
    width: 100%;
    height: 100%;
}
.zooming_show_image img {
    width: 100%;
    height: 100%;
    position: absolute; /* Allows it to fill the container with padding-bottom */
    top: 0;
    left: 0;
    object-fit: cover; /* Ensures the image covers the area without distortion */
    border-radius: 10px;
    -webkit-transform: scale(var(--zoom, 1));
    -ms-transform: scale(var(--zoom, 1));
    transform: scale(var(--zoom, 1));
    -webkit-transform-origin: var(--x) var(--y);
    -ms-transform-origin: var(--x) var(--y);
    transform-origin: var(--x) var(--y);
    -webkit-transition: transform 0.3s ease;
    transition: transform 0.3s ease;
    transition: transform 0.3s ease, -webkit-transform 0.3s ease;
    cursor: -webkit-zoom-in;
    cursor: zoom-in;
}
.zooming_show_image:hover {
    --zoom: 3;
}
.zooming_image_list {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    gap: 10px;
    margin-top: 10px;
}
.zooming_image_list ul {
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
    overflow-x: auto; /* Use 'auto' instead of 'scroll' for better UX */
    white-space: nowrap; /* Prevents thumbnails from wrapping */
}
.zooming_image_list ul::-webkit-scrollbar {
    height: 5px;
}
.zooming_image_list ul::-webkit-scrollbar-thumb {
    background: var(--primary_color);
    border-radius: 20px;
}
.zooming_image_list ul li {
    display: inline-block;
    margin-right: 1px;
    margin-bottom: 5px;
}
.zooming_image_list ul li:last-child {
    margin-right: 0;
}
.zooming_image_list ul li img {
    width: 65px;
    height: 65px;
    object-fit: cover;
    border-radius: 3px;
    cursor: pointer;
    border: 2px solid transparent; /* Change to transparent for a smoother transition */
    opacity: 0.8;
    transition: opacity 0.3s, border-color 0.3s;
}
.zooming_image_list ul li.active img,
.zooming_image_list ul li:hover img {
    border-color: var(--primary_color);
    opacity: 1;
}
.single_product_list ul {
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
}
.single_product_list ul li {
    list-style: none;
    display: inline-block;
    margin-right: 5px;
}
.single_product_list ul li:last-child {
    margin-right: 0;
}
.single_product_list ul li:not(:last-child):after {
    content: "";
    position: relative;
    font-size: 12px;
    font-weight: 600;
    font-family: "Font Awesome 5 Free";
    color: var(--black);
    margin-left: 5px;
}
.single_product_name h2 {
    font-size: 28px;
    font-weight: 600;
    margin-top: 15px;
    margin-bottom: 10px;
}
.single_product_whatsapp {
  margin-bottom: 15px;
}
/* New Social Share Styles */
.single_product_social_share {
  display: flex;
  align-items: center;
  gap: 15px;
  margin-top: 20px;
  margin-bottom: 20px;
  padding-top: 15px;
  border-top: 1px dashed var(--border); /* Use dashed border for a modern look */
  padding-bottom: 15px;
  border-bottom: 1px dashed var(--border);
}

.single_product_social_share .social-share-title {
  font-weight: 500;
  color: var(--black);
  text-transform: uppercase;
  font-size: 14px;
}

.single_product_social_share_link {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 35px;
  height: 35px;
  border-radius: 50%;
  color: var(--white);
  font-size: 16px;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}



.facebook_color { background-color: #3b5998; }
.twitter_color { background-color: #00acee; }
.pinterest_color { background-color: #c8232c; }
.whatsapp_color { background-color: #25d366; }
.email_color { background-color: #dc3545; }

/* Existing Styles with minor tweaks for consistency */
.single_product_attribute {
    display: flex;
    align-items: center;
    margin-top: 10px;
}
.single_product_attribute strong {
    width: 60px;
    font-weight: 500;
    color: #555;
}
.single_product_price {
    display: flex;
    align-items: center;
    font-size: 20px;
    font-weight: 600;
    color: var(--primary_color);
}
.single_product_discount_price {
    color: red;
    text-decoration: line-through;
    padding-left: 10px;
    font-size: 16px;
    font-weight: 400;
}
.single_product_attribute_size {
  margin-top: -7px;
}
.single_product_size_checkbox_list ul li {
  display: inline-block;
  margin-right: 3px;
  margin-bottom: 7px;
}
.single_product_size_checkbox_list ul li:last-child {
  margin-right: 0px;
}
.single_product_size_checkbox_list_group {
  position: relative;
}
.single_product_size_checkbox_list_group input {
  display: none;
}
.single_product_size_checkbox_list_group label {
  cursor: pointer;
  border: 1px solid var(--border);
  background: var(--white);
  text-align: center;
  -webkit-transition: all 200ms ease-in-out;
  -o-transition: all 200ms ease-in-out;
  transition: all 200ms ease-in-out;
  border-radius: 3px;
}
.single_product_size_checkbox_list_group .icon {
  margin-top: 10px;
  font-size: 30px;
  color: var(--black);
  -webkit-transition: all 200ms ease-in-out;
  -o-transition: all 200ms ease-in-out;
  transition: all 200ms ease-in-out;
}
.single_product_size_checkbox_list_group .title {
  font-size: 16px;
  color: var(--black);
  padding: 3px 13px;
  -webkit-transition: all 200ms ease-in-out;
  -o-transition: all 200ms ease-in-out;
  transition: all 200ms ease-in-out;
}
.single_product_size_checkbox_list_group label:before {
  content: "✓";
  position: absolute;
  width: 20px;
  height: 18px;
  bottom: 0px;
  right: 0px;
  background: var(--primary_color);
  color: var(--white);
  text-align: center;
  line-height: 18px;
  font-size: 14px;
  font-weight: 600;
  opacity: 0;
  -webkit-transform: scale(0.5);
  -ms-transform: scale(0.5);
  transform: scale(0.5);
  -webkit-transition: all 200ms ease-in-out;
  -o-transition: all 200ms ease-in-out;
  transition: all 200ms ease-in-out;
  border-radius: 25px 0px 3px 0px;
  padding-left: 4px;
  padding-top: 2px;
}
.single_product_size_checkbox_list_group input:checked + label:before {
  opacity: 1;
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}
.single_product_size_checkbox_list_group input:checked + label .icon {
  color: var(--primary_color);
}
.single_product_size_checkbox_list_group input:checked + label .title {
  color: var(--primary_color);
}
.single_product_size_checkbox_list_group input:checked + label {
  border: 1px solid var(--primary_color);
}
.single_product_qty_with_buy_now_btn {
  margin-top: 15px;
  margin-bottom: 20px;
}
.single_product_qty {
    display: flex;
    align-items: center;
}
.single_product_qty_minus {
  border: 1px solid var(--border);
  color: var(--black);
  width: 40px;
  height: 40px;
  line-height: 40px;
  text-align: center;
  border-right: 0px;
  border-radius: 3px 0px 0px 3px;
  cursor: pointer;
  background-color: transparent;
  float: left;
  display: block;
}
.single_product_qty input {
  border: 1px solid var(--border);
  color: var(--black);
  width: 100%;
  height: 40px;
  line-height: 40px;
  text-align: center;
  float: left;
  display: block;
}
.single_product_qty_plus {
  border: 1px solid var(--border);
  color: var(--black);
  width: 40px;
  height: 40px;
  line-height: 40px;
  text-align: center;
  border-left: 0px;
  border-radius: 0px 3px 3px 0px;
  cursor: pointer;
  background-color: transparent;
  display: block;
}
.single_product_buy_now_btn_link {
    border: none;
    background-color: var(--primary_color);
    color: var(--white);
    padding: 8px 5px;
    border-radius: 3px;
    -webkit-transition: 0.3s;
    -o-transition: 0.3s;
    transition: 0.3s;
    width: 100%;
    display: block;
    text-align: center;
}
.single_product_buy_now_btn_link:hover {
  color: #fff;
}
.single_product_add_to_cart {
    border: 1px solid var(--border);
    background-color: transparent;
    padding: 7px 0px;
    border-radius: 3px;
    display: block;
    width: 100%;
    text-align: center;
}
.single_product_add_to_wishlist {
    border: 1px solid var(--border);
    background-color: transparent;
    display: block;
    padding: 7px 0px;
    border-radius: 3px;
    width: 100%;
    text-align: center;
}
.single_product_specification_list {
  border: 2px solid var(--primary_color);
  padding: 10px;
  margin-bottom: 15px;
}
.single_product_specification_list ul {
  margin: 0;
  padding: 0;
}
.single_product_specification_list ul li {
  list-style: none;
  font-size: 14px;
  margin-bottom: 5px;
}
.single_product_specification_list ul li:last-child {
  margin-bottom: 0px;
}
.single_product_specification_list ul li i {
  padding-right: 5px;
}
.single_product_call_details {
  border: 2px dotted var(--primary_color);
  padding: 10px;
}
.single_product_call {
}
.single_product_call ul {
  margin: 0;
  padding: 0;
}
.single_product_call ul li {
  list-style: none;
  margin-top: 5px;
}
.single_product_call ul li .single_product_call_link {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}
.single_product_call_content {
  font-size: 14px;
  color: var(--black);
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
  color: var(--primary_color);
}
.single_product_call_content:hover {
  color: var(--hover);
}
.single_product_call_content i {
  -webkit-transform: rotate(20deg);
  -ms-transform: rotate(20deg);
  transform: rotate(20deg);
  font-size: 11px;
}
.single_product_call_payment_method p {
  font-size: 14px;
  border: 1px dotted #ff4d03;
  display: inline;
  padding: 2px 5px;
  color: var(--primary_color);
  margin-left: 5px;
}
.single_product_tab_nav {
  background-color: #dddddd;
  margin-bottom: 20px;
}
.single_product_tab_nav .single_product_tab_nav_link {
    border-radius: 5px 5px 0 0;
    margin-right: 5px;
    border: none;
    color: var(--black);
    font-weight: 500;
    font-size: 16px;
    padding: 12px 20px;
}
.single_product_tab_nav .single_product_tab_nav_link.active {
    color: var(--white);
    background-color: var(--primary_color);
    border-color: transparent;
}
.single_product_tab_list {
}
.single_product_tab_list ul {
  margin: 0;
  padding: 0;
}
.single_product_tab_list ul li {
  list-style: outside;
  margin-bottom: 10px;
  margin-left: 20px;
}
.single_product_tab_list ul li:last-child {
  margin-bottom: 0px;
}
/*
==============================================================
    Checkout Area Css
==============================================================
*/
.checkout_form_title {
  text-align: center;
  margin-bottom: 30px;
}
.checkout_form_title h3 {
  font-size: 24px;
  font-weight: 400;
}
.checkout_form {
  background-color: var(--white);
  -webkit-box-shadow: var(--shadow);
  box-shadow: var(--shadow);
  padding: 50px;
  border-radius: 3px;
}
.checkout_form_group {
  margin-bottom: 15px;
}
.checkout_form_group label {
  display: block;
  margin-bottom: 2px;
}
.checkout_form_group input,
.checkout_form_group select,
.checkout_form_group textarea {
  width: 100%;
  border: 1px solid var(--border);
  padding: 10px 10px;
  border-radius: 3px;
}
.checkout_form_group .checkout_form_select {
  padding: 12px 10px;
}
.checkout_form_btn {
  text-align: center;
}
.checkout_form_btn_link {
  border: none;
  background-color: var(--primary_color);
  color: var(--white);
  display: inline-block;
  padding: 15px 50px;
  border-radius: 3px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.checkout_form_btn_link:hover {
  color: var(--black);
}
.checkout_order_summary {
  background-color: var(--white);
  -webkit-box-shadow: var(--shadow);
  box-shadow: var(--shadow);
  padding: 50px;
  border-radius: 3px;
}
.order_summary_title {
  text-align: center;
  margin-bottom: 30px;
}
.order_summary_title h3 {
  font-size: 24px;
  font-weight: 400;
}
.checkout_product_th_total_price {
  width: 100px;
}
.order_summary_table .table thead tr th {
  font-weight: 500;
}
.checkout_product_name_image img {
  width: 50px;
  height: 50px;
  float: left;
  margin-right: 7px;
}
.checkout_product_name_image p {
  font-size: 14px;
  line-height: 18px;
}
.checkout_product_qty {
  width: 85px;
}
.checkout_product_qty_minus {
  border: 1px solid var(--border);
  color: var(--black);
  width: 25px;
  height: 25px;
  line-height: 25px;
  text-align: center;
  border-right: 0px;
  border-radius: 3px 0px 0px 3px;
  cursor: pointer;
  background-color: transparent;
  font-size: 12px;
  display: block;
  float: left;
}
.checkout_product_qty input {
  border: 1px solid var(--border);
  color: var(--black);
  width: 30px;
  height: 25px;
  line-height: 25px;
  text-align: center;
  float: left;
  font-size: 14px;
  display: block;
}
.checkout_product_qty_plus {
  border: 1px solid var(--border);
  color: var(--black);
  width: 25px;
  height: 25px;
  line-height: 25px;
  text-align: center;
  border-left: 0px;
  border-radius: 0px 3px 3px 0px;
  cursor: pointer;
  background-color: transparent;
  font-size: 12px;
  display: block;
}
.checkout_product_price p {
  font-size: 14px;
}
.checkout_product_delete_icon {
  text-align: right;
}
.checkout_product_total_price p {
  font-size: 14px;
}
.checkout_product_delete_icon_link {
  border: none;
  background-color: transparent;
  color: red;
  font-size: 16px;
}
.checkout_product_td_left {
  padding-left: 0px !important;
}
.checkout_product_td_right {
  text-align: right;
  padding-right: 0px !important;
}
.price_summary_table_cell {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  border-bottom: 1px solid var(--border);
  padding: 10px 0px;
}
.price_summary_table_cell strong {
  font-weight: 500;
}
.apply_coupon_group {
  margin-top: 20px;
}
.apply_coupon_group label {
  display: block;
  margin-bottom: 3px;
}
.apply_coupon_item {
  position: relative;
}
.apply_coupon_item input {
  width: 100%;
  border: 1px solid var(--border);
  padding: 10px 10px;
}
.apply_coupon_item_link {
  border: none;
  background-color: var(--primary_color);
  color: var(--white);
  display: inline-block;
  padding: 10px 25px;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
}
/*
==============================================================
    Success Area Css
==============================================================
*/
.success_icon {
  background-color: green;
  color: var(--white);
  width: 50px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  font-size: 25px;
  border-radius: 50%;
  margin: 0 auto;
}
.error_icon {
  background-color: rgb(245, 3, 3);
  color: var(--white);
  width: 50px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  font-size: 25px;
  border-radius: 50%;
  margin: 0 auto;
}
.success_title {
  margin-top: 30px;
  margin-bottom: 10px;
}
.success_title h3 {
  font-size: 22px;
}
.success_call_link {
  color: var(--primary_color);
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.success_call_link:hover {
  color: var(--hover);
}
.success_btn {
  margin-top: 20px;
}
.success_btn_link {
  display: inline-block;
  color: var(--white);
  background-color: var(--primary_color);
  padding: 10px 15px;
  border-radius: 3px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.success_btn_link:hover {
  color: var(--white);
}
/*
==============================================================
    Order Tracking Area Css
==============================================================
*/
.order_tracking_content {
  -webkit-box-shadow: var(--shadow);
  box-shadow: var(--shadow);
  padding: 50px;
  border-radius: 3px;
}
.order_tracking_header {
  padding-bottom: 30px;
  margin-bottom: 20px;
  border-bottom: 1px solid var(--border);
}
.order_tracking_title {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  gap: 20px;
  margin-bottom: 10px;
}
.order_tracking_search input {
  width: 100%;
  border: 1px solid var(--primary_color);
  padding: 10px 20px;
  border-radius: 3px;
}
.order_tracking_search_btn_link {
  border: none;
  background-color: var(--primary_color);
  color: var(--white);
  width: 100%;
  height: 100%;
  display: block;
  font-size: 20px;
  padding: 11px 0px;
  border-radius: 3px;
}
.order_tracking_invoice strong {
  margin-right: 5px;
}
.order_tracking_customer_item {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  gap: 10px;
  margin-top: 5px;
}
.order_tracking_order_status_details {
  float: right;
}
.order_tracking_order_status {
  margin-top: 5px;
}
.order_tracking_order_status span {
  background-color: var(--primary_color);
  color: var(--white);
  display: inline-block;
  padding: 3px 20px;
  border-radius: 30px;
}
.order_tracking_order_cod span {
  font-weight: 500;
  font-size: 18px;
}
.order_tracking_sender_information {
  margin-top: 15px;
  margin-bottom: 15px;
}
.order_tracking_sender_organization {
  margin-top: 15px;
}
.order_tracking_sender_title {
  text-align: center;
  background-color: #dddddd;
}
.order_tracking_sender_title h3 {
  font-size: 20px;
  font-weight: 400;
  padding: 10px 0px;
}
.order_tracking_sender_organization h3 {
  font-size: 22px;
  font-weight: 500;
}
.order_tracking_sender_address p {
  margin-top: 5px;
}
.order_tracking_sender_address_link {
  color: var(--black);
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.order_tracking_sender_address_link:hover {
  color: var(--hover);
}
.order_tracking_sender_address strong {
  margin-right: 5px;
}
.order_tracking_courier_title {
  text-align: center;
  background-color: #dddddd;
  margin-bottom: 15px;
}
.order_tracking_courier_title h3 {
  font-size: 20px;
  font-weight: 400;
  padding: 10px 0px;
}
.order_tracking_courier_name h3 {
  font-size: 22px;
  font-weight: 500;
}
/*
==============================================================
    Fixed Footer Menu Area Css
==============================================================
*/
.fixed_footer_menu {
  background-color: var(--white);
  -webkit-box-shadow: var(--shadow);
  box-shadow: var(--shadow);
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;
  padding: 0px 15px;
  padding-top: 14px;
  padding-bottom: 3px;
  z-index: 999999999;
  display: none;
}
.fixed_footer_menu ul {
  margin: 0;
  padding: 0;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
}
.fixed_footer_menu ul li {
  list-style: none;
}
.fixed_footer_menu ul li .fixed_footer_menu_link {
  text-align: center;
  position: relative;
}
.fixed_footer_menu ul li .fixed_footer_menu_link p {
  font-size: 13px;
  display: block;
  line-height: 14px;
  margin-top: 5px;
}
.fixed_footer_menu ul li .fixed_footer_menu_link i {
  display: block;
  color: var(--primary_color);
  font-size: 18px;
}
.fixed_footer_menu ul li .fixed_footer_menu_link:hover {
  color: var(--hover);
}
.fixed_footer_cart_count {
  position: absolute;
  top: 0;
  right: 0;
  display: block;
  width: 15px;
  height: 15px;
  line-height: 15px;
  text-align: center;
  background-color: var(--black);
  color: var(--white);
  font-size: 11px;
  border-radius: 50%;
  margin-top: -10px;
  margin-right: -4px;
}
.fixed_footer_wishlist_count {
  position: absolute;
  top: 0;
  right: 0;
  display: block;
  width: 15px;
  height: 15px;
  line-height: 15px;
  text-align: center;
  background-color: var(--black);
  color: var(--white);
  font-size: 11px;
  border-radius: 50%;
  margin-top: -9px;
  margin-right: 4px;
}
/*
==============================================================
    Profile Area Css
==============================================================
*/
.profile_left_side {
  border: 1px solid var(--border);
  border-radius: 3px;
  padding: 20px;
}
.profile_pic {
  width: 150px;
  margin: 0 auto;
}
.profile_pic img {
  max-width: 100%;
  height: auto;
}
.profile_name {
  text-align: center;
  margin-top: 15px;
}
.profile_menu_list {
  margin-top: 20px;
}
.profile_menu_list ul {
  margin: 0;
  padding: 0;
}
.profile_menu_list ul li {
  list-style: none;
  display: block;
  border-bottom: 1px solid var(--border);
  padding: 10px 0px;
}
.profile_menu_list ul li:last-child {
  border-bottom: 0px;
  padding-bottom: 0px;
}
.profile_menu_list ul li .profile_menu_list_link {
  display: block;
  color: var(--black);
  font-size: 16px;
  text-transform: uppercase;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.profile_menu_list ul li .profile_menu_list_link:hover {
  color: var(--hover);
}
.profile_menu_list ul li .profile_menu_list_link i {
  padding-right: 8px;
}
.profile_oder_view_link {
  background-color: var(--primary_color);
  color: var(--white);
  display: inline-block;
  padding: 3px 10px;
  font-size: 16px;
  border-radius: 3px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.profile_oder_view_link:hover {
  color: var(--black);
}
.profile_oder_cancel_btn {
  border: none;
  background-color: #df5c39;
  color: var(--white);
  font-size: 14px;
  padding: 3px 10px;
  display: inline-block;
  border-radius: 3px;
  margin-bottom: 4px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.profile_oder_cancel_btn:hover {
  color: var(--black);
}
.order_status {
  background-color: var(--primary_color);
  color: var(--white);
  font-size: 13px;
  display: inline-block;
  padding: 0px 5px;
  border-radius: 20px;
}
.order_discount {
  background-color: var(--primary_color);
  color: var(--white);
  font-size: 13px;
  display: inline-block;
  border-radius: 20px;
  text-align: center;
  padding: 0px 5px;
}
.profile_right_side {
  border: 1px solid var(--border);
  padding: 20px;
  border-radius: 3px;
}
.profile_form_item {
  margin-bottom: 10px;
}
.profile_address_details {
  border: 1px solid var(--border);
  padding: 20px;
  border-radius: 3px;
}
.profile_shipping_address h3 {
  font-size: 28px;
  margin-bottom: 10px;
  border-bottom: 1px solid var(--border);
  padding-bottom: 10px;
}
.profile_shipping_address_list ul li {
  margin-bottom: 10px;
}
.profile_shipping_address_list ul li:last-child {
  margin-bottom: 0px;
}
.profile_form_item label {
  display: block;
  margin-bottom: 2px;
}
.profile_form_item input, select {
  display: block;
  width: 100%;
  border: 1px solid var(--border);
  border-radius: 3px;
  padding: 10px 15px;
}
.profile_form_submit_btn_link {
  display: block;
  width: 100%;
  border: none;
  background-color: var(--primary_color);
  color: var(--white);
  padding: 10px 0px;
  font-size: 18px;
  border-radius: 3px;
}
.profile_page_details h5 {
  margin-bottom: 10px;
}
.order_details img {
  width: 50px;
  height: 50px;
  float: left;
  margin-right: 10px;
}
.profile_page_order_view table tbody tr td strong {
  width: 120px !important;
  display: block;
}

/*
==============================================================
    Auth Area Css
==============================================================
*/
.is_error {
  color: red;
  font-size: 14px;
}
.auth_wrap {
  border: 1px solid var(--border);
  padding: 50px;
  border-radius: 3px;
}
.auth_title {
  text-align: center;
  margin-bottom: 40px;
}
.auth_item {
  margin-bottom: 10px;
}
.auth_item label {
  display: block;
  margin-bottom: 2px;
}
.auth_item input {
  width: 100%;
  border: 1px solid var(--border);
  border-radius: 3px;
  padding: 10px 15px;
}
.auth_sub_btn_link {
  display: block;
  width: 100%;
  border: none;
  background-color: var(--primary_color);
  color: var(--white);
  padding: 10px 0px;
  border-radius: 3px;
  text-transform: uppercase;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
  font-size: 16px;
}
.auth_sub_btn_link:hover {
  color: var(--black);
}
.auth_sub_btn_two_link {
  display: block;
  width: 100%;
  border: none;
  background-color: var(--primary_color);
  color: var(--white);
  padding: 10px 0px;
  border-radius: 3px;
  text-transform: uppercase;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
  font-size: 16px;
  text-align: center;
  margin-top: 10px;
}
.auth_sub_btn_two_link:hover {
  color: var(--black);
}
.auth_forgotten_pass {
  margin-bottom: 15px;
}
.auth_forgotten_pass_link {
  display: inline-block;
  color: var(--black);
  border-bottom: 1px solid var(--white);
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.auth_forgotten_pass_link:hover {
  color: var(--hover);
  border-bottom: 1px solid var(--hover);
}
.auth_link_page {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  gap: 10px;
  margin-top: 15px;
}
.auth_link_page_link {
  color: var(--primary_color);
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.auth_link_page_link:hover {
  color: var(--black);
}
/*
==========================================
    Contact Us Area Css
==========================================
*/
.single_contact_us {
  background-color: var(--white);
  border: 1px solid var(--border);
  padding: 20px;
  height: 100%;
}
.contact_us_title {
  margin-bottom: 5px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  gap: 5px;
}
.contact_us_title i {
  font-size: 18px;
  line-height: 28px;
  color: var(--black);
}
.contact_us_title strong {
  color: var(--black);
  font-size: 18px;
  line-height: 28px;
}
.contact_us_location p {
  color: var(--black);
}
.contact_us_communication ul {
  margin: 0;
  padding: 0;
}
.contact_us_communication ul li {
  list-style: none;
}
.contact_us_communication ul li .contact_us_communication_link {
  display: inline-block;
  color: var(--text);
  font-weight: 400;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.contact_us_communication ul li .contact_us_communication_link:hover {
  color: var(--themeColor);
}
.contact_us_socialmedia ul li {
  display: inline-block;
  margin-top: 5px;
}
.contact_us_socialmedia ul li .contact_us_socialmedia_link {
  display: block;
  width: 35px;
  height: 35px;
  text-align: center;
  line-height: 35px;
  background-color: var(--black);
  border: 1px solid var(--black);
  color: var(--white);
  font-size: 16px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.contact_us_socialmedia ul li .contact_us_socialmedia_link:hover {
  color: var(--themeColor);
  background-color: var(--white);
  border: 1px solid var(--primary_color);
}
.contact_us_form_item input,
.contact_us_form_item textarea,
.contact_us_form_item select {
  width: 100%;
  border: 1px solid var(--border);
  padding: 10px;
  border-radius: 3px;
  color: var(--black);
}
.contact_us_form_btn_link {
  background-color: var(--primary_color);
  color: var(--white);
  font-weight: 500;
  border: none;
  padding: 10px 20px;
  border-radius: 3px;
  display: block;
  width: 100%;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
  letter-spacing: 1px;
  text-transform: uppercase;
}
.contact_us_form_btn_link:hover {
  color: var(--black);
}

/*
==============================================================
    Customer Comment Area Css
==============================================================
*/
.modal_content {
  padding: 20px;
}
.modal_comment_item {
  margin-bottom: 10px;
}
.modal_comment_item input {
  width: 100%;
  border: 1px solid var(--border);
  border-radius: 3px;
  outline: none;
  padding: 8px 10px;
}
.modal_comment_item_textarea textarea {
  width: 100%;
  border: 1px solid var(--border);
  border-radius: 3px;
  outline: none;
  padding: 8px 10px;
}
.modal_comment_item_btn {
  text-align: center;
}
.modal_comment_item_btn_link {
  border: none;
  padding: 8px 15px;
  background-color: var(--black);
  color: var(--white);
  border-radius: 3px;
  display: inline-block;
}


.modal_star_title h5 {
  font-size: 23px;
  text-transform: capitalize;
}
.modal_rating {
  float: left;
  margin-top: 15px;
  margin-bottom: 20px;
}
.modal_rating:not(:checked) > input {
  position: absolute;
  top: -9999px;
}
.modal_rating:not(:checked) > label {
  float: right;
  width: 1em;
  overflow: hidden;
  white-space: nowrap;
  cursor: pointer;
  font-size: 30px;
  color: #dddddd;
}
.modal_rating:not(:checked) > label:before {
  content: "★ ";
}
.modal_rating > input:checked ~ label {
  color: #ffc700;
}
.modal_close {
  text-align: right;
  font-size: 22px;
  cursor: pointer;
  position: absolute;
  top: 0;
  right: 0;
  margin-top: 8px;
  margin-right: 10px;
}
.fixed_product_card_size strong {
  font-weight: normal;
}




.customer_comment_title {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  gap: 20px;
}
.customer_comment_avarage_rating {
  font-size: 40px;
}
.customer_comment_rating_name {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  color: var(--white);
  position: relative;
  background-color: var(--primary_color);
  padding: 0 12px 0 4px;
  height: 30px;
  font-size: 20px;
  border-radius: 2px 0 0 2px;
  background-size: 100% 100%;
  background-repeat: no-repeat;
  gap: 5px;
}
.customer_comment_rating_name:after {
  content: " ";
  position: absolute;
  right: -10px;
  width: 0;
  height: 0;
  border-top: 30px solid var(--primary_color);
  border-right: 10px solid transparent;
  border-left: 10px solid transparent;
}
.customer_comment_rating {
  margin-top: 25px;
  margin-bottom: 10px;
}
.customer_comment_rating_name i {
  font-size: 15px;
}
.customer_comment_rating span {
  color: var(--primary_color);
  font-size: 18px;
}
.comment_customer_name h5 {
  font-size: 16px;
}
.comment_customer_rating span {
  font-size: 14px;
}
.comment_customer_rating {
  margin-top: 8px;
  margin-bottom: 2px;
}
.customer_comment_review_content {
  max-height: 450px;
  overflow: auto;
}
.customer_comment_review_content::-webkit-scrollbar {
  width: 5px;
}
.customer_comment_review_content::-webkit-scrollbar-thumb {
  background: var(--primary_color);
}
.customer_comment_list ul {
  margin: 0;
  padding: 0;
}
.customer_comment_list ul li {
  display: block;
  overflow: hidden;
  list-style: none;
  border-top: 1px solid var(--border);
  padding: 20px 0px;
}
.customer_comment_btn {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  height: 100%;
}
.customer_comment_btn_link {
  border: 1px solid var(--border);
  padding: 10px 20px;
  border-radius: 3px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.customer_comment_btn_link:hover {
  color: var(--hover);
}
.customer_comment_item {
  width: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  overflow: hidden;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  gap: 10px;
  margin-bottom: 10px;
}
.customer_comment_item_star {
  width: 100px;
}
.customer_comment_item_star span {
  font-size: 14px;
  line-height: 24px;
}
.customer_comment_item_percentage_segment {
  width: 200px;
  background-color: var(--border);
  height: 10px;
  display: block;
}
.customer_comment_item_percentage {
  width: 40px;
  text-align: right;
}
.customer_comment_item_percentage_segment span {
  background-color: var(--black);
  height: 10px;
  display: block;
}
.customer_comment_image img {
  width: 75px;
  height: 75px;
  float: left;
  margin-right: 5px;
}
.customer_comment_image {
  margin-top: 10px;
}
.customer_comment_view_all_link {
  color: var(--black);
  border-bottom: 1px solid;
  display: inline-block;
  font-weight: 400;
  font-size: 22px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.customer_comment_view_all_link:hover {
  color: var(--hover);
}
.customer_comment_view_all {
  text-align: center;
}

.comments_pagination {
  text-align: right;
  margin-bottom: 10px;
  margin-top: 10px;
}
.comments_pagination ul {
  display: inline-block;
  margin: 0;
  padding: 0;
}
.comments_pagination ul li {
  list-style: none;
  float: left;
  border-left: 1px solid var(--border);
  border-top: 1px solid var(--border);
  border-bottom: 1px solid var(--border);
}
.comments_pagination ul li:last-child {
  border-right: 1px solid var(--border);
}
.comments_pagination ul li .comments_pagination_link {
  color: var(--black);
  display: inline-block;
  padding: 3px 15px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.comments_pagination ul li .comments_pagination_link:hover {
  color: var(--hover);
}
.comments_pagination_active {
  background-color: var(--primary_color);
}
.comments_pagination_active:hover {
  color: var(--black) !important;
}
/*
==============================================================
    Fixed Product Cart Area Css
==============================================================
*/
.fixed_product_sticky {
  position: fixed;
  top: 40%;
  right: 0;
  background: var(--white);
  -webkit-box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
  box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
  cursor: pointer;
  z-index: 888888;
}
.fixed_product_sticky_icon {
  text-align: center;
  margin-top: 15px;
}
.fixed_product_sticky_icon i {
  color: var(--primary_color);
  font-size: 22px;
}

.fixed_product_sticky_price {
  text-align: center;
}
.fixed_product_sticky_price p {
  font-size: 14px;
  padding: 5px 10px;
  color: var(--black);
}
.fixed_product_sticky_count {
  text-align: center;
}
.fixed_product_sticky_count p {
  background-color: var(--primary_color);
  color: var(--white);
  font-size: 14px;
  padding: 0px 10px;
}
.fixed_product_card_content {
  right: 8px;
  width: 460px;
  z-index: 999999999999;
}
.fixed_product_card_header {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  padding: 10px;
  border-bottom: 1px solid var(--border);
}
.fixed_product_card_header_icon {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  gap: 10px;
}
.fixed_product_card_header_icon i {
  font-size: 25px;
  color: var(--primary_color);
}
.fixed_product_card_header_icon span {
  background-color: red;
  color: var(--white);
  display: inline-block;
  width: 20px;
  height: 20px;
  line-height: 22px;
  text-align: center;
  border-radius: 20px;
  font-size: 14px;
}
.fixed_product_card_header_close i {
  font-size: 20px;
  background-color: red;
  color: var(--white);
  display: inline-block;
  padding: 5px 9px;
  cursor: pointer;
  border-radius: 3px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.fixed_product_card_header_close i:hover {
  color: var(--hover);
}
.fixed_product_card_list {
  max-height: 700px;
  overflow-y: auto;
  padding-bottom: 300px;
}
.fixed_product_card_list ul {
  margin: 0;
  padding: 0;
}
.fixed_product_card_list ul li {
  list-style: none;
  display: block;
  overflow: hidden;
  border-bottom: 1px solid var(--border);
  padding: 10px 10px;
}
.fixed_product_card_list ul li:last-child {
  border-bottom: 0px;
}
.fixed_product_card_list_table_cell {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  gap: 15px;
}
.fixed_product_card_image img {
  width: 80px;
  height: 80px;
}
.fixed_product_card_details {
  width: 100%;
}
.fixed_product_card_name_size_delete {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
}
.fixed_product_card_name h5 {
  font-size: 16px;
  line-height: 22px;
  color: var(--black);
}
.fixed_product_card_delete_icon {
  width: 40px;
  text-align: right;
}
.fixed_product_card_delete_icon i {
  color: var(--black);
  font-size: 18px;
  cursor: pointer;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.fixed_product_card_delete_icon i:hover {
  color: var(--hover);
}
.fixed_product_card_qty_minus {
  float: left;
}
.fixed_product_card_qty_minus i {
  width: 25px;
  height: 25px;
  line-height: 25px;
  text-align: center;
  border: 1px solid var(--border);
  border-right: 0px;
  border-radius: 3px 0px 0px 3px;
  color: var(--black);
  cursor: pointer;
}
.fixed_product_card_qty input {
  width: 40px;
  border: 1px solid var(--border);
  height: 25px;
  text-align: center;
  float: left;
}
.fixed_product_card_qty_plus {
  float: left;
}
.fixed_product_card_qty_plus i {
  width: 25px;
  height: 25px;
  line-height: 25px;
  text-align: center;
  border: 1px solid var(--border);
  border-left: 0px;
  border-radius: 0px 3px 3px 0px;
  color: var(--black);
  cursor: pointer;
}
.fixed_product_card_qty_price {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  margin-top: 5px;
}
.fixed_product_card_close_price p {
  font-size: 16px;
  color: var(--black);
}
.fixed_product_card_footer {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  width: 100%;
  padding: 10px;
  background-color: #f5f6f7;
}
.fixed_product_card_footer_count {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  padding-top: 10px;
}
.fixed_product_card_footer_count strong {
  font-size: 20px;
  font-weight: 400;
}
.fixed_product_card_footer_count strong i {
  font-size: 26px;
  padding-right: 3px;
}
.fixed_product_card_footer_checkout {
  margin-top: 20px;
  margin-bottom: 10px;
}
.fixed_product_card_footer_checkout_link {
  display: block;
  width: 100%;
  background-color: var(--primary_color);
  text-align: center;
  color: var(--white);
  font-size: 18px;
  padding: 10px 0px;
  font-weight: 500;
  border-radius: 3px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.fixed_product_card_footer_checkout_link:hover {
  color: var(--black);
}
.fixed_product_card_footer_view_cart {
  text-align: center;
}
.fixed_product_card_footer_view_cart_link {
  font-weight: 500;
  text-align: center;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
  background-color: var(--black);
  color: var(--white);
  display: block;
  padding: 10px 0px;
  border-radius: 3px;
}
.fixed_product_card_footer_view_cart_link:hover {
  color: var(--hover);
}
/* scroll css */
.fixed_product_card_list::-webkit-scrollbar {
  width: 5px;
}
.fixed_product_card_list::-webkit-scrollbar-track {
  background: var(--white);
}
.fixed_product_card_list::-webkit-scrollbar-thumb {
  background: var(--primary_color);
}
.fixed_product_card_list::-webkit-scrollbar-thumb:hover {
  background: #555;
}

/*
==============================================================
    Whatsapp Icon Css
==============================================================
*/
.fixed_footer_whatsapp_icon {
    position: relative;
    background-color: #0DC043;
    color: var(--white);
    width: 40px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    border-radius: 100%;
    position: fixed;
    bottom: 80px;
    right: 15px;
    z-index: 99;
}
.fixed_footer_whatsapp_icon .whatsapp_icon {
    color: var(--white);
    font-size: 25px;
}
.whatsapp_close i {
    position: absolute;
    top: -14px;
    right: -1px;
    color: var(--black);
    font-size: 18px;
    cursor: pointer;
}
.whatsapp_toggle {
    display: none;
}
/*
==============================================================
    Load More Area Css
==============================================================
*/
.load_more_details {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  border: 1px solid var(--primary_color);
  border-radius: 3px;
  cursor: pointer;
  width: 200px;
  text-align: center;
  margin: 0 auto;
  padding: 10px 5px;
  transition: 0.3s;
}
.load_more_details p,
.load_more_details i {
  transition: 0.3s;
}
.load_more_details:hover {
  gap: 15px;
}
.load_more_details:hover p,
.load_more_details:hover i {
  color: var(--hover);
}
.load_more_bar {
  width: 50%;
  height: 5px;
  background-color: #eeeeee;
  margin: 0 auto;
  margin-bottom: 35px;
}
.load_more_bar span {
  background-color: var(--primary_color);
  height: 5px;
  display: block;
}

/*==============================================================
success two section start
==============================================================
*/

/* tr {
  vertical-align: none;
  display: flex;
  justify-content: space-between;
} */

.success_header {
  background-color: var(--success_color);
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  text-align: center;
  margin-top: 0;
  margin-bottom: 0;
  padding: 10px 0px;
}

.success_title {
  text-align: center;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.check_out_icon {
  background-color: #49c077;
  width: 43px;
  height: 43px;
  border-radius: 5px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.check_out_icon i {
  font-size: xx-large;
  color: dimgrey;
}

.success_title h2 {
  color: white;
  font-weight: 600;
  margin-top: 20px;
}

.success_content_info {
  background-color: #f8f6f8;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

.success_p {
  color: #1a1e23;
  font-family: "Inter", Sans-serif;
  font-size: 20px;
  font-weight: 600;
  letter-spacing: -0.5px;
  text-align: center;
  width: 800px;
  padding: 33px 0px;
}

.english_p {
  font-size: 25px !important;
}

.success_order_details {
  background-color: var(--white);
  border-style: solid;
  border-width: 1px 1px 1px 1px;
  border-color: #dee0e3;
  box-shadow: 0px 64px 80px -40px rgba(0, 0, 0, 0.12);
  border-radius: 12px 12px 12px 12px;
  width: 810px;
  height: auto;
  padding: 25px 40px;
}

.success_order_header {
  background-color: #f8f6f8;
  display: flex;
  gap: 20px;
  align-items: center;
  padding: 24px 40px;
}

.overview__order {
  display: inline-block;
  border-right: 1px dashed #ccc;
  padding: 0.5em 1em 0.5em 0;
  margin: 0.5em 0.5em 0.5em 0;
  list-style-type: none;
}
.overview__order:last-child {
  border-right: none;
}

.overview__order span {
  font-weight: 600;
  font-size: 13px;
  color: #746e6e;
}

.overview__order p {
  font-weight: 300;
}
.pay_deliveay_title {
  margin-top: 20px;
  font-size: 16px;
  font-weight: 300;
}

.order_details {
  padding: 24px 40px;
  background-color: #f8f6f8;
  margin-top: 30px;
}

.product_total {
  font-weight: 700;
  color: gray;
}

table.order_details_table tr {
  margin-top: 25px;
}

.order_details_table td {
  font-size: 13px;
  padding-bottom: 10px;
}
.order_left_side {
  width: 413px;
}

.winter_warm_face_masks {
  border-top: 1px dashed #ccc;
  border-bottom: 1px dashed #ccc;
}

.winter_warm_td {
  padding-top: 5px;
}

/*
==============================================================
    Responsive Area Css
==============================================================
*/
@media only screen and (min-width: 1400px) {
  .container {
    max-width: 90%;
  }
}
@media only screen and (max-width: 1700px) {
}
@media only screen and (max-width: 1600px) {
  .zooming_show_image {
   /* height: 430px; */
  }
  .zooming_image_list ul li img {
    width: 50px;
    margin-right: 3px;
    height: 50px;
  }
  .single_product_add_to_wishlist {
      font-size: 14px;
  }
  .single_product_add_to_cart {
      font-size: 14px;
  }
  .single_product_buy_now_btn_link {
      font-size: 14px;
  }
  .single_product_qty_plus {
      font-size: 14px;
  }
  .single_product_qty_minus {
      font-size: 14px;
  }
  .single_product_qty input {
      font-size: 14px;
  }
}
@media only screen and (max-width: 1500px) {
  .main_menu ul li {
    margin-right: 20px;
  }
}
@media only screen and (max-width: 1400px) {

  .single_product_add_to_wishlist {
      font-size: 15px;
  }
  .single_product_add_to_cart {
      font-size: 15px;
  }
  .single_product_buy_now_btn_link {
      font-size: 15px;
  }
  .single_product_qty_plus {
      font-size: 15px;
  }
  .single_product_qty_minus {
      font-size: 15px;
  }
  .single_product_qty input {
      font-size: 15px;
  }


  .main_menu ul li .main_menu_link {
    font-size: 14px;
  }
  .checkout_product_name_image {
    width: 200px;
  }
  .zooming_show_image {
   /* height: 350px; */
  }
  .product_image {
    max-height: 175px;
  }
  .header_middle_wishlist {
    margin: 0px 25px;
  }
}
@media screen and (max-width: 1200px) {
  .main_menu ul li {
    margin-right: 10px;
  }
  .product_image {
    max-height: 220px;
  }
  .service_title h4 {
    font-size: 18px;
  }
  .header_middle_logo img {
    height: 35px;
  }
  .single_product_specification_content {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    gap: 20px;
  }
  .single_product_specification_list {
    margin-bottom: 0px;
  }
  .checkout_form {
    padding: 30px;
  }
  .checkout_order_summary {
    padding: 30px;
  }
  .customer_comment_avarage_rating {
    font-size: 20px;
  }
  .customer_comment_rating_name {
    height: 26px;
    font-size: 14px;
  }
  .customer_comment_rating_name:after {
    border-top: 27px solid var(--primary_color);
  }
  .customer_comment_rating_name i {
    font-size: 12px;
  }
  .customer_comment_rating span {
    font-size: 14px;
  }
  .customer_comment_rating {
    margin-top: 10px;
    margin-bottom: 2px;
  }
  .customer_comment_item {
    gap: 5px;
  }
  .customer_comment_item_percentage_segment {
    width: 150px;
  }
  .customer_comment_title {
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
  }
  .customer_comment_rating {
    text-align: center;
  }
  .customer_comment_rating_count {
    text-align: center;
  }
  .comments_pagination {
    text-align: center;
  }
  .customer_comment_image img {
    width: 50px;
    height: 50px;
  }
  .zooming_show_image {
   /* height: 430px; */
  }
}

@media screen and (max-width: 992px) {
  .section_padding {
    padding: 20px 0px;
  }
  .section_padding_top {
    padding-top: 20px;
  }
  .section_padding_bottom {
    padding-bottom: 20px;
  }
  .section_top_space {
    padding-top: 15px;
  }
  .fixed_footer_menu {
    display: block;
  }
  .header_top_list {
    text-align: center;
  }
  .header_top_list ul li:last-child {
    display: none;
  }
  .header_mobile_logo img {
    height: 50px;
  }
  .header_mobile_search i {
    font-size: 20px;
  }
  .header_mobile_icon_link i {
    font-size: 18px;
  }
  .header_mobile_cart {
    width: 18px;
    height: 18px;
    font-size: 13px;
    line-height: 10px;
  }
  .auth_wrap {
    padding: 20px;
  }
  .auth_title {
    margin-bottom: 20px;
  }
  .header_middle_search input {
    height: 40px;
  }
  .header_middle_search_link {
    font-size: 16px;
  }
  .fixed_product_sticky {
    display: none;
  }
  .header_mobile_device {
    padding: 8px 0px;
  }
  .header_middle {
    padding: 3px 0px;
    border-top: 0px;
  }
  .search_class {
    display: none;
  }
  .search_toggle {
    display: block;
  }
  .header_mobile_menu {
    z-index: 9999999999;
  }
  .header_mobile_top {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    padding: 10px 20px;
  }
  .header_mobile_close_icon i {
    font-size: 25px;
  }
  .header_mobile_close_icon i {
    font-size: 25px;
  }
  .mobile_main_menu ul {
    margin: 0;
    padding: 0;
  }
  .mobile_main_menu ul li {
    list-style: none;
    display: block;
    border-top: 1px solid var(--border);
    padding: 5px 20px;
    position: relative;
    overflow: hidden;
  }
  .mobile_main_menu ul li i {
    position: absolute;
    top: 0;
    right: 0;
    margin-top: 8px;
    margin-right: 20px;
    font-size: 18px;
  }
  .mobile_main_menu ul li .mobile_main_menu_link {
    color: var(--black);
    display: block;
    font-size: 16px;
    text-transform: uppercase;
    -webkit-transition: 0.3s;
    -o-transition: 0.3s;
    transition: 0.3s;
  }
  .mobile_main_menu ul li:hover > .mobile_main_menu_link {
    color: var(--hover);
  }
  .mobile_main_menu ul li .mobile_main_submenu {
    margin-left: 20px;
  }
  .mobile_main_menu ul li .mobile_main_submenu li {
    padding: 0px;
    border: none;
    overflow: hidden;
    display: block;
  }
  .mobile_main_menu ul li .mobile_main_submenu li .mobile_main_submenu_link {
    color: var(--black);
    display: block;
    font-size: 16px;
    text-transform: capitalize;
    -webkit-transition: 0.3s;
    -o-transition: 0.3s;
    transition: 0.3s;
  }
  .mobile_main_menu ul li .mobile_main_submenu .mobile_main_sub_submenu {
    margin-left: 20px;
  }
  .mobile_main_menu ul li .mobile_main_submenu li .mobile_main_sub_submenu li {
    padding: 0px;
    border: none;
  }
  .mobile_main_menu
    ul
    li
    .mobile_main_submenu
    li
    .mobile_main_sub_submenu_link {
    color: var(--black);
    display: block;
    font-size: 16px;
    text-transform: capitalize;
    -webkit-transition: 0.3s;
    -o-transition: 0.3s;
    transition: 0.3s;
  }
  .mobile_submenu_class {
    display: none;
  }
  .mobile_submenu_toggle {
    display: block;
  }
  .mobile_sub_submenu_class {
    display: none;
  }
  .mobile_sub_submenu_toggle {
    display: block;
  }
  .banner_slider_image {
    height: 500px;
  }
  .footer_middle {
    margin-top: 10px;
    margin-bottom: 10px;
  }
  .footer_copyright {
    text-align: center;
  }
  .footer_develop_by {
    float: inherit;
    text-align: center;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    margin-top: 5px;
  }
  .footer_area {
    padding-bottom: 50px;
  }
  .zooming_show_image {
   /* height: 550px;*/
  }

  .success_content_info {
    padding: 0px 10px;
  }

  .success_p {
    width: 100%;
    padding: 15px 5px;
    font-size: 18px;
    line-height: 30px;
  }

  .success_order_details {
    width: 100%;
    padding: 5px 6px;
  }

  .success_order_header {
    flex-direction: column;
    gap: 0;
    align-items: baseline;
    padding: 5px 30px;
  }
  .overview__order {
    border-right: none;
    border-bottom: 1px dashed #ccc;
    width: 100%;
  }
  .overview__order:last-child {
    border-bottom: none;
  }
}

@media screen and (max-width: 768px) {

  .fixed_footer_whatsapp_icon {
      position: relative;
      background-color: #0DC043;
      color: var(--white);
      width: 40px;
      height: 40px;
      line-height: 40px;
      text-align: center;
      border-radius: 100%;
      position: fixed;
      bottom: 50px;
      right: 15px;
      z-index: 99;
  }
  .single_product_qty_with_buy_now_btn {
      margin-bottom: 15px;
  }
  .sticky {
    padding: 1px 0px !important;
  }
  .custom_section_title h2 {
    display: block !important;
    width: 100% !important;
    text-align: center !important;
  }
  .slider_banner_active .owl-nav div {
    display: none;
  }
  /* heading category list toggle css start */
  .section_title_table_cell {
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
  }
  .category_list_class {
    display: none;
  }
  .category_list_toggle {
    display: block;
  }
  .category_list {
    position: relative;
  }
  .category_list ul li {
    display: block;
    width: 100%;
    border-bottom: 1px solid var(--border);
  }
  .category_list ul li:last-child {
    border-bottom: 0px;
  }
  .category_list ul {
    margin: 0;
    padding: 0;
    position: absolute;
    top: 100%;
    right: -20px;
    width: 200px;
    z-index: 999999;
    background-color: var(--white);
    -webkit-box-shadow: var(--shadow);
    box-shadow: var(--shadow);
    margin-top: 21px;
  }
  .section_title h2 i {
    padding-left: 10px;
    font-size: 18px;
  }
  .category_list ul li .category_list_link {
    border-radius: 0px;
    text-align: center;
    color: var(--black);
    background-color: transparent;
    border: none;
  }
  .section_title i {
    display: block;
  }
  .section_title h2 {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
  }
  /* heading category list toggle css end */

  .product_image {
    max-height: 160px;
  }
  .footer_logo {
    text-align: center;
  }
  .footer_area {
    padding-top: 30px;
  }
  .footer_social ul li .footer_social_link {
    width: 35px;
    height: 35px;
    line-height: 35px;
    font-size: 18px;
  }
  .single_product_specification_content {
    display: inherit;
  }
  .single_product_specification_list {
    margin-bottom: 15px;
  }
  .product_name_link {
    font-size: 14px;
  }
  .order_tracking_content {
    padding: 20px;
  }
  .wishlist_image img {
    width: 40px;
    height: 40px;
  }
  .wishlist_name_link {
    line-height: 18px;
    font-size: 13px;
  }
  .wishlist_price span {
    display: block;
    font-size: 13px;
    line-height: 18px;
  }
  .wishlist_action_link {
    font-size: 12px;
    padding: 0px 2px;
    width: 75px;
  }
  .wishlist_delete {
    text-align: right;
  }
  .wishlist_price {
    width: 75px;
  }
  .wishlist_name {
    width: 120px;
  }
  .wishlist_delete_link {
    font-size: 16px;
  }
  .view_cart_coupon input {
    width: 100%;
    padding: 7px 10px;
    height: 45px;
  }
  .view_cart_coupon_update {
    display: block;
  }
  .view_cart_coupon_btn {
    padding: 10px 15px;
    height: 45px;
  }
  .view_cart_update {
    text-align: center;
    margin-top: 20px;
  }
  .view_cart_update_btn {
    padding: 10px 20px;
  }
  .view_cart_subtotal strong {
    font-size: 16px;
  }
  .view_cart_total strong {
    font-size: 16px;
  }
  .view_cart_image img {
    width: 40px;
    height: 40px;
  }
  .view_cart_name_link {
    font-size: 13px;
    line-height: 18px;
  }
  .view_cart_name {
    width: 120px;
  }
  .view_cart_price span {
    display: block;
    font-size: 13px;
    line-height: 18px;
  }
  .view_cart_price {
    width: 75px;
  }
  .view_cart_qty_minus {
    width: 25px;
    height: 25px;
    line-height: 25px;
    font-size: 16px;
  }
  .view_cart_qty input {
    width: 35px;
    height: 25px;
    line-height: 25px;
  }
  .view_cart_qty_plus {
    width: 25px;
    height: 25px;
    line-height: 25px;
    font-size: 16px;
  }
  .view_cart_qty {
    width: 85px;
  }
  .profile_form_item input {
    padding: 10px 10px;
  }
  .profile_form_submit_btn_link {
    padding: 10px 0px;
  }
  .auth_item {
    margin-bottom: 10px;
  }
  .order_tracking_sender_title h3 {
    padding: 5px 0px;
    font-size: 18px;
  }
  .order_tracking_courier_title h3 {
    font-size: 18px;
    padding: 5px 0px;
  }
  .header_search_item_product_name p {
    font-size: 14px;
    line-height: 18px;
  }
  .header_search_item_product_price span {
    font-size: 14px;
  }
  .customer_comment_review_content {
    max-height: 350px;
  }
  .load_more_bar {
    width: 80%;
  }
  .load_more_bar p {
    font-size: 14px;
  }
  .load_more_details {
    width: 120px;
    padding: 2px 5px;
  }
  .load_more_details p,
  .load_more_details i {
    font-size: 14px;
  }
}

@media screen and (max-width: 600px) {
}

@media screen and (max-width: 576px) {
  .product_image {
    max-height: 240px;
  }
  .checkout_form {
    padding: 15px;
  }
  .checkout_form_title {
    margin-bottom: 20px;
  }
  .checkout_form_title h3 {
    font-size: 20px;
  }
  .order_summary_title h3 {
    font-size: 20px;
  }
  .order_summary_title {
    margin-bottom: 20px;
  }
  .checkout_form_group input,
  .checkout_form_group select,
  .checkout_form_group textarea {
    padding: 7px 10px;
  }
  .checkout_form_group .checkout_form_select {
    padding: 8px 10px;
  }
  .checkout_form_group {
    margin-bottom: 6px;
  }
  .checkout_form_group label {
    margin-bottom: 1px;
  }
  .checkout_form_btn_link {
    padding: 8px 30px;
  }
  .checkout_order_summary {
    padding: 15px;
  }
  .order_summary_table .table thead tr th {
    font-size: 13px;
    line-height: 20px;
  }
  .checkout_product_name_image p {
    font-size: 12px;
  }
  .apply_coupon_item input {
    padding: 6px 10px;
  }
  .apply_coupon_item_link {
    padding: 6px 15px;
  }
  .success_title h3 {
    font-size: 20px;
    line-height: 30px;
  }
  .success_subtitle p {
    font-size: 14px;
  }
  .success_call p {
    font-size: 14px;
  }
  .product_name_link {
    margin-bottom: 3px;
  }
  .product_new_price {
    font-size: 14px;
  }
  .product_discount_price {
    font-size: 14px;
    padding-left: 5px;
  }
  .product_btn_link {
    padding: 1px 0px;
    font-size: 18px;
  }
  .order_tracking_title strong {
    font-size: 13px;
    line-height: 20px;
    font-weight: 500;
  }
  .order_tracking_title p {
    font-size: 13px;
    line-height: 20px;
  }
  .order_tracking_search input {
    padding: 7px 10px;
    font-size: 14px;
  }
  .order_tracking_search_btn_link {
    font-size: 18px;
    padding: 8px 0px;
  }
  .order_tracking_date p {
    font-size: 14px;
  }
  .order_tracking_invoice strong {
    font-weight: 500;
  }
  .order_tracking_order_status_details {
    float: inherit;
    margin-bottom: 15px;
  }
  .order_tracking_header {
    padding-bottom: 20px;
    margin-bottom: 15px;
  }
  .order_tracking_sender_organization h3 {
    font-size: 20px;
  }
  .order_tracking_courier_name h3 {
    font-size: 20px;
  }
  .order_tracking_customer_item {
    -webkit-box-align: inherit;
    -ms-flex-align: inherit;
    align-items: inherit;
  }
  .auth_item input {
    padding: 10px 15px;
  }
  .auth_sub_btn_link {
    padding: 10px 0px;
    font-size: 16px;
  }
  .auth_sub_btn_two_link {
    padding: 10px 0px;
    font-size: 16px;
  }
  .auth_title h3 {
    font-size: 20px;
  }
  .zooming_show_image {
   /* height: 350px; */
  }
  .order_left_side {
    width: 284px;
  }
}
@media screen and (max-width: 480px) {
  .product_image {
    max-height: 195px;
  }
  .single_product_name {
    margin-top: 10px;
    margin-bottom: 10px;
  }
  .single_product_name h2 {
    font-size: 18px;
  }
  .single_product_specification_list ul li {
    font-size: 12px;
    margin-bottom: 2px;
  }
  .single_product_call_title p {
    line-height: 24px;
  }
  .single_product_tab_nav .single_product_tab_nav_link {
    font-size: 10px;
    padding: 4px 8px;
  }
  .single_product_tab_nav {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
  }
  .order_details {
    padding: 24px 8px;
  }

  .order_left_side {
    width: 145px;
    padding-right: 25px;
  }
}
@media screen and (max-width: 375px) {
  .product_image {
    max-height: 170px;
  }
  .zooming_show_image {
   /* height: 330px; */
  }
}
@media screen and (max-width: 345px) {
  .product_image {
    max-height: 155px;
  }
}

</style><?php /**PATH /home/hurayaac/glowryaa.com/resources/views/frontend/partials/css.blade.php ENDPATH**/ ?>