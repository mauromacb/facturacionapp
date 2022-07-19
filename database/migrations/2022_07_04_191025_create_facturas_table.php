<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFacturasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('facturas', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedBigInteger('cliente_id');
            $table->foreign('cliente_id')->references('id')->on('clientes');
            $table->unsignedBigInteger('empresa_id');
            $table->foreign('empresa_id')->references('id')->on('empresas');
            $table->integer('secuencial');
            $table->unsignedBigInteger('forma_pago_id');
            $table->foreign('forma_pago_id')->references('id')->on('formas_pagos');
            $table->date('fecha_emision');
            $table->double('total_sin_impuestos',8,2);
            $table->double('subtotal_12',8,2);
            $table->double('subtotal_0',8,2);
            $table->double('subtotal_no_iva',8,2);
            $table->double('subtotal_extento_iva',8,2);
            $table->double('total_ice',8,2);
            $table->double('total_iva',8,2);
            $table->double('total_descuento',8,2);
            $table->double('total_propina',8,2);
            $table->double('total_valor',8,2);
            $table->text('observacion','50');
            $table->unsignedInteger('created_by_id');
            //$table->foreign('created_by_id')->references('id')->on('cms_users');
            $table->unsignedInteger('updated_by_id');
            //$table->foreign('updated_by_id')->references('id')->on('cms_users');
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
        Schema::dropIfExists('facturas');
    }
}
