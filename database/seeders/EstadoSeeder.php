<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EstadoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0');
        DB::table('estados')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1');
        //guardar un solo registro
        DB::table('estados')->insert([
            'Nombre' => 'Si'
        ]);
        DB::table('estados')->insert([
            'Nombre' => 'No'
        ]);
    }
}
