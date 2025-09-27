<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use App\Models\City;
use App\Models\RedxDeliveryArea;
use App\Models\SubCity;

class  CourierApi
{

    public $steadfast_base_url = 'https://portal.steadfast.com.bd/api/v1';
    public $pathao_base_url = 'https://api-hermes.pathao.com/aladdin/api/v1';
    public $redx_base_url = 'https://openapi.redx.com.bd/v1.0.0-beta';


    public function store($data, $courier = 'steadfast')
    {

        if ($courier == 'steadfast') {

            $response = Http::withHeaders([
                'Api-Key' => config('courier.steadfast_api_key'),
                'Secret-Key' => config('courier.steadfast_secret_key'),
                'Content-Type' => 'application/json'
            ])->post($this->steadfast_base_url . '/create_order/bulk-order', ['data' => $data]);

            return json_decode($response, true);

        } elseif ($courier == 'pathao') {

            $response = Http::withHeaders([
                'Authorization' => 'Bearer ' . config('courier.pathao_access_token'),
                'Content-Type' => 'application/json',
                'Accept' => 'application/json',
            ])->post($this->pathao_base_url . '/orders', $data);

            return $response;

        } elseif ($courier == 'redx') {

            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_URL => $this->redx_base_url.'/parcel',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS => json_encode($data),
                CURLOPT_HTTPHEADER => array(
                    'API-ACCESS-TOKEN: Bearer '.config('courier.redx_access_token').'' ,
                    'Content-Type: application/json'
                ),
            ));   
            //execute 
            $response = curl_exec($curl);
            curl_close($curl);
            
            // Decode the JSON response
            return $data = json_decode($response, true);
            
        }


    }





    public function pathaoAccessToken()
    {

        $data = [
            'client_id' => config('courier.pathao_client_id'),
            'client_secret' => config('courier.pathao_client_secret'),
            'username' => config('courier.pathao_client_email'),
            'password' => config('courier.pathao_client_password'),
            'grant_type' => 'password',
        ];
        $response = Http::withHeaders([
            'Content-Type' => 'application/json',
            'Accept' => 'application/json',
        ])->post($this->pathao_base_url . '/issue-token',  $data);

        if ($response['access_token']) {
            return $response['access_token'];
        }
    }




    public function pathaoCityList()
    {


        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . config('courier.pathao_access_token'),
            'Content-Type' => 'application/json',
            'Accept' => 'application/json',
        ])->get($this->pathao_base_url . '/city-list');

        $cities = $response['data']['data'];
        //inserting to database table
        // foreach($cities as $item){
        //   $city =  new City();
        //   $city->name = $item['city_name'] ;
        //   $city->pathao_city_id = $item['city_id'] ;
        //   $city->save();                 

        // }

        return $cities;
    }



    public function pathaoZoneList($city_id)
    {


        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . config('courier.pathao_access_token'),
            'Content-Type' => 'application/json',
            'Accept' => 'application/json',
        ])->get($this->pathao_base_url . '/cities/' . $city_id . '/zone-list');

        $zone_list = $response['data']['data'];
        //inserting to database table
        // foreach($zone_list as $item){
        //   $sub_city =  new SubCity();
        //   $sub_city->name = $item['zone_name'] ;
        //   $sub_city->city_id = $city_id ;
        //   $sub_city->pathao_zone_id = $item['zone_id'] ;
        //   $sub_city->save();                 
        // }
        return $zone_list;
    }



    public function redxAreaList()
    {


        $response = Http::withHeaders([
            'API-ACCESS-TOKEN' => 'Bearer ' . config('courier.redx_access_token'),
            'Content-Type' => 'application/json',
            'Accept' => 'application/json',
        ])->get($this->redx_base_url . '/areas');

        $areas = $response['areas'];
        //inserting to database table
        // foreach($areas as $item){
        //   $city =  new RedxDeliveryArea();
        //   $city->district_name = $item['district_name'] ;
        //   $city->area_id = $item['id'] ;
        //   $city->area_name = $item['name'] ;
        //   $city->zone_id = $item['zone_id'] ;
        //   $city->save();                 

        // }

        return $areas;
    }


}
