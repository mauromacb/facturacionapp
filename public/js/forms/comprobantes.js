$(document).ready(function (){
	var fechaEmision = new Date();
	var day = ("0" + fechaEmision.getDate()).slice(-2);
	var month = ("0" + (fechaEmision.getMonth() + 1)).slice(-2);
	fecha = fechaEmision.getFullYear()+"-"+(month)+"-"+(day);
	$("#txtFecha").val(fecha);
	$(".form_devolucion_contado").hide();
	$(".form_compra_contado").hide();
	$(".form_factura_credito").hide();
	$(".form_venta_contado").show();
	$(".cliente-required").prop('required',true);
	$(".proveedor-required").prop('required',false);

	actualizarTablaArticulos();

	$("#txtAgregarArticulo").focus();

	$( "#selectTipoComprobante" ).change(function() {
		var tipo_comprobante_id = $( "#selectTipoComprobante" ).val();
		switch(tipo_comprobante_id) {
			case "1":
				// Venta al contado
				$(".form_devolucion_contado").hide();
				$(".form_compra_contado").hide();
				$(".form_factura_credito").hide();
				$(".form_venta_contado").show();

				$(".cliente-required").prop('required',true);
				$(".factura-required").prop('required',false);
				$(".proveedor-required").prop('required',false);
				break;
			case "2":
				// Devolución al contado
				$(".form_compra_contado").hide();
				$(".form_venta_contado").hide();
				$(".form_factura_credito").hide();
				$(".form_devolucion_contado").show();

				$(".cliente-required").prop('required',true);
				$(".factura-required").prop('required',false);
				$(".proveedor-required").prop('required',false);
				break;
			case "3":
				// Factura de venta a crédito
				$(".form_devolucion_contado").hide();
				$(".form_compra_contado").hide();
				$(".form_venta_contado").hide();
				$(".form_factura_credito").show();

				$(".cliente-required").prop('required',true);
				$(".factura-required").prop('required',true);
				$(".proveedor-required").prop('required',false);
				break;
			case "5":
				// Compra al contado
				$(".form_devolucion_contado").hide();
				$(".form_venta_contado").hide();
				$(".form_factura_credito").hide();
				$(".form_compra_contado").show();

				$(".cliente-required").prop('required',false);
				$(".factura-required").prop('required',false);
				$(".proveedor-required").prop('required',true);
				break;
			default:
				break;
		}
	});

	$("#txtAgregarArticulo").on('keyup', function(e){
		e.preventDefault();
		if(e.keyCode == 13){
			$("#btnAgregarArticulo").click();
		}
		var str = $("#txtAgregarArticulo").val();
		if(str != ""){
			//url = "{{ url('productos/buscar?texto=') }}" + str;
			url = buscar_prodcto_url + str;
			delay(function(){
				$.get(url , function( data ){
					$("#divData").html( data );
					var productos = data["productos"];
					if(productos.length == 0){
						$("#listaBusquedaProducto").html("");
					}else{
						$("#listaBusquedaProducto").html("");
						for (i = 0; i < productos.length; i++) {
							$("#listaBusquedaProducto").append(
								$('<option></option>').val(productos[i].codigo).html(productos[i].nombre + ", " + productos[i].stock + " unidades.")
							);
						}
					}
				});
			}, 600);
		}else{
			$("#listaBusquedaProducto").html("");
		}
	});

	$('#btnAgregarArticulo').on('click', function(e) {
		e.preventDefault();
		var producto_codigo = $("#txtAgregarArticulo").val();
		if(producto_codigo.length > 2){
			//url = "{{ url('productos/buscar?texto=') }}" + producto_codigo;
			url = buscar_prodcto_url + producto_codigo;
			$.get(url , function( data ){
				agregarArticulo(data);
			});
		}
	});

    $("#txtAgregarArticuloPedido").on('keyup', function(e){
        e.preventDefault();
        if(e.keyCode == 13){
            $("#btnAgregarArticuloPedidoLista").click();
        }
        var str = $("#txtAgregarArticuloPedido").val();
         str += '&categoria='+$("#categoria").val();
        if(str != ""){
            //url = "{{ url('productos/buscar?texto=') }}" + str;
            url = buscar_prodcto_url + str;
            delay(function(){
                $.get(url , function( data ){
                    $("#divData").html( data );
                    var productos = data["productos"];
                    if(productos.length == 0){
                        $("#listaBusquedaProductoPedido").html("");
                    }else{
                        let imagen='';
                        $("#listaBusquedaProductoPedido").html("");
                        for (i = 0; i < productos.length; i++) {
                            if (productos[i].imagen == null){
                                imagen='../../vendor/crudbooster/avatar.jpg';
                            }else{
                                imagen='../../'+productos[i].imagen;
                            }
                            $(document).find('#listaBusquedaProductoPedido').get(0).innerHTML +=
                                '<div class="col-md-3">\n' +
                                ' <div class="panel panel-success">\n' +
                                '  <div class="panel-heading" align="center">\n' +
                                '   <h3 class="panel-title">'+productos[i].nombre+'</h3>\n' +
                                '  </div>\n' +
                                '  <div class="panel-body" align="center">\n' +
                                '    <p class="card-text">'+productos[i].codigo +'</p>\n' +
                                '    <img class="card-img-top img-responsive" src="../../'+imagen+'">\n' +
                                '    <p class="card-text">'+productos[i].stock +' unidades</p>\n' +
                                '    <div class="btn btn-primary" onclick="agregarArticuloPedido(\''+productos[i].codigo +'\')"><i class="fa fa-cart-plus" aria-hidden="true" ></i> Agregar</div>\n' +
                                '  <div>\n' +
                                ' </div>\n' +
                                '</div>';
                        }
                    }
                });
            }, 600);
        }else{
            $("#listaBusquedaProductoPedido").html("");
        }
    });

    $('#btnAgregarArticuloPedido').on('click', function(e) {
        e.preventDefault();
        var producto_codigo = $("#txtAgregarArticuloPedido").val();
        if(producto_codigo.length > 2){
            //url = "{{ url('productos/buscar?texto=') }}" + producto_codigo;
            url = buscar_prodcto_url + producto_codigo;
            $.get(url , function( data ){
                agregarArticulo(data);
            });
        }
    });



	$("#formNuevoComprobante").on('submit', function(e){
		if(! confirm("¿Guardar comprobante?, una vez ingresado al sistema no podrá ser modificado.")){
			e.preventDefault();
		}
		var articulos = JSON.stringify(listadoArticulos);
		$("#hiddenListado").val(articulos);
		alert(requestData);
		//var url = "{{ url('comprobantes/vistaPrevia') }}";
		var url = comprobante_vistaprevia_url;
		var request;

		request = $.ajax({
			url: url,
			method: "POST",
			dataType: "json",
			data: { data: requestData }
		});
	});

	$(document).on('blur', '.td_cantidad', function() {
		var cantidad = $(this).val();
		var codigo = $(this).parents("tr").find(".td_codigo").html();
		if(cantidad > $(this).prop('max')){
			cantidad = $(this).prop('max');
			$(this).val(cantidad);
		}
		$(this).one('focus');
		modificarStock(codigo, cantidad);
	});

	$(document).on('blur', '.td_precio', function() {
		var precio = $(this).val();
		var codigo = $(this).parents("tr").find(".td_codigo").html();
		precio = precio.replace(",", ".");
		modificarPrecio(codigo, precio);
		$(this).focus();
	});

	$('#btnAgregarCliente').on('click', function(e) {
		e.preventDefault();
		$("#hiddenCliente").val("");
		var txtcliente = $("#txtCliente").val();
		$("#txtCliente").val("");
		$("#txtDireccion").val("");
		$("#txtRut").val("");
		$("#txtCliente").prop( "disabled", false );
		//$("#txtDireccion").prop( "disabled", false );
		$("#txtRut").prop( "disabled", false );

		$("#txtBuscadorCliente").focus();
        $("#txtBuscadorCliente").val(txtcliente);

	});

	$('#btnBuscarCliente').on('click', function(e) {
		e.preventDefault();
		var str = $("#txtBuscadorCliente").val();
		//var url = "{{ url('clientes/buscar?texto=') }}" + str;
		var url = buscar_cliente_url + str;
		$.get(url , function( data ){
			var clientes = data["clientes"]["data"];
			$("#tablaClientes").html("");
			for(i=0; i < clientes.length; i++){
			    console.log(clientes[i]["nombres"]);
				var cliente_id = clientes[i]["id"];
				var cliente_nombre = clientes[i]["nombres"];
                var cliente_telefono = clientes[i]["telefono"];

				var cliente_apellido = "";
				if(clientes[i]["apellido"] != null){
					var cliente_apellido = clientes[i]["apellido"];
				}

				var cliente_rut = "-";
				if(clientes[i]["identificacion"] != null){
					var cliente_rut = clientes[i]["identificacion"];
				}

				var cliente_mail = "-";
				if(clientes[i]["correo"] != null){
					var cliente_mail = clientes[i]["correo"];
				}

				var cliente_direccion = "-";
				if(clientes[i]["direccion"] != null){
					var cliente_direccion = clientes[i]["direccion"];
				}
				console.log(cliente_nombre);

				$("#tablaClientes").append(
					$('<tr></tr>').html(
                        "</td><td class='td_cliente_nombre'>"
                        + cliente_nombre + " " + cliente_apellido
                        + "</td><td class='td_cliente_rut'>"
                        + cliente_rut
                        + "<td class='td_cliente_id'>"
						+ cliente_id
                        + "<td class='td_cliente_telefono'>"
                        + cliente_telefono
                        + "</td><td class='td_cliente_mail'>"
                        + cliente_mail
						+ "</td><td class='td_cliente_direccion'>"
							+ cliente_direccion
                        + "</td><td>"
							+ "<a class='btn-agregar-cliente btn btn-sm btn-block btn-link'>"
								+ '<i class="fa fa-share" aria-hidden="true"></i>'
							+ "</a>"
						+ "</td>"

					)
				);
			}
		});
	});

	$(document).on('click', '.btn-agregar-cliente', function() {
		var cliente_id = $(this).parents("tr").find(".td_cliente_id").html();
		var cliente_nombre = $(this).parents("tr").find(".td_cliente_nombre").html();
        var cliente_telefono = $(this).parents("tr").find(".td_cliente_telefono").html();
		var cliente_direccion = $(this).parents("tr").find(".td_cliente_direccion").html();
		var cliente_rut = $(this).parents("tr").find(".td_cliente_rut").html();
        var cliente_correo = $(this).parents("tr").find(".td_cliente_mail").html();

		$("#hiddenCliente").val(cliente_id);

		$("#txtCliente").val(cliente_nombre);
		$("#txtCliente").prop( "disabled", true );
		$("#txtDireccion").val(cliente_direccion);
		//$("#txtDireccion").prop( "disabled", true );
		$("#txtRut").val(cliente_rut);
		$("#txtRut").prop( "disabled", true );

        $("#identificacion").val(cliente_rut);
        $("#identificacion").prop( "disabled", true );
		$("#nombres").val(cliente_nombre);
        $("#telefono").val(cliente_telefono);
        $("#direccion").val(cliente_direccion);
        $("#correo").val(cliente_correo);


		$("#btnOkModalAgregarCliente").click();
	});
});



