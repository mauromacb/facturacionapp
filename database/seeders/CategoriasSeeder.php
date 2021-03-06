<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class CategoriasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0');
        DB::table('categorias')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1');
        //guardar un solo registro
        DB::table('categorias')->insert([
            'Nombre' => 'Categoria de prueba'
        ]);

        //guardar 20 registros
        $arrays = range(0,19);
        foreach ($arrays as $valor) {
            DB::table('categorias')->insert([
                'Nombre' => 'Categoria '.Str::random(2)
            ]);
        }
    }
}
