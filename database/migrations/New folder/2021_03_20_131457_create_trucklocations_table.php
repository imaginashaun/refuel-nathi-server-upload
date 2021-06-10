<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTrucklocationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trucklocations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->double("latitude");
            $table->double("longitude");
            $table->integer("truck_id")->references('id')->on('trucks')->onDelete('cascade')->onUpdate('cascade');
            $table->integer("driver_id")->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');;

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
        Schema::dropIfExists('trucklocations');
    }
}