var listadoArticulos = [
/*
   {'Id':'1','Username':'Ray','FatherName':'Thompson'},
   {'Id':'2','Username':'Steve','FatherName':'Johnson'}
*/
]
function agregarArticulo(data){
	if(data["productos"].length > 0){
		var producto = data["productos"][0];
		var producto_codigo = producto["codigo"];
		var productoBuscado = buscarArticuloEnListado(producto_codigo);
		if( productoBuscado == null){
			var producto_stock = producto["stock"];
			if(producto_stock > 0){
				var producto_nombre = producto["nombre"];
				var producto_precio = producto["valor"];
				var producto_iva = producto["iva"]["tasa"]/100;
				var producto_cantidad = 1;

				listadoArticulos[listadoArticulos.length] = {
					'codigo':producto_codigo,
					'nombre': producto_nombre,
					'precio': producto_precio,
					'stock': producto_stock,
					'cantidad': producto_cantidad,
					'subTotal': (producto_precio * producto_cantidad).toFixed(2),
					'iva': (producto_precio * producto_iva).toFixed(2),
					'total': (producto_precio * producto_cantidad + producto_precio * producto_iva * producto_cantidad).toFixed(2),
				};
			}
		}else{
			if(productoBuscado["cantidad"] < productoBuscado["stock"]){
				productoBuscado["cantidad"]++;
				console.log(productoBuscado);

                var producto_precio = productoBuscado["precio"];
                var producto_iva = producto["iva"]["tasa"]/100;
                var producto_cantidad = productoBuscado["cantidad"];

                productoBuscado["subTotal"]=  (producto_precio * producto_cantidad).toFixed(2);
                productoBuscado["iva"]=((producto_precio * producto_cantidad) * producto_iva).toFixed(2);
                productoBuscado["total"]=(producto_precio * producto_cantidad + producto_precio * producto_iva * producto_cantidad).toFixed(2);
			}
		}
		actualizarTablaArticulos();
		$("#txtAgregarArticulo").val("");
	}
}



