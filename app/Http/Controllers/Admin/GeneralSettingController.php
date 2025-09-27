<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\GeneralSetting;
use App\Models\ResellerSiteInfo;

class GeneralSettingController extends Controller
{




    public function get_site_info() {

            $setting = GeneralSetting::latest()->take(1)->first();
            if ($setting) {
                return response()->json([
                    "status" => "OK",
                    "setting" => $setting ,
                ]);
            }

      }


    public function edit_site_info(Request $request,$id)
      {

        $validatedData = $request->validate([
                'title' => 'required',
                'header_contact_number' => 'required',
                'meta_title' => 'nullable|max:70',
                'meta_description' => 'nullable|max:170',
            ]);

            $setting = GeneralSetting::findOrFail($id);
            $setting->title                         =   $request->title;
            $setting->promo_title                   =   $request->promo_title;
            $setting->reseller_refer_commission     =   $request->reseller_refer_commission;
            $setting->facebook_pixel                =   $request->facebook_pixel ?? null;
            $setting->facebook_chat_plugin          =   $request->facebook_chat_plugin ?? null;
            $setting->facebook_domain_verification  =   $request->facebook_domain_verification ?? null;
            $setting->google_analytics              =   $request->google_analytics ?? null;
            $setting->google_domain_verification    =   $request->google_domain_verification ?? null;
            $setting->header_contact_number         =   $request->header_contact_number;
            $setting->header_contact_number_two     =   $request->header_contact_number_two;
            $setting->header_contact_number_three   =   $request->header_contact_number_three;
            $setting->invoice_address_details       =   $request->invoice_address_details;
            $setting->single_product_page_section_1 =   $request->single_product_page_section_1;
            $setting->single_product_page_section_2 =   $request->single_product_page_section_2;
            $setting->facebook_page_iframe          =   $request->facebook_page_iframe;
            $setting->sms_api_username              =   $request->sms_api_username;
            $setting->sms_api_password              =   $request->sms_api_password;
            $setting->sms_api_sender_id             =   $request->sms_api_sender_id;
            $setting->whatsapp_number               =   $request->whatsapp_number;
            $setting->select_area                   =   $request->select_area;
            $setting->city_sub_city                 =   $request->city_sub_city;
            $setting->meta_title                    =   $request->meta_title;
            $setting->meta_description              =   $request->meta_description;
            $setting->meta_key                      =   $request->meta_key;
            $setting->meta_content                  =   $request->meta_content;

            if ($request->hasFile('logo') ) {
                $logo_path = $request->file('logo')->store('images/general_setting', 'public');
                $setting->logo = $logo_path;
            }

            if ($request->hasFile('icon') ) {
                $icon_path = $request->file('icon')->store('images/general_setting', 'public');
                $setting->icon = $icon_path;
            }

            if ($setting->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'Site Info updated successfully',
                ]);
            }

      }

    public function reseller_get_site_info() {

    $reselling_site_info = ResellerSiteInfo::latest()->take(1)->first();
        if ($reselling_site_info) {
            return response()->json([
                "status" => "OK",
                "reselling_site_info" => $reselling_site_info ,
            ]);
        }

    }

    public function reseller_edit_site_info(Request $request, $id)
    {
        $validatedData = $request->validate([
            'phone' => 'required',
        ]);

        $reselling_site_info = ResellerSiteInfo::findOrFail($id);
        $reselling_site_info->phone=$request->phone;
        $reselling_site_info->email=$request->email;
        $reselling_site_info->video_url=$request->video_url;
        $reselling_site_info->facebook_url=$request->facebook_url;
        $reselling_site_info->google_map_url=$request->google_map_url;
        $reselling_site_info->copyright=$request->copyright;

        if ($request->hasFile('image') ) {
            $logo_path = $request->file('image')->store('images/reseller_site_info', 'public');
            $reselling_site_info->logo = $logo_path;
        }

        if ($reselling_site_info->save()) {
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Reseller Site Info updated successfully',
            ]);
        }
    }











}