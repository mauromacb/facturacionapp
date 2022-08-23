<?php namespace App\Http\Controllers;

	use App\Models\Clientes;
    use App\Models\ConsumidorFinal;
    use App\Models\Empresa;
    use App\Models\Factura;
    use App\Models\FacturaDetalle;
    use App\Models\Facturero;
    use App\Models\FormasPago;
    use App\Models\Productos;
    use App\Models\TipoDocumento;
    use Auth;
    use Illuminate\Support\Facades\Route;
    use Illuminate\Support\Facades\Schema;
    use Illuminate\Support\Facades\Validator;
    use Session;
	use http\Client\Request;
	use DB;
	use CRUDBooster;

    class AdminFacturasController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "10";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = false;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "facturas";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Secuencial","name"=>"secuencial"];
			$this->col[] = ["label"=>"Cliente","name"=>"cliente_id","join"=>"clientes,nombres"];
			$this->col[] = ["label"=>"Consumidor Final","name"=>"consumidor_final_id","join"=>"consumidor_final,nombres"];
			$this->col[] = ["label"=>"Forma Pago","name"=>"forma_pago_id","join"=>"formas_pagos,forma_pago"];
			$this->col[] = ["label"=>"Fecha Emisión","name"=>"fecha_emision"];
			$this->col[] = ["label"=>"Subtotal 12","name"=>"subtotal_12"];
			$this->col[] = ["label"=>"Total Iva","name"=>"total_iva"];
			$this->col[] = ["label"=>"Total Valor","name"=>"total_valor"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Fecha Emisión','name'=>'fecha_emision','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Secuencial','name'=>'secuencial','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Cliente','name'=>'cliente_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'clientes,nombres'];
			$this->form[] = ['label'=>'Forma Pago','name'=>'forma_pago_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'formas_pagos,forma_pago'];
			$this->form[] = ['label'=>'Total Sin Impuestos','name'=>'total_sin_impuestos','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Subtotal 12','name'=>'subtotal_12','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Subtotal 0','name'=>'subtotal_0','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Subtotal No Iva','name'=>'subtotal_no_iva','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Subtotal Extento Iva','name'=>'subtotal_extento_iva','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Total Ice','name'=>'total_ice','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Total Iva','name'=>'total_iva','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Total Descuento','name'=>'total_descuento','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Total Propina','name'=>'total_propina','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Total Valor','name'=>'total_valor','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Observacion','name'=>'observacion','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Fecha Emision','name'=>'fecha_emision','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Secuencial','name'=>'secuencial','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Cliente','name'=>'cliente_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'clientes,nombres'];
			//$this->form[] = ['label'=>'Forma Pago','name'=>'forma_pago_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'formas_pagos,forma_pago'];
			//$this->form[] = ['label'=>'Total Sin Impuestos','name'=>'total_sin_impuestos','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Subtotal 12','name'=>'subtotal_12','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Subtotal 0','name'=>'subtotal_0','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Subtotal No Iva','name'=>'subtotal_no_iva','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Subtotal Extento Iva','name'=>'subtotal_extento_iva','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Total Ice','name'=>'total_ice','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Total Iva','name'=>'total_iva','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Total Descuento','name'=>'total_descuento','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Total Propina','name'=>'total_propina','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Total Valor','name'=>'total_valor','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Observacion','name'=>'observacion','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
			# OLD END FORM

			/*
	        | ----------------------------------------------------------------------
	        | Sub Module
	        | ----------------------------------------------------------------------
			| @label          = Label of action
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        |
	        */
	        $this->sub_module = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------
	        | @label       = Label of action
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        |
	        */
	        $this->addaction = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add More Button Selected
	        | ----------------------------------------------------------------------
	        | @label       = Label of action
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button
	        | Then about the action, you should code at actionButtonSelected method
	        |
	        */
	        $this->button_selected = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------
	        | @message = Text of message
	        | @type    = warning,success,danger,info
	        |
	        */
	        $this->alert        = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add more button to header button
	        | ----------------------------------------------------------------------
	        | @label = Name of button
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        |
	        */
	        $this->index_button = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.
	        |
	        */
	        $this->table_row_color = array();


	        /*
	        | ----------------------------------------------------------------------
	        | You may use this bellow array to add statistic at dashboard
	        | ----------------------------------------------------------------------
	        | @label, @count, @icon, @color
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add javascript at body
	        | ----------------------------------------------------------------------
	        | javascript code in the variable
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ----------------------------------------------------------------------
	        | Include HTML Code before index table
	        | ----------------------------------------------------------------------
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;



	        /*
	        | ----------------------------------------------------------------------
	        | Include HTML Code after index table
	        | ----------------------------------------------------------------------
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;



	        /*
	        | ----------------------------------------------------------------------
	        | Include Javascript File
	        | ----------------------------------------------------------------------
	        | URL of your javascript each array
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add css style at body
	        | ----------------------------------------------------------------------
	        | css code in the variable
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;



	        /*
	        | ----------------------------------------------------------------------
	        | Include css File
	        | ----------------------------------------------------------------------
	        | URL of your css each array
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();


	    }



        public function getAdd()
        {

            $this->cbLoader();
            if (! CRUDBooster::isCreate() && $this->global_privilege == false || $this->button_add == false) {
                CRUDBooster::insertLog(cbLang('log_try_add', ['module' => CRUDBooster::getCurrentModule()->name]));
                CRUDBooster::redirect(CRUDBooster::adminPath(), cbLang("denied_access"));
            }

            $page_title = cbLang("add_data_page_title", ['module' => CRUDBooster::getCurrentModule()->name]);
            $page_menu = Route::getCurrentRoute()->getActionName();
            $command = 'add';
            $clientes=Clientes::limit('10')->pluck('nombres', 'id')->toArray();
            $formapagos=FormasPago::where('activo_id',1)->limit('10')->pluck('forma_pago', 'id')->toArray();
            $facturero = Facturero::first();
            $consumidor_final = ConsumidorFinal::first();
            $tipo_documentos = TipoDocumento::get();

            /*$this->addSelectTable("clientes","id",[
                "table"         => "clientes",
                "value_option"  => "id",
                "display_option" => "nombres",
                "sql_condition" => "nombres = 'Cliente  k3mv7TjHjD kyE473Qf53'"
            ]);*/

            return view('facturacion', compact('page_title', 'page_menu', 'command', 'clientes', 'formapagos','facturero','consumidor_final','tipo_documentos'));
        }

        public function postAddSave() {
            $this->cbLoader();
            if (! CRUDBooster::isCreate() && $this->global_privilege == false) {
                CRUDBooster::insertLog(trans('crudbooster.log_try_add_save', [
                    'name' => Request::input($this->title_field),
                    'module' => CRUDBooster::getCurrentModule()->name,
                ]));
                CRUDBooster::redirect(CRUDBooster::adminPath(), trans("crudbooster.denied_access"));
            }
            $this->validation();
            $this->input_assignment();
            if (Schema::hasColumn($this->table, 'created_at')) {
                $this->arr['created_at'] = date('Y-m-d H:i:s');
            }

            //Permite recibir toda la informacion ingresada en el formulario de facturacion
            $request=Request()->request->all();
            //dd('entro aqui ');


            //dd($request);


            //dd($detalles);


            $factura_cabecera = new Factura();

            $factura_cabecera->cliente_id=$request['cliente_id'];
            $factura_cabecera->consumidor_final_id=$request['consumidor_final_id'];
            $factura_cabecera->empresa_id=1;
            $factura_cabecera->secuencial=$request['secuencial'];
            $factura_cabecera->forma_pago_id=$request['forma_pago_id'];
            $factura_cabecera->fecha_emision=$request['fecha_emision'];
            $factura_cabecera->observacion=$request['observacion'];
            $factura_cabecera->total_sin_impuestos=0;
            $factura_cabecera->subtotal_12=0;
            $factura_cabecera->subtotal_0=0;
            $factura_cabecera->subtotal_no_iva=0;
            $factura_cabecera->subtotal_extento_iva=0;
            $factura_cabecera->total_ice=0;
            $factura_cabecera->total_iva=0;
            $factura_cabecera->total_descuento=0;
            $factura_cabecera->total_propina=0;
            $factura_cabecera->total_valor=0;
            $factura_cabecera->created_by_id=1;
            $factura_cabecera->updated_by_id=1;
            $factura_cabecera->saveOrFail();


            $detalles = json_decode($request['listadoArticulos']);

            $subtotal = 0;
            $totaliva = 0;
            foreach ($detalles as $detalle) {
                $producto = Productos::where('codigo',$detalle->codigo)->first();
                $factura_detalles = new FacturaDetalle();
                $factura_detalles->producto_id = $producto->id;
                $factura_detalles->usuario_id = 1;
                $factura_detalles->factura_id = $factura_cabecera->id;
                $factura_detalles->fecha = $request['fecha_emision'];
                //$factura_detalles->tasa_iva_id =
                $factura_detalles->precio_unitario = $detalle->precio;
                $factura_detalles->cantidad = $detalle->cantidad;
                $factura_detalles->subtotal = $detalle->subTotal;
                $factura_detalles->iva = $detalle->iva;
                $factura_detalles->total = $detalle->total;
                $factura_detalles->saveOrFail();

                $subtotal = $subtotal + $detalle->subTotal;
                $totaliva = $totaliva + $detalle->iva;

                //resta de articulos del inventario

                $producto->stock = $producto->stock - $detalle->cantidad;
                $producto->save();
            }
            $totalfactura = $subtotal + $totaliva;
            $factura_cabecera->subtotal_12=$subtotal;
            $factura_cabecera->total_iva=$totaliva;
            $factura_cabecera->total_valor=$totalfactura;
            $factura_cabecera->saveOrFail();

            $secuencial=Facturero::first();
            $secuencial->inicio_facturero=$secuencial->inicio_facturero+1;
            $secuencial->save();

            return redirect('/admin/facturas/detail/'.$factura_cabecera->id)->with(['message' =>  'Agregado correctamente', 'message_type' => 'success']);
        }

        public function getEdit($id) {
            //Create an Auth
            if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {
                CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
            }

            dd('edit');
            $data = [];
            $data['page_title'] = 'Edit Data';
            $data['row'] = DB::table('products')->where('id',$id)->first();

            //Please use view method instead view method from laravel
            return $this->view('custom_edit_view',$data);
        }


        public function getDetail($id) {
            //Create an Auth
            if(!CRUDBooster::isRead() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {
                CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
            }

            $data = [];
            //$data['page_title'] = 'Detail Data';


            $factura = Factura::findOrFail($id);
            $dataDetalleFact = FacturaDetalle::where('factura_id',$factura->id)->get();
            $empresa = Empresa::first();


            //Please use view method instead view method from laravel
            return $this->view('/verfacturacion', compact('factura','dataDetalleFact', 'empresa'));
        }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for button selected
	    | ----------------------------------------------------------------------
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here

	    }


	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate query of index result
	    | ----------------------------------------------------------------------
	    | @query = current sql query
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate row of index table html
	    | ----------------------------------------------------------------------
	    |
	    */
	    public function hook_row_index($column_index,&$column_value) {
	    	//Your code here
	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate data input before add data is execute
	    | ----------------------------------------------------------------------
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {


	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after add public static function called
	    | ----------------------------------------------------------------------
	    | @id = last insert id
	    |
	    */
	    public function hook_after_add($id) {
	        dd('fin');

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate data input before update data is execute
	    | ----------------------------------------------------------------------
	    | @postdata = input post data
	    | @id       = current id
	    |
	    */
	    public function hook_before_edit(&$postdata,$id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_after_edit($id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_before_delete($id) {
	        $factura = Factura::where('id',$id)->where('anulado',0)->first();
	        $factura->anulado=1;
	        $factura->save();

            $detalles = FacturaDetalle::where('factura_id',$factura->id)->get();

            foreach ($detalles as $detalle) {
                $producto = Productos::findOrFail($detalle->producto_id);
                $producto->stock = $producto->stock + $detalle->cantidad;
                $producto->save();
            }

            return redirect('/admin/facturas')->with(['message' =>  'Anulado correctamente', 'message_type' => 'success']);
	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }

        public function buscador(Request $request){
            $nombres = Clientes::where("nombres",'like',$request->texto."%")->take(10)->get();
            return view("facturacion",compact("nombres"));
        }


        public function registrarCliente(\Illuminate\Http\Request $request){
            $this->cbLoader();
            /*if (! CRUDBooster::isCreate() && $this->global_privilege == false) {
                CRUDBooster::insertLog(cbLang('log_try_add_save', [
                    'name' => \Illuminate\Support\Facades\Request::input($this->title_field),
                    'module' => CRUDBooster::getCurrentModule()->name,
                ]));
                CRUDBooster::redirect(CRUDBooster::adminPath(), cbLang("denied_access"));
            }*/

            $row = Clientes::where('identificacion',$request->identificacion2)->first();

            if (empty($row)) {
                $cliente = new Clientes();
                $cliente->identificacion = $request->identificacion2;
                $cliente->tipo_documento_id = $request->tipo;
                $cliente->nombres = $request->nombres;
                $cliente->correo = $request->correo;
                $cliente->telefono = $request->telefono;
                $cliente->direccion = $request->direccion;
                $cliente->save();

                return response()->json([
                    'cab' => 'Exitoso',
                    'message' => 'El cliente fue agregado exitosamente',
                    'message_type' => 'success',
                    'clientes' => $cliente,
                ]);
            }else{
                return response()->json([
                    'cab' => '!',
                    'message' => 'El cliente ya existe',
                    'message_type' => 'warning',
                    'clientes' => $row,
                ]);
            }
        }

        //By the way, you can still create your own method in here... :)

        public function validation($id = null)
        {

            $request_all = \Illuminate\Support\Facades\Request::all();
            $array_input = [];
            foreach ($this->data_inputan as $di) {
                $ai = [];
                $name = $di['name'];

                if (! isset($request_all[$name])) {
                    continue;
                }

                if ($di['type'] != 'upload') {
                    if (@$di['required']) {
                        $ai[] = 'required';
                    }
                }

                if ($di['type'] == 'upload') {
                    if ($id) {
                        $row = \Illuminate\Support\Facades\DB::table($this->table)->where($this->primary_key, $id)->first();
                        if ($row->{$di['name']} == '') {
                            $ai[] = 'required';
                        }
                    }
                }

                if (@$di['min']) {
                    $ai[] = 'min:'.$di['min'];
                }
                if (@$di['max']) {
                    $ai[] = 'max:'.$di['max'];
                }
                if (@$di['image']) {
                    $ai[] = 'image';
                }
                if (@$di['mimes']) {
                    $ai[] = 'mimes:'.$di['mimes'];
                }
                $name = $di['name'];
                if (! $name) {
                    continue;
                }

                if ($di['type'] == 'money') {
                    $request_all[$name] = preg_replace('/[^\d-]+/', '', $request_all[$name]);
                }

                if ($di['type'] == 'child') {
                    $slug_name = str_slug($di['label'], '');
                    foreach ($di['columns'] as $child_col) {
                        if (isset($child_col['validation'])) {
                            //https://laracasts.com/discuss/channels/general-discussion/array-validation-is-not-working/
                            if (strpos($child_col['validation'], 'required') !== false) {
                                $array_input[$slug_name.'-'.$child_col['name']] = 'required';

                                str_replace('required', '', $child_col['validation']);
                            }

                            $array_input[$slug_name.'-'.$child_col['name'].'.*'] = $child_col['validation'];
                        }
                    }
                }

                if (@$di['validation']) {

                    $exp = explode('|', $di['validation']);
                    if ($exp && count($exp)) {
                        foreach ($exp as &$validationItem) {
                            if (substr($validationItem, 0, 6) == 'unique') {
                                $parseUnique = explode(',', str_replace('unique:', '', $validationItem));
                                $uniqueTable = ($parseUnique[0]) ?: $this->table;
                                $uniqueColumn = ($parseUnique[1]) ?: $name;
                                $uniqueIgnoreId = ($parseUnique[2]) ?: (($id) ?: '');

                                //Make sure table name
                                $uniqueTable = CB::parseSqlTable($uniqueTable)['table'];

                                //Rebuild unique rule
                                $uniqueRebuild = [];
                                $uniqueRebuild[] = $uniqueTable;
                                $uniqueRebuild[] = $uniqueColumn;
                                if ($uniqueIgnoreId) {
                                    $uniqueRebuild[] = $uniqueIgnoreId;
                                } else {
                                    $uniqueRebuild[] = 'NULL';
                                }

                                //Check whether deleted_at exists or not
                                if (CB::isColumnExists($uniqueTable, 'deleted_at')) {
                                    $uniqueRebuild[] = CB::findPrimaryKey($uniqueTable);
                                    $uniqueRebuild[] = 'deleted_at';
                                    $uniqueRebuild[] = 'NULL';
                                }
                                $uniqueRebuild = array_filter($uniqueRebuild);
                                $validationItem = 'unique:'.implode(',', $uniqueRebuild);
                            }
                        }
                    } else {
                        $exp = [];
                    }

                    $validation = implode('|', $exp);

                    $array_input[$name] = $validation;
                } else {
                    $array_input[$name] = implode('|', $ai);
                }
            }

            $validator = Validator::make($request_all, $array_input);

            if ($validator->fails()) {
                $message = $validator->messages();
                $message_all = $message->all();

                if (Request::ajax()) {
                    $res = response()->json([
                        'message' => cbLang('alert_validation_error', ['error' => implode(', ', $message_all)]),
                        'message_type' => 'warning',
                    ])->send();
                    exit;
                } else {
                    $res = redirect()->back()->with("errors", $message)->with([
                        'message' => cbLang('alert_validation_error', ['error' => implode(', ', $message_all)]),
                        'message_type' => 'warning',
                    ])->withInput();
                    \Session::driver()->save();
                    $res->send();
                    exit;
                }
            }
        }


    }