function modificarStock(codigo, cantidad){
	var articulo = buscarArticuloEnListado(codigo);
	if(articulo != null){
		articulo["cantidad"] = cantidad;
		articulo["subTotal"] = parseFloat(cantidad * articulo["precio"]);
		articulo["iva"] = parseFloat(cantidad * articulo["precio"] * 0.22);
		articulo["total"] = parseFloat(articulo["subTotal"] + articulo["iva"]).toFixed(2);

		actualizarTablaArticulos();
	}
}

function modificarPrecio(codigo, precio){
	var articulo = buscarArticuloEnListado(codigo);
	if(articulo != null){
		articulo["precio"] = precio;
		articulo["subTotal"] = parseFloat(articulo["cantidad"] * precio);
		articulo["iva"] = parseFloat(articulo["cantidad"] * precio * 0.22);
		articulo["total"] = parseFloat(articulo["subTotal"] + articulo["iva"]).toFixed(2);

		actualizarTablaArticulos();
	}
}

function buscarArticuloEnListado(codigo){
	var i = 0;
	var articuloBuscado = null;
	while(i < listadoArticulos.length && articuloBuscado == null){
		if(listadoArticulos[i]["codigo"] == codigo){
			articuloBuscado = listadoArticulos[i];
		}
		i++;
	}
	console.log(articuloBuscado);
	return articuloBuscado;
}

