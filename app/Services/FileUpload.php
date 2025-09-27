<?php
 namespace App\Services;
 use Intervention\Image\Facades\Image;
 use App\Models\ProductImage;

 trait  FileUpload{


      public static function singleFileUpload($file,$dir_name)
      {
                $path = $file->store('images/'.$dir_name,'public');
                return $path ;
      }


      public static function productMultiFileUpload($files,$product_id)
      {
            foreach ($files as $key => $file) {
               if (strlen($file) > 6) {
                    $p_c_image = new ProductImage() ;
                    $path = 'product_'.time().'_'.rand(1111,9999).'.jpg';
                    Image::make(file_get_contents($file))->save(public_path('storage/images/products/').$path);
                    $p_c_image->product_id = $product_id ;
                    $p_c_image->image = 'images/products/'.$path;

                    $p_c_image->save();
               }
             
            }

          return;
      }


      public static function singleFileUploadWithIntervention($file,$dir_name,$width=300,$height=300)
      {

                //make thumbnail image
                $filename = time() .$file->getClientOriginalName();
                $image_resize = Image::make($file->getRealPath());
                $image_resize->resize($width, $height);
                $image_resize->save(public_path('storage/images/'.$dir_name.'/'.$filename));
                return $filename ;
      }



      public static function productUploadWithIntervention($files,$product_id)
      {
               foreach($files as $key => $file) {
                    $p_c_image = new ProductImage() ;
                    $path = 'product_'.time().'_'.rand(1111,9999).'.jpg';
                    Image::make(file_get_contents($file))->save(public_path('storage/images/products/').$path);
                    $p_c_image->product_id = $product_id ;
                    $p_c_image->image = 'images/product/'.$path;
                    $p_c_image->save();
                }
                return ;
      }




        public static function fileUnlink($path){

            return  unlink($path) ;
        }



 }



?>