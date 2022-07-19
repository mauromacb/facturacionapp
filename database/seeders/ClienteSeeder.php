<?php

namespace Database\Seeders;

use App\Models\Clientes;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ClienteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0');
        DB::table('clientes')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1');
        //guardar n registros
        $arrays = range(0,200);
        foreach ($arrays as $valor) {
            DB::table('clientes')->insert([
                'identificacion' => $this->generateUniqueCode(),
                'nombres' => 'Cliente  '.Str::random(10).' '.Str::random(10),
                'correo' => 'correo@ '.Str::random(10).'.com',
                'telefono' => Str::random(10),
                'direccion' => 'Direccion  '.Str::random(10).' '.Str::random(10),
                'tipo' => 'Ruc'
            ]);
        }
    }

    public function generateUniqueCode()
    {
        do {
            $code = random_int(1000000000000, 9999999999999);
        } while (Clientes::where("identificacion", "=", $code)->first());

        return $code;
    }
}
