<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FactureroSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('factureros')->truncate();
        //guardar un solo registro
        DB::table('factureros')->insert([
            'fecha_inicio' => '2022-01-01',
            'fecha_caducidad' => '2022-12-01',
            'inicio_facturero' => '1',
            'fin_facturero' => '999',
            'autorizacion' => '1000001',
            'activo_id' => 1,
            'created_at' => date('Y-m-d H:i:s')
        ]);
    }
}
