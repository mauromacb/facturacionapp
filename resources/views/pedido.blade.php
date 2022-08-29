@extends('crudbooster::admin_template')





@section('content')
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>

    <script type="text/javascript">

        var buscar_prodcto_categoria = "{{ url('productos/buscarPorCategoria?texto=') }}";
        var buscar_cliente_url = "{{ url('clientes/buscar?texto=') }}";
        var buscar_prodcto_url = "{{ url('productos/buscar?texto=') }}";
        var comprobante_vistaprevia_url = "{{ url('comprobantes/vistaPrevia') }}";
        var validador=1;

        var form = document.forms['formNuevoCliente'];
        form.click = function(e){
            e.preventDefault();
            btnRegistrarNuevoCliente();
            return false;
            //document.getElementById('print').innerHTML=select.toUpperCase();
        }


        function btnRegistrarNuevoCliente(e){
            e.preventDefault();

            var formObj = {};
            var inputs = $('#formNuevoCliente').serializeArray();
            $.each(inputs, function (i, input) {
                formObj[input.name] = input.value;
            });


            var identificacion2 = formObj['identificacion2'];
            var nombres = formObj['nombres'];
            var correo = formObj['correo'];
            var telefono = formObj['telefono'];
            var direccion = formObj['direccion'];
            var tipo = formObj['tipo'];
            var str = identificacion2 + '&nombres=' + nombres + '&correo=' + correo + '&telefono=' + telefono + '&direccion=' + direccion + '&tipo=' + tipo;
            var url = "{{ url('facturas/registrar/cliente?identificacion2=') }}" + str;
            //var url = buscar_cliente_url + str;
            $.get(url, function (data) {
                console.log(data["clientes"]["id"]);
                swal(data["cab"], data["message"], data["message_type"]);
                var clientes = data["clientes"];
                if (data["message_type"] == 'success') {
                    console.log(data["message_type"]);
                    $('#modalRegistrarCliente').modal('hide');
                    $('#modalAgregarCliente').modal('hide');
                    $('input#identificacion').val(identificacion2);
                    $('input#nombres').val(nombres);
                    $('input#telefono').val(telefono);
                    $('input#direccion').val(direccion);
                    $('input#correo').val(correo);
                    $('input#hiddenCliente').val(clientes['id']);
                } else {
                }
            });

        }

        function agregarArticuloPedido(codigo,nombre){
            var producto_codigo = codigo;
            if(producto_codigo.length > 2){
                //url = "{{ url('productos/buscar?texto=') }}" + producto_codigo;
                url = buscar_prodcto_url + producto_codigo;
                $.get(url , function( data ){
                    agregarArticulo(data);
                    swal(nombre, 'Agregado Exitosamente', 'success');

                });
            }
        }

    </script>
    <script src="{{ asset('js/forms/comprobantes.js') }}"></script>

    <div>

        @if(CRUDBooster::getCurrentMethod() != 'getProfile' && $button_cancel)
            @if(g('return_url'))
                <p><a title='Return' href='{{g("return_url")}}'><i class='fa fa-chevron-circle-left '></i>
                        &nbsp; {{cbLang("form_back_to_list",['module'=>CRUDBooster::getCurrentModule()->name])}}</a></p>
            @else
                <p><a title='Main Module' href='{{CRUDBooster::mainpath()}}'><i class='fa fa-chevron-circle-left '></i>
                        &nbsp; {{cbLang("form_back_to_list",['module'=>CRUDBooster::getCurrentModule()->name])}}</a></p>
            @endif
        @endif

        <div class="panel panel-default">
            <div class="panel-heading">
                <strong><i class='{{CRUDBooster::getCurrentModule()->icon}}'></i> {!! $page_title !!}</strong>
            </div>

            <div class="panel-body" style="padding:20px 0px 0px 0px">
                <?php
                $action = (@$row) ? CRUDBooster::mainpath("edit-save/$row->id") : CRUDBooster::mainpath("save");
                $return_url = ($return_url) ?: g('return_url');
                ?>
                <form class='form-horizontal' method='post' id="formNuevoComprobante" enctype="multipart/form-data" action='{{$action}}'>
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <input type='hidden' name='return_url' value='{{ @$return_url }}'/>
                    <input type='hidden' name='ref_mainpath' value='{{ CRUDBooster::mainpath() }}'/>
                    <input type='hidden' name='ref_parameter' value='{{urldecode(http_build_query(@$_GET))}}'/>
                    @if($hide_form)
                        <input type="hidden" name="hide_form" value='{!! serialize($hide_form) !!}'>
                    @endif

                    <div class="box-body" id="parent-form-area">

                        <div class="form-group form-datepicker header-group-0 " id="form-group-fecha_emision" style="">
                            <label class="control-label col-sm-2">Fecha Actual
                                <span class="text-danger" title="Este campo es requerido">*</span>
                            </label>

                            <div class="col-sm-2">
                                <div class="input-group">
                                    <span class="input-group-addon open-datetimepicker"><a><i class="fa fa-calendar "></i></a></span>
                                    <input type="date" title="Fecha Emisi&oacute;n" readonly="" required="" class="form-control notfocus input_date" name="fecha_emision" id="fecha_emision" value="{{date('Y-m-d')}}">
                                </div>
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>

                            <label class="control-label col-sm-2">Hora Actual
                                <span class="text-danger" title="Este campo es requerido">*</span>
                            </label>

                            <div class="col-sm-2">
                                <div class="input-group">
                                    <span class="input-group-addon open-datetimepicker"><a><i class="fa fa-calendar "></i></a></span>
                                    <input type="time" title="Hora Emisi&oacute;n" readonly="" required="" class="form-control notfocus input_date" name="hora_emision" id="hora_emision" value="{{date('H:i')}}">
                                </div>
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>

                            <label class="control-label col-sm-1">Pedido #
                                <span class="text-danger" title="Este campo es requerido">*</span>
                            </label>

                            <div class="col-sm-2">
                                <input type="number" step="1" title="Secuencial" required="" class="form-control" name="secuencial" id="secuencial" value="{{$facturero->inicio_facturero}}" readonly>
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <hr>

                        <!--Datos del cliente-->
                        <div class="input-group">

                        </div>

                        @if(!$clientes)
                        <div class="form-group header-group-0 " id="form-group-cliente_id" style="">
                            <label class="control-label col-sm-2">Buscar Cliente
                                <span class="text-danger" title="Este campo es requerido">*</span>
                            </label>


                            <div class="col-sm-3">
                                <div class="input-group">
                                    <input id="hiddenCliente" type="hidden" name="cliente_id" value="">
                                    <input id="hiddenConsumidor" type="hidden" name="consumidor_final_id" value="{{$cliente ? $cliente->id : $consumidor_final->id}}">
                                    <input name="cliente" type="text" id="txtCliente" placeholder="Ingrese los Nombres, raz&oacute;n social, c&eacute;dula o ruc" oninvalid="this.setCustomValidity('Debe ingresar el nombre o la raz&oacute;n social del cliente')" oninput="setCustomValidity('')" class="form-control" >
                                    <div class="input-group-btn">
                                    <button id="btnAgregarCliente" data-toggle="modal" data-target="#modalAgregarCliente" class="btn btn-default" >
                                        <i class="fa fa-search "></i>
                                    </button>
                                    </div>
                                </div>
                                <div class="text-danger">
                                </div><!--end-text-danger-->
                            </div>


                            <label class="control-label col-sm-2">C&eacute;dula/Ruc
                                <span class="text-danger" title="Este campo es requerido">*</span>
                            </label>

                            <div class="col-sm-2">
                                <input type="text" title="Identificacion" required="" class="form-control" name="identificacion" id="identificacion" readonly required>
                            </div>
                        </div>

                        <div class="form-group header-group-0 " id="form-group-total_sin_impuestos" style="">
                            <label class="control-label col-sm-2">Nombres
                                <span class="text-danger" title="Este campo es requerido">*</span>
                            </label>

                            <div class="col-sm-3">
                                <input type="text" title="Nombres" required="" class="form-control" name="nombres" id="nombres" >
                            </div>

                            <label class="control-label col-sm-1">Tel&eacute;fono
                                <span class="text-danger" title="Este campo es requerido">*</span>
                            </label>

                            <div class="col-sm-2">
                                <input type="text" title="Tel&eacute;fono" required=""  class="form-control" name="telefono" id="telefono" >
                            </div>

                            <label class="control-label col-sm-1">Correo
                                <span class="text-danger" title="Este campo es requerido">*</span>
                            </label>

                            <div class="col-sm-2">
                                <input type="text" title="Correo" required="" class="form-control" name="correo" id="correo" >
                            </div>
                        </div>

                        <div class="form-group header-group-0" id="form-group-total_sin_impuestos" style="">
                            <label class="control-label col-sm-2">Direcci&oacute;n
                                <span class="text-danger" title="Este campo es requerido">*</span>
                            </label>

                            <div class="col-sm-3">
                                <input type="text" title="Direcci&oacute;n" required="" class="form-control" name="direccion" id="direccion" >
                            </div>
                        </div>
                        <!--Fin Datos del cliente-->
                        <hr>
                        @else
                            <input id="hiddenCliente" type="hidden" name="cliente_id" value="{{$clientes[0]->id}}">
                        @endif


                        <!--Detalle factura-->

                        <div class="form-group">
                            <div class="form-group header-group-0 col-md-6" id="form-group-tipo" style="">
                                <label class="control-label col-sm-3">Categor&iacute;a
                                    <span class="text-danger" title="Este campo es requerido">*</span>
                                </label>

                                <div class="col-sm-9">
                                    <select class="form-control" id="categoria" data-value=""  name="categoria" onchange="getProductosCategoria(this)">
                                        <option value="">** Selecciona una categor&iacute;a</option>
                                        @foreach($categorias as $categoria)
                                            <option value="{{$categoria->id}}">{{$categoria->nombre}}</option>
                                        @endforeach
                                    </select>
                                    <div class="text-danger"></div>
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group pull-right">
                                    <input type="text" class="form-control" id="txtAgregarArticuloPedido" list="listaBusquedaProductoPedido" placeholder="Buscar un art&iacute;culo..." onkeydown="if (event.keyCode == 13) return false;" tabindex="1">
                                    <div class="input-group-btn">
                                        <button id="btnAgregarArticuloPedido" class="btn btn-default">
                                            <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12" id="listaBusquedaProductoPedido">


                            </div>
                        </div>

                        <div class="col-md-12 pre-scrollable div-detalle-comprobante form_venta_contado form_factura_credito form_devolucion_contado form_compra_contado">
                            <table width="100%" class="table-condensed table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th class="text-center" width="100px">C&oacute;digo</th>
                                    <th class="text-center">Art&iacute;culo</th>
                                    <th class="text-center" width="80px">Precio</th>
                                    <th class="text-center" width="75px">Cantidad</th>
                                    <th class="text-center" width="80px">Subtotal</th>
                                    <th class="text-center" width="80px">IVA</th>
                                    <th class="text-center" width="100px">Total</th>

                                </tr>
                                </thead>
                                <tbody id="tablaProductos">

                                </tbody>
                            </table>

                            <div class="col-md-6 form_venta_contado form_factura_credito form_devolucion_contado form_compra_contado">

                            </div>
                            <div class="col-md-6 form_venta_contado form_factura_credito form_devolucion_contado form_compra_contado">
                                <table class="table-condensed pull-right table-striped">
                                    <thead id="tablaResumen">

                                    </thead>
                                </table>
                            </div>

                        </div>

                        <input id="hiddenListado" type="hidden" name="listadoArticulos">
                        <div class="form-group header-group-0 " id="form-group-observacion" style="">
                            <label class="control-label col-sm-2">Observacion
                            </label>
                            <div class="col-sm-10">
                                <textarea name="observacion" id="observacion" maxlength="5000" class="form-control" rows="5"></textarea>
                                <div class="text-danger"></div>
                                <p class="help-block"></p>
                            </div>
                        </div>

                    </div><!-- /.box-body -->

                    <div class="box-footer" style="background: #F5F5F5">

                        <div class="form-group">
                            <label class="control-label col-sm-2"></label>
                            <div class="col-sm-10">

                                        <a href='{{CRUDBooster::mainpath("?".http_build_query(@$_GET)) }}' class='btn btn-default'><i
                                                class='fa fa-chevron-circle-left'></i> {{cbLang("button_back")}}</a>

                                        <input type="submit" name="submit" value='Guardar' class='btn btn-success'>

                            </div>
                        </div>


                    </div><!-- /.box-footer-->

                </form>

            </div>
        </div>
    </div><!--END AUTO MARGIN-->

    <div class="modal fade" id="modalAgregarCliente" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>
                        <b>Buscar cliente</b>
                        <span class="pull-right">
                        <button id="btnRegistrarCliente" data-toggle="modal" data-target="#modalRegistrarCliente" class="btn btn-success">
							<i class="fa fa-user-plus" aria-hidden="true"></i> Agregar nuevo cliente
                        </button>
					</span>
                    </h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label class="sr-only">Buscar cliente</label>
                            <div class="row">
                                <div class="col-md-10">
                                    <input id="txtBuscadorCliente" class="form-control" type="text" name="BuscadorCliente" placeholder="Buscar cliente...">
                                </div>
                                <div class="col-md-2">
                                    <button id="btnBuscarCliente" type="submit" class="btn btn-warning btn-block">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>
                            <hr/>
                            <table width="100%" class="table-condensed table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th width="5%">ID</th>
                                    <th width="20%">Nombre / Raz&oacute;n Social</th>
                                    <th width="20%">RUC</th>
                                    <th width="20%">Telefono</th>
                                    <th width="20%">Mail</th>
                                    <th width="20%">Direcci&oacute;n</th>
                                    <th width="5%"></th>
                                </tr>
                                </thead>
                                <tbody id="tablaClientes">

                                </tbody>
                            </table>
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <button id="btnOkModalAgregarCliente" class="btn btn-success" data-dismiss="modal">
                        Confirmar
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalRegistrarCliente" role="dialog">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>
                        <b>Agregar nuevo cliente</b>
                        <span class="pull-right">
                            <button class="btn btn-success btn-sm text-center" data-dismiss="modal">
                                <i class="fa fa-close" aria-hidden="true"></i> <b>Cerrar</b>
                            </button>
					    </span>
                    </h4>
                </div>
                <form onsubmit="btnRegistrarNuevoCliente(event);" id="formNuevoCliente" name="formNuevoCliente" action="">
                    <div class="modal-body">
                        <div class="box-body" id="parent-form-area">

                                <div class="form-group header-group-0 col-sm-12" id="form-group-tipo" style="">
                                    <label class="control-label col-sm-3">Tipo
                                        <span class="text-danger" title="Este campo es requerido">*</span>
                                    </label>

                                    <div class="col-sm-8">
                                        <select class="form-control" id="tipo" data-value="" required=""  name="tipo" onchange="getIdentificacion(this)">
                                            <option value="">** Selecciona un Tipo</option>
                                            @foreach($tipo_documentos as $tipo)
                                                <option value="{{$tipo->id}}">{{$tipo->nombres}}</option>
                                            @endforeach
                                        </select>
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group header-group-0 col-sm-12" id="form-group-identificacion" style="">
                                    <label class="control-label col-sm-3">
                                        Identificaci&oacute;n
                                        <span class="text-danger" title="Este campo es requerido">*</span>
                                    </label>

                                    <div class="col-sm-8">
                                        <input type="text" title="Identificaci&oacute;n" required="" placeholder="Ingrese la identificaci&oacute;n" maxlength="255" class="form-control" name="identificacion2" id="identificacion2" value="" onKeyPress="return soloNumeros(event)" >

                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>

                                    </div>
                                </div>
                                <div class="form-group header-group-0 col-sm-12" id="form-group-nombres" style="">
                                    <label class="control-label col-sm-3">
                                        Nombres
                                        <span class="text-danger" title="Este campo es requerido">*</span>
                                    </label>

                                    <div class="col-sm-8">
                                        <input type="text" title="Nombres" required="" placeholder="Ingrese la nombre" maxlength="255" class="form-control" name="nombres" id="nombres" value="">

                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>

                                    </div>
                                </div>
                                <div class="form-group header-group-0 col-sm-12" id="form-group-correo" style="">
                                    <label class="control-label col-sm-3">Correo
                                        <span class="text-danger" title="Este campo es requerido">*</span>
                                    </label>

                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                            <input type="email" name="correo" style="display: none">
                                            <input type="email" title="Correo" required="" placeholder="Ingrese el correo" maxlength="255" class="form-control" name="correo" id="correo" value="">
                                        </div>
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group header-group-0 col-sm-12" id="form-group-telefono" style="">
                                    <label class="control-label col-sm-3">Tel&eacute;fono
                                        <span class="text-danger" title="Este campo es requerido">*</span>
                                    </label>

                                    <div class="col-sm-8">
                                        <input type="number" step="1" title="Tel&eacute;fono" required="" placeholder="Ingrese el telefono" min="1" class="form-control" name="telefono" id="telefono" value="">
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group header-group-0 col-sm-12" id="form-group-direccion" style="">
                                    <label class="control-label col-sm-3">Direcci&oacute;n
                                        <span class="text-danger" title="Este campo es requerido">*</span>
                                    </label>
                                    <div class="col-sm-8">
                                        <textarea name="direccion" id="direccion" required="" placeholder="Ingrese la direcci&oacute;n" maxlength="255" class="form-control" rows="2"></textarea>
                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary btn-block">
                            <i class="fa fa-plus" aria-hidden="true"></i> Guardar
                        </button>
                    </div>
                </form>

            </div>
        </div>
    </div>



        <script type="text/javascript">

        $("#formNuevoCliente").validate({

            rules:{

              nombres:{
                required:true
              },
              tipo:{
                required:true
              },
              identificacion2:{
                required:true
              },
              ruc:{
                required:true
              },
              telefono:{
                required:true,
                digits:true,
                maxlength:10,
                minlength:10
              },
              email:{
                required:true
              },
              direccion:{
                required:true
              }
            },
            messages:{

              nombres:{
                required:"Ingrese el nombre porfavor"
              },
              identificacion2:{
                required:"Ingrese la identificacion porfavor"
              },
              ruc:{
                required:"Ingrese el ruc porfavor"
              },
              telefono:{
                required:"Por favor  ingrese el telefono",
                digits:"El telefono debe tener 10 numeros",
                maxlength:"El telefono debe teber maximo 10 digitos",
                minlength:"El telefono debe tener minimo 10 digitos"
              },
              correo:{
                required:"Ingrese el email porfavor"
              },
              direccion:{
                required:"Ingrese la direcci&oacute;n porfavor"
              },
              tipo:{
                required:"Ingrese el tipo porfavor"
              }

            }
          });

            </script>

            <style media="screen">
            .error{
            color:red;
            font-size: 16px;
            }
            input.error, select.error{
            border: 2px solid red;
            }
            </style>
@endsection
