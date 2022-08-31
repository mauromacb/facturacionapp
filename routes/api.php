<?php

use Illuminate\Http\Request;
use App\Models\Clientes;
use Illuminate\Support\Facades\Route;
use App\Rules\validacionCI as cedula;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('validar_ci', function (Request $request) {
    // Inicio validacion    
       $respuesta = validar_cedula($request->identificacion2);
    //    Fin Válidacion
    if($respuesta){
// Paso validacion CI Original
// Validar que no exita ese registro
        $existe = Clientes::where('identificacion',$request->identificacion2)->get();
        if(count($existe)){
            return json_encode('Cédula ya registrada');
        }else{
            return json_encode(true);
        }
    }else{

        return json_encode('Cédula inválida');
    }
   
})->name("validar_ci");

Route::post('ci_duplicada', function (Request $request) {
    $existe = Clientes::where('identificacion',$request->identificacion2)->get();
    if(count($existe)){
        return json_encode('Cédula ya registrada');
    }else{
        return json_encode(true);
    }
   
})->name("ci_duplicada");

Route::post('correo_duplicado', function (Request $request) {
    $existe = Clientes::where('correo',$request->correo)->get();
    if(count($existe)){
        return json_encode('Correo ya registrado');
    }else{
        return json_encode(true);
    }
   
})->name("correo_duplicado");

function validar_cedula($value)
{
    if($value == "5555555555"){
        return false;
    } 
    // Validar longitud y sacar verificador
    if (strlen($value) === 10 ) {
        $verificador = substr($value,-1);
        $longitud = true;
    } elseif(strlen($value) === 13) {
        $verificador = substr($value,-4,1);
        $longitud = true;
    }else{
        $verificador = null;
        $longitud = false;
        return false;
    }
    // Validar que solo sean numeros
    if (ctype_digit($value)) {
        $num = true;
    } else {
        $num = false;
        return false;
    }

    // Validar que sea una cedula
    $coe = [2, 1, 2, 1, 2, 1, 2, 1, 2];
    $total = 0;
    for ($i = 0; $i < 9; $i++) {
        # code...
        $rest = $coe[$i] * $value[$i];
        if ($rest >= 10) {
            $rest = $rest - 9;
        }
        $total = $total + $rest;
    }
    //
    if (is_integer($total / 10)) {
        $superior = $total;
    } else {
        $float = $total / 10;
        $superior = ceil($float);
        $superior = $superior * 10;
    }
    $resultado = $superior - $total;

    if ($verificador == $resultado) {
        $ci = true;
    } else {
        $ci = false;
    }
    return $longitud && $num && $ci;
}