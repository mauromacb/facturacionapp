<?php

namespace App\Models;

use App\Models\TasaIva;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Productos extends Model
{
    use HasFactory;
    public function categoria(){

        return $this->hasMany(Categorias::class,'categoria_id','id');
    }

    public function iva(){
        return $this->belongsTo(TasaIva::class, 'tasa_iva_id');
    }

    public function scopeBuscarPorCodigo($query, $codigo){
        return $query->where('codigo','=',$codigo);
    }

    public function scopeBuscarPorCodigoDeBarras($query, $codigo_de_barras){
        if($codigo_de_barras == null){
            return $query->where('codigo','=',$codigo_de_barras);
        }else{
            return $query->where('codigo_de_barras','=',$codigo_de_barras);
        }
    }

    public function scopeBuscarPorId($query, $id){
        return $query->where('id','=', $id);
    }

    public function scopeFiltrarPorNombre($query, $texto, $boolean = 'or'){
        return $query->where('nombre', 'like', '%'.$texto.'%', $boolean);
    }

    public function scopeFiltrarPorCodigo($query, $codigo, $boolean = 'or'){
        return $query->where('codigo', 'like', '%'.$codigo.'%', $boolean);
    }
}
