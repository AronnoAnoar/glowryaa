<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('redx_delivery_areas', function (Blueprint $table) {
            $table->id();
            $table->string('district_name',100);
            $table->integer('area_id');
            $table->string('area_name', 200);
            $table->integer('zone_id')->nullable();            
            $table->integer('status')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('redx_delivery_areas');
    }
};
