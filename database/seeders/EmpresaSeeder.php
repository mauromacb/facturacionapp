<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EmpresaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0');
        DB::table('empresas')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1');
        //guardar un solo registro
        DB::table('empresas')->insert([
            'nombre' => 'Nombre Empresa',
            'ruc' => '1122334455001',
            'telefonos' => '+593 2222 222',
            'email' => 'email@email.com',
            'direccion' => 'Direccion de la empresa'
        ]);
    }
}