function descartarArticulo(posicion){
	listadoArticulos.splice(posicion, 1);
	actualizarTablaArticulos();
}




function actualizarTablaArticulos(){
	$("#tablaProductos").html("");
	var resumen_sub_total = 0;
	var resumen_iva = 0;
	var resumen_total = 0;

	for(i=0; i < listadoArticulos.length; i++){
		$("#tablaProductos").append(
			$('<tr></tr>').html(
				"<td class='td_codigo'>"
					+ listadoArticulos[i]["codigo"]
				+ "</td><td>"
					+ listadoArticulos[i]["nombre"]
				+ "</td><td>"
					+ listadoArticulos[i]["precio"]
					+ "<input type='hidden' class='td_precio' value="+ listadoArticulos[i]["precio"] + ">"
				+ "</td><td>"
					+ "<input type='number' class='form-control input-sm td_cantidad' value="+ listadoArticulos[i]["cantidad"] + " max=" + listadoArticulos[i]["stock"] + " min=1>"
				+ "</td><td class='td_subTotal'>"
					+ listadoArticulos[i]["subTotal"]
				+ "</td><td class='td_iva'>"
					+ listadoArticulos[i]["iva"]
				+ "</td><td class='td_total'>"
					+ listadoArticulos[i]["total"]
				+ "</td><td class='text-center'>"
					+ "<a style='color: #8a8686;' onclick='descartarArticulo(" + i + ");''><i class='fa fa-trash'></i></a>"
				+ "</td>"
			)
		);
		resumen_sub_total += parseFloat(listadoArticulos[i]["subTotal"]);
		resumen_iva += parseFloat(listadoArticulos[i]["iva"]);
		resumen_total += parseFloat(listadoArticulos[i]["total"]);
	}


	$("#tablaResumen").html("");
	$("#tablaResumen").append(
		$('<tr></tr>').html(
			"<th width='120px'>Sub Total</th><td>"
			+ resumen_sub_total.toFixed(2)
			+ "<input type='hidden' name='total' id='total' value='"+resumen_total.toFixed(2)+"'></td>"
		)
	);
	$("#tablaResumen").append(
		$('<tr></tr>').html(
			"<th>IVA</th><td>"
			+ resumen_iva.toFixed(2)
			+ "</td>"
		)
	);
	$("#tablaResumen").append(
		$('<tr></tr>').html(
			"<th>Total</th><td>"
			+ resumen_total.toFixed(2)
			+ "</td>"
		)
	);
}

