<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TasaIva extends Model
{
    protected $table = 'tasas_iva';

    protected $fillable = [
        'nombre', 'tasa'
    ];

    public function productos(){
        return $this->hasMany(Productos::class);
    }

}
