<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
    <!-- Your html goes here -->
    <div class='panel panel-default'>
        <div class='panel-heading'>FACTURA #{{$factura->secuencial}}</div>
        <div class='panel-body'>
            <div class='form-group col-sm-12'>
                <label class="control-label col-sm-1">Fecha</label>
                <div class="col-sm-2">{{$factura->fecha_emision}}</div>
            </div>

            <div class='form-group col-sm-12'>
                <label class="control-label col-sm-1">Cédula/Ruc</label>
                <div class="col-sm-2">{{$factura->cliente->identificacion}}{{$factura->consumidor->identificacion}}</div>
                <label class="control-label col-sm-1">Nombres</label>
                <div class="col-sm-2">{{$factura->cliente->nombres}}{{$factura->consumidor->nombres}}</div>
                <label class="control-label col-sm-1">Teléfono</label>
                <div class="col-sm-2">{{$factura->cliente->telefono}}{{$factura->consumidor->telefono}}</div>
            </div>

            <div class='form-group col-sm-12'>
                <label class="control-label col-sm-1">Correo</label>
                <div class="col-sm-2">{{$factura->cliente->correo}}{{$factura->consumidor->correo}}</div>
                <label class="control-label col-sm-1">Dirección</label>
                <div class="col-sm-4">{{$factura->cliente->direccion}}{{$factura->consumidor->direccion}}</div>
            </div>

            <div class='form-group col-sm-12'>
                <div class="col-md-12 pre-scrollable div-detalle-comprobante form_venta_contado form_factura_credito form_devolucion_contado form_compra_contado">
                    <table width="100%" class="table-condensed table-striped table-bordered">
                        <thead>
                        <tr>
                            <th class="text-center" >Código</th>
                            <th class="text-center">Artículo</th>
                            <th class="text-center" width="80px">Precio</th>
                            <th class="text-center" width="75px">Cantidad</th>
                            <th class="text-center" width="80px">Subtotal</th>
                            <th class="text-center" width="80px">IVA</th>
                            <th class="text-center" width="80px">Total</th>
                        </tr>
                        </thead>
                        <tbody id="">
                            @foreach($dataDetalleFact as $detalle)
                                <tr>
                                <td class="text-center" >{{$detalle->producto->codigo}}</td>
                                <td class="text-center" >{{$detalle->producto->nombre}}</td>
                                <td class="text-center" >{{$detalle->precio_unitario}}</td>
                                <td class="text-center" >{{$detalle->cantidad}}</td>
                                <td class="text-center" >{{$detalle->subtotal}}</td>
                                <td class="text-center" >{{$detalle->iva}}</td>
                                <td class="text-center" >{{$detalle->total}}</td>
                                </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th colspan="5"></th>
                                <th class="text-center" >Subtotal</th>
                                <th class="text-center" >{{$factura->subtotal_12}}</th>
                            </tr>
                            <tr>
                                <th colspan="5"></th>
                                <th class="text-center" >IVA</th>
                                <th class="text-center" >{{$factura->total_iva}}</th>
                            </tr>
                            <tr>
                                <th colspan="5"></th>
                                <th class="text-center" >Total</th>
                                <th class="text-center" >{{$factura->total_valor}}</th>
                            </tr>

                        </tfoot>
                    </table>
                </div>
            </div>

            <!-- etc .... -->

            </form>
        </div>

        <div class="box-footer" style="background: #F5F5F5">

            <div class="form-group">
                <div class="col-sm-10">
                    @if(g('return_url'))
                        <a href='{{g("return_url")}}' class='btn btn-default'><i
                                class='fa fa-chevron-circle-left'></i> {{cbLang("button_back")}}</a>
                    @else
                        <a href='{{CRUDBooster::mainpath("?".http_build_query(@$_GET)) }}' class='btn btn-default'><i
                                class='fa fa-chevron-circle-left'></i> {{cbLang("button_back")}}</a>
                    @endif
                    <button class="btn btn-primary"  onclick="javascript:imprim();"><i class="fa fa-print"></i> Imprimir</button>

                </div>
            </div>


        </div>
    </div>


    <div id="muestra" style="visibility: hidden;">
        <table id="muestra" class="tabla">
            <tr><th colspan="4" align="center">{{$empresa->nombre}}</th></tr>
            <tr><td colspan="4" align="center">RUC: {{$empresa->ruc}}</td></tr>
            <tr><td colspan="4" align="center">TELEFONO: {{$empresa->telefono}}</td></tr>
            <tr><td colspan="4" align="center">FACTURA: {{$factura->secuencial}}</td></tr>
            <tr><td colspan="4" align="center">FECHA: {{$factura->fecha_emision}}</td></tr>
            <tr><td colspan="4" align="center">CLIENTE: {{$factura->cliente->nombres}}{{$factura->consumidor->nombres}}</td></tr>
            <tr><td colspan="4" align="center">RUC/CED: {{$factura->cliente->identificacion}}{{$factura->consumidor->identificacion}}</td></tr>
            <tr><td colspan="4" align="center">DIRECCION: {{$factura->cliente->direccion}}{{$factura->consumidor->direccion}}</td></tr>
            <tr><th>DESCRIPCION</th><th>CANT</th><th>P/U</th><th>TOTAL</th></tr>
            @foreach($dataDetalleFact as $detalle)
                <tr>
                    <td class="text-center" >{{$detalle->producto->nombre}}</td>
                    <td class="text-center" >{{$detalle->cantidad}}</td>
                    <td class="text-center" >{{$detalle->precio_unitario}}</td>
                    <td class="text-center" >{{$detalle->subtotal}}</td>
                </tr>
            @endforeach
            <tr><td colspan="3">TARIFA 12%</td><td>{{$factura->subtotal_12}}</td></tr>
            <tr><td colspan="3">TARIFA 0%</td><td>{{$factura->subtotal_0}}</td></tr>
            <tr><td colspan="3">DESCUENTO</td><td>0</td></tr>
            <tr><td colspan="3">IVA 12%</td><td>{{$factura->total_iva}}</td></tr>
            <tr><td colspan="3">TOTAL</td><td>{{$factura->total_valor}}</td></tr>
        </table>
    </div>

    <script>
        function imprim(){
            var mywindow = window.open('', 'PRINT', 'height=400,width=600');
            mywindow.document.write('<html><head>');
            mywindow.document.write('');
            mywindow.document.write('</head><body >');
            mywindow.document.write(document.getElementById('muestra').innerHTML);
            mywindow.document.write('</body></html>');
            mywindow.document.close(); // necesario para IE >= 10
            mywindow.focus(); // necesario para IE >= 10
            mywindow.print();
            mywindow.close();
            return true;}
    </script>
@endsection