var delay = (function(){
  var timer = 0;
  return function(callback, ms){
    clearTimeout (timer);
    timer = setTimeout(callback, ms);
  };
})();

function check(element){
    if(element.checked) {
        $('#identificacion').attr('readonly', true);
        $('#nombres').attr('readonly', true);
        $('#telefono').attr('readonly', true);
        $('#direccion').attr('readonly', true);
        $('#correo').attr('readonly', true);
        document.querySelector('#txtCliente').disabled = true;
        document.querySelector('#btnAgregarCliente').disabled = true;
        document.querySelector('#identificacion').value = '99999999';
        document.querySelector('#nombres').value = 'CONSUMIDOR FINAL';
        document.querySelector('#telefono').value = '0999999999';
        document.querySelector('#direccion').value = 'DIRECCION';
        document.querySelector('#correo').value = 'correo@correo.com';
        $("#hiddenCliente").val('');
        $("#hiddenConsumidor").val(1);
        /*var url = "{{ url('/clientes/buscar_consumidor_final') }}";

        $.get(url , function( data ){
            var clientes = data["clientes"]["data"];
            $("#tablaClientes").html("");
            for(i=0; i < clientes.length; i++){
                console.log(clientes[i]["nombres"]);
                var cliente_id = clientes[i]["id"];
                var cliente_nombre = clientes[i]["nombres"];

                var cliente_apellido = "";
                if(clientes[i]["apellido"] != null){
                    var cliente_apellido = clientes[i]["apellido"];
                }

                var cliente_rut = "-";
                if(clientes[i]["identificacion"] != null){
                    var cliente_rut = clientes[i]["identificacion"];
                }

                var cliente_mail = "-";
                if(clientes[i]["correo"] != null){
                    var cliente_mail = clientes[i]["correo"];
                }

                var cliente_direccion = "-";
                if(clientes[i]["direccion"] != null){
                    var cliente_direccion = clientes[i]["direccion"];
                }
                console.log(cliente_nombre);

                $("#tablaClientes").append(
                    $('<tr></tr>').html(
                        "</td><td class='td_cliente_nombre'>"
                        + cliente_nombre + " " + cliente_apellido
                        + "</td><td class='td_cliente_rut'>"
                        + cliente_rut
                        + "<td class='td_cliente_id'>"
                        + cliente_id
                        + "</td><td class='td_cliente_mail'>"
                        + cliente_mail
                        + "</td><td class='td_cliente_direccion'>"
                        + cliente_direccion
                        + "</td><td>"
                        + "<a class='btn-agregar-cliente btn btn-sm btn-block btn-link'>"
                        + '<i class="fa fa-share" aria-hidden="true"></i>'
                        + "</a>"
                        + "</td>"

                    )
                );
            }
        });*/

    }else{
        $('#identificacion').attr('readonly', false);
        $('#nombres').attr('readonly', false);
        $('#telefono').attr('readonly', false);
        $('#direccion').attr('readonly', false);
        $('#correo').attr('readonly', false);
        document.querySelector('#txtCliente').disabled = false;
        document.querySelector('#btnAgregarCliente').disabled = false;
        document.querySelector('#identificacion').value = '';
        document.querySelector('#nombres').value = '';
        document.querySelector('#telefono').value = '';
        document.querySelector('#direccion').value = '';
        document.querySelector('#correo').value = '';
        $("#hiddenConsumidor").val('');
    }


}

