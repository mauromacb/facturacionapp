<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFormasPagosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('formas_pagos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('codigo',200);
            $table->string('forma_pago',255);
            $table->text('observaciones');
            $table->unsignedInteger('activo_id');
            $table->foreign('activo_id')->references('id')->on('estados');
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
        Schema::dropIfExists('formas_pagos');
    }
}
