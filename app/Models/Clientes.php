<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use DB;

class Clientes extends Model
{
    use HasFactory;

    // FILTROS
    public function scopeFiltrarPorNombres($query, $texto, $boolean = 'or'){
        return $query->where('nombres','like', '%'.$texto.'%', $boolean);
    }
    public function scopeFiltrarPorIdentificacion($query, $texto, $boolean = 'or'){
        return $query->where('identificacion','like', '%'.$texto.'%', $boolean);
    }
    public function scopeFiltrarPorRut($query, $texto, $boolean = 'or'){
        return $query->where('rut','like', '%'.$texto.'%', $boolean);
    }
    public function scopeFiltrarPorMail($query, $texto, $boolean = 'or'){
        return $query->where('mail','like', '%'.$texto.'%', $boolean);
    }

}
