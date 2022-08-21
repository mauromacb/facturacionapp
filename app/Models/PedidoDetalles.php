<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PedidoDetalles extends Model
{
    use HasFactory;

    public function producto(){
        return $this->hasOne(Productos::class,'id','producto_id');
    }
}
