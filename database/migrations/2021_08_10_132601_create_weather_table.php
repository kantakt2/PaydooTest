<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWeatherTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('weather', function (Blueprint $table) {
            $table->id();
            $table->timestamp('added_at');
            $table->bigInteger('station_id');
            $table->foreignId('city_id')->nullable();
            $table->float('temperture_celsius', 8, 2);
            $table->float('humidity', 8, 2);
            $table->float('wind', 8, 2);
            $table->float('rain', 8, 2)->nullable();
            $table->float('light', 8, 2)->nullable();
            $table->float('battery_level', 8, 2)->nullable();   
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
        Schema::dropIfExists('weather');
    }
}