function devolucionfunc(){
    if (document.getElementById("total").value>0) {
        var totalFactura = parseFloat(document.getElementById("total").value).toFixed(2);
        var pago = parseFloat(document.getElementById("pago").value).toFixed(2);
        console.log(totalFactura +'-'+ pago);
        if (parseFloat(totalFactura-pago).toFixed(2)<0){
            document.getElementById("devolucion").value = parseFloat((totalFactura-pago)*-1).toFixed(2);
        }else{
            document.getElementById("devolucion").value = parseFloat(totalFactura-pago).toFixed(2);
        }

    }
}


document.querySelectorAll('.printbutton').forEach(function(element) {
    element.addEventListener('click', function() {
        print();
    });
});


function getIdentificacionForm(selectObject) {
    var value = selectObject.value;
    if (value==1) {
        $('input#identificacion').attr('maxLength', '10').keypress(limitMe);
        str = $('input#identificacion').val();
        if(str.length>10) {
            $('input#identificacion').val(str.slice(0, -(str.length-10)));
        }
    }
    if (value==2) {
        $('input#identificacion').attr('maxLength', '13').keypress(limitMe);
        str = $('input#identificacion').val();
        if(str.length>13) {
            $('input#identificacion').val(str.slice(0, -(str.length-13)));
        }
    }
    if (value==3) {
        $('input#identificacion').attr('maxLength', '30').keypress(limitMe);
    }
}

function getIdentificacion(selectObject) {
    var value = selectObject.value;
    if (value==1) {
        $('input#identificacion2').attr('maxLength', '10').keypress(limitMe);
        $('input#identificacion2').attr('minlength', '10').keypress(limitMe);
        str = $('input#identificacion2').val();
        if(str.length>10) {
            $('input#identificacion2').val(str.slice(0, -(str.length-10)));
        }
    }
    if (value==2) {
        $('input#identificacion2').attr('maxLength', '13').keypress(limitMe);
        $('input#identificacion2').attr('minlength', '13').keypress(limitMe);
        str = $('input#identificacion2').val();
        if(str.length>13) {
            $('input#identificacion2').val(str.slice(0, -(str.length-13)));
        }
    }
    if (value==3) {
        $('input#identificacion2').attr('maxLength', '30').keypress(limitMe);
        $('input#identificacion2').attr('minlength', '10').keypress(limitMe);
    }

}

function getIdentificacionEdit(selectObject) {
    var value = selectObject.value;
    if (value==1) {
        $('input#identificacion').attr('maxLength', '10').keypress(limitMe);
        $('input#identificacion').attr('minlength', '10').keypress(limitMe);
        str = $('input#identificacion').val();
        if(str.length>10) {
            $('input#identificacion').val(str.slice(0, -(str.length-10)));
        }
    }
    if (value==2) {
        $('input#identificacion').attr('maxLength', '13').keypress(limitMe);
        $('input#identificacion').attr('minlength', '13').keypress(limitMe);
        str = $('input#identificacion').val();
        if(str.length>13) {
            $('input#identificacion').val(str.slice(0, -(str.length-13)));
        }
    }
    if (value==3) {
        $('input#identificacion').attr('maxLength', '30').keypress(limitMe);
        $('input#identificacion').attr('minlength', '10').keypress(limitMe);
    }

}


