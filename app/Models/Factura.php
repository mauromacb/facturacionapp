<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Factura extends Model
{
    use HasFactory;

    public function cliente(){
        return $this->hasOne(Clientes::class,'id','cliente_id');
    }
}
