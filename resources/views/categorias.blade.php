@extends('crudbooster::admin_template')





@section('content')
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript">

        var buscar_cliente_url = "{{ url('clientes/buscar?texto=') }}";
        var buscar_prodcto_url = "{{ url('productos/buscar?texto=') }}";
        var comprobante_vistaprevia_url = "{{ url('comprobantes/vistaPrevia') }}";
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
                $action = (@$row) ? CRUDBooster::mainpath("edit-save/$row->id") : CRUDBooster::mainpath("add-save");
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
                        <div class="modal-body">
                            <div class="box-body" id="parent-form-area">


                                <div class="form-group header-group-0 col-sm-12" id="form-group-identificacion" style="">
                                    <label class="control-label col-sm-3">
                                        Nombre
                                        <span class="text-danger" title="Este campo es requerido">*</span>
                                    </label>

                                    <div class="col-sm-8">
                                        <input type="text" title="Nombre" required="" minlength="10" class="form-control" name="nombre" id="nombre" value="" onKeyPress="return soloNumeros(event)" >

                                        <div class="text-danger"></div>
                                        <p class="help-block"></p>

                                    </div>
                                </div>
                               </div>
                        </div>


                    </form>

            </div>


        </div>
    </div><!--END AUTO MARGIN-->

@endsection