$('#btnRegistrarNuevoCliente').on('click', function(e) {

    alert('dsdds');
    e.preventDefault();
    var str = $("#identificacion2").val();
    //var url = "{{ url('facturas/registrar/cliente?texto=') }}" + str;
    var url = buscar_cliente_url + str;
    $.get(url , function( data ){
        var clientes = data["clientes"]["data"];
        $("#tablaClientes").html("");
        for(i=0; i < clientes.length; i++){
            console.log(clientes[i]["nombres"]);
            var cliente_id = clientes[i]["id"];
            var cliente_nombre = clientes[i]["nombres"];
            var cliente_telefono = clientes[i]["telefono"];

            var cliente_apellido = "";
            if(clientes[i]["apellido"] != null){
                var cliente_apellido = clientes[i]["apellido"];
            }

            var cliente_rut = "-";
            if(clientes[i]["identificacion"] != null){
                var cliente_rut = clientes[i]["identificacion"];
            }

            var cliente_mail = "-";
            if(clientes[i]["correo"] != null){
                var cliente_mail = clientes[i]["correo"];
            }

            var cliente_direccion = "-";
            if(clientes[i]["direccion"] != null){
                var cliente_direccion = clientes[i]["direccion"];
            }
            console.log(cliente_nombre);

            $("#tablaClientes").append(
                $('<tr></tr>').html(
                    "</td><td class='td_cliente_nombre'>"
                    + cliente_nombre + " " + cliente_apellido
                    + "</td><td class='td_cliente_rut'>"
                    + cliente_rut
                    + "<td class='td_cliente_id'>"
                    + cliente_id
                    + "<td class='td_cliente_telefono'>"
                    + cliente_telefono
                    + "</td><td class='td_cliente_mail'>"
                    + cliente_mail
                    + "</td><td class='td_cliente_direccion'>"
                    + cliente_direccion
                    + "</td><td>"
                    + "<a class='btn-agregar-cliente btn btn-sm btn-block btn-link'>"
                    + '<i class="fa fa-share" aria-hidden="true"></i>'
                    + "</a>"
                    + "</td>"

                )
            );
        }
    });
});


function limitMe(e) {
    if (e.keyCode == 8) { return true; }
    return this.value.length < $(this).attr("maxLength");
}

function soloNumeros(e){
    if ($('#tipo').val()!=3) {
        var key = window.Event ? e.which : e.keyCode
        return (key >= 48 && key <= 57)
    }
}


function getProductosCategoria(selectObject) {
    var value = selectObject.value;
    var str = selectObject.value;
    if(str != ""){
        //url = "{{ url('productos/buscar?texto=') }}" + str;
        url = buscar_prodcto_categoria + str;
        delay(function(){
            $.get(url , function( data ){
                $("#divData").html( data );
                var productos = data["productos"];
                if(productos.length == 0){
                    $("#listaBusquedaProductoPedido").html("");
                }else{
                    $("#listaBusquedaProductoPedido").html("");
                    for (i = 0; i < productos.length; i++) {
                        let imagen='';
                        if (productos[i].imagen==null){
                            imagen='../../vendor/crudbooster/avatar.jpg';
                        }else{
                            imagen='../../'+productos[i].imagen;
                        }

                        $(document).find('#listaBusquedaProductoPedido').get(0).innerHTML +=
                            '<div class="col-md-3">\n' +
                            ' <div class="panel panel-success">\n' +
                            '  <div class="panel-heading" align="center">\n' +
                            '   <h3 class="panel-title">'+productos[i].nombre+'</h3>\n' +
                            '   <center>Precio: '+productos[i].valor+'</center>\n' +
                            '  </div>\n' +
                            '  <div class="panel-body" align="center">\n' +
                            '    <p class="card-text">'+productos[i].codigo +'</p>\n' +
                            '    <img src="../../'+imagen+'" height="120">\n' +
                            '    <p class="card-text">'+productos[i].stock +' unidades</p>\n' +
                            '    <div class="btn btn-primary" onclick="agregarArticuloPedido(\''+productos[i].codigo +'\')"><i class="fa fa-cart-plus" aria-hidden="true" ></i> Agregar</div>\n' +
                            '  <div>\n' +
                            ' </div>\n' +
                            '</div>';
                    }
                }
            });
        }, 600);
    }else{
        $("#listaBusquedaProductoPedido").html("");
    }

}
