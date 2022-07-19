<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateParametrosIvasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('parametros_ivas', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre',200);
            $table->smallInteger('porcentaje');
            $table->text('observaciones');
            $table->unsignedBigInteger('principal_id');
            $table->foreign('principal_id')->references('id')->on('estados');
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
        Schema::dropIfExists('parametros_ivas');
    }
}
