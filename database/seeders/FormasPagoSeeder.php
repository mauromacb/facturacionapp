<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FormasPagoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //DB::table('formas_pagos')->truncate();
        //guardar un solo registro
        DB::table('formas_pagos')->insert([
            'codigo' => '01',
            'forma_pago' => 'EFECTIVO',
            'activo_id' => 1,
            'observaciones' => '',
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('formas_pagos')->insert([
            'codigo' => '02',
            'forma_pago' => 'CHEQUE PROPIO',
            'activo_id' => 2,
            'observaciones' => '',
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('formas_pagos')->insert([
            'codigo' => '03',
            'forma_pago' => 'CHEQUE CERTIFICADO',
            'activo_id' => 2,
            'observaciones' => '',
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('formas_pagos')->insert([
            'codigo' => '04',
            'forma_pago' => 'CHEQUE DE GERENCIA',
            'activo_id' => 2,
            'observaciones' => '',
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('formas_pagos')->insert([
            'codigo' => '05',
            'forma_pago' => 'CHEQUE DEL EXTERIOR',
            'activo_id' => 2,
            'observaciones' => '',
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('formas_pagos')->insert([
            'codigo' => '06',
            'forma_pago' => 'DÉBITO DE CUENTA',
            'activo_id' => 2,
            'observaciones' => '',
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('formas_pagos')->insert([
            'codigo' => '07',
            'forma_pago' => 'TRANSFERENCIA PROPIO BANCO',
            'activo_id' => 2,
            'observaciones' => '',
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('formas_pagos')->insert([
            'codigo' => '08',
            'forma_pago' => 'TRANSFERENCIA OTRO BANCO NACIONAL',
            'activo_id' => 2,
            'observaciones' => '',
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('formas_pagos')->insert([
            'codigo' => '09',
            'forma_pago' => 'TRANSFERENCIA  BANCO EXTERIOR',
            'activo_id' => 2,
            'observaciones' => '',
            'created_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('formas_pagos')->insert([
            'codigo' => '10',
            'forma_pago' => 'TARJETA DE CRÉDITO NACIONAL',
            'activo_id' => 2,
            'observaciones' => '',
            'created_at' => date('Y-m-d H:i:s')
        ]);
    }
}
