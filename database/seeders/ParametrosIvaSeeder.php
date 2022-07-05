<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ParametrosIvaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('parametros_ivas')->truncate();
        //guardar un solo registro
        DB::table('parametros_ivas')->insert([
            'nombre' => 'Cero %',
            'porcentaje' => 0,
            'principal_id' => 2,
            'observaciones' => 'Ninguna',
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('parametros_ivas')->insert([
            'nombre' => 'Doce %',
            'porcentaje' => 12,
            'principal_id' => 1,
            'observaciones' => 'Ninguna',
            'created_at' => date('Y-m-d H:i:s')
        ]);
    }
}
