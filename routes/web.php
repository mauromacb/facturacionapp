<?php

use App\Http\Controllers\AdminClientesController;
use App\Http\Controllers\AdminFacturasController;
use App\Http\Controllers\AdminPedidosController;
use App\Http\Controllers\AdminProductosController;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', function () {
    return view('welcome');
});
Route::get('/offline', function () {
    // para pwa
    return view('vendor/laravelpwa/offline');
});
Route::get('/clientes/buscar', [AdminClientesController::class, 'buscar']);
Route::get('/clientes/buscar_consumidor_final', [AdminClientesController::class, 'buscarConsumidorFinal']);
Route::get('/productos/buscar', [AdminProductosController::class, 'buscar']);
Route::get('/productos/buscarPorCategoria', [AdminProductosController::class, 'buscarPorCategoria']);
Route::get('/facturas/imprimir/{facturaId}',[AdminFacturasController::class, 'imprimir']);
Route::get('/facturas/registrar/cliente',[AdminFacturasController::class, 'registrarCliente']);
Route::get('/productos/catalogo', [AdminProductosController::class, 'catalogo']);
Route::post('/admin/pedidos/save', [AdminPedidosController::class, 'save']);
