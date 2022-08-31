<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
    <!--  -->
    <!-- Your html goes here -->
    <div class='panel panel-default'>
        <div class='panel-heading'>CATALOGO DE PRODUCTOS</div>
        <div class='panel-body'>
            <!--  -->
            <form class="row" style="display:flex; align-items: end;">
                <div class="col-sm-10">
                  <label for="">Ingrese nombre del producto:</label>  
                  <input type="text" name='nombre' class="form-control" value="{{$searched}}">
                </div>
                <div class="col-sm-2">
                  <button type="submit" class="btn btn-primary">Buscar</button>
                </div>
            </form>
            <br>
            <br>
            <br>
            <!--  -->
            <div class='form-group col-sm-12'>
                @foreach($productos as $detalle)
                    <div class="col-md-3">
                        <div class="panel panel-default">
                            <div class="panel-heading" align="center">
                                <p class="panel-title" style="font-size: 13px;"><b>{{$detalle->nombre}}</b><p>
                            </div>
                            <div class="panel-heading">
                                <center> <h3 class="panel-title" >Precio: {{$detalle->valor}}</h3></center>
                            </div>
                            <div class="panel-body" align="center">
                                <p class="card-text">{{$detalle->codigo}}</p>
                                @if(empty($detalle->imagen))
                                    <img class="img-responsive" src="{{url('vendor/crudbooster/avatar.jpg')}}" >
                                @else
                                    <img src="{{url($detalle->imagen)}}" height="100">

                                @endif
                                <p class="card-text">{{$detalle->stock}} unidades</p>
                            </div>
                        </div>
                    </div>

                @endforeach
            </div>
            <!-- etc .... -->
        </div>
    </div>

@endsection
