<?php namespace App\Http\Controllers;

	use App\Models\Categorias;
    use App\Models\Clientes;
    use App\Models\CmsUser;
    use App\Models\ConsumidorFinal;
    use App\Models\Empresa;
    use App\Models\Factura;
    use App\Models\FacturaDetalle;
    use App\Models\Facturero;
    use App\Models\FormasPago;
    use App\Models\Pedido;
    use App\Models\PedidoDetalles;
    use App\Models\Productos;
    use App\Models\TipoDocumento;
    use Illuminate\Support\Facades\Auth;
    use Illuminate\Support\Facades\Route;
    use Illuminate\Support\Facades\Schema;
    use Psy\Util\Str;
    use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminPedidosController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "pedidos";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
            $this->col[] = ["label"=>"Secuencial Cliente","name"=>"secuencial_cliente"];
            $this->col[] = ["label"=>"Codigo de pedido","name"=>"codigo"];
            $this->col[] = ["label"=>"Cliente Id","name"=>"cliente_id","join"=>"clientes,nombres"];
            $this->col[] = ["label"=>"Empresa Id","name"=>"empresa_id","join"=>"empresas,nombre"];
			$this->col[] = ["label"=>"Fecha Emision","name"=>"fecha_emision"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Código','name'=>'codigo','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Cliente Id','name'=>'cliente_id','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datatable'=>'clientes,id'];
			$this->form[] = ['label'=>'Consumidor Final','name'=>'consumidor_final_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'consumidor_final,id'];
			$this->form[] = ['label'=>'Secuencial','name'=>'secuencial','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Observacion','name'=>'observacion','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Fecha Emision','name'=>'fecha_emision','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Total Valor','name'=>'total_valor','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Estado','name'=>'estado','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Código','name'=>'codigo','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Cliente','name'=>'cliente_id','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datatable'=>'cliente,id'];
			//$this->form[] = ['label'=>'Consumidor Final','name'=>'consumidor_final_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'consumidor_final,id'];
			//$this->form[] = ['label'=>'Secuencial','name'=>'secuencial','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Observacion','name'=>'observacion','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Fecha Emision','name'=>'fecha_emision','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Total Valor','name'=>'total_valor','type'=>'money','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Estado','name'=>'estado','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
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
            /*if (! CRUDBooster::isCreate() && $this->global_privilege == false || $this->button_add == false) {
                CRUDBooster::insertLog(cbLang('log_try_add', ['module' => CRUDBooster::getCurrentModule()->name]));
                CRUDBooster::redirect(CRUDBooster::adminPath(), cbLang("denied_access"));
            }*/

            $cmsuser=CmsUser::findOrFail(CRUDBooster::myId());

            $page_title = cbLang("add_data_page_title", ['module' => CRUDBooster::getCurrentModule()->name]);
            $page_menu = Route::getCurrentRoute()->getActionName();
            $command = 'add';
            if ($cmsuser->id_cms_privileges==4){
                $clientes=Clientes::where('identificacion',$cmsuser->identificacion)->get();
            }

            $tipo_documentos = TipoDocumento::get();
            $categorias = Categorias::orderBy('nombre')->get();

            return view('pedido', compact('page_title', 'page_menu', 'command', 'clientes', 'tipo_documentos', 'categorias'));
        }


        public function postAddSave() {
            $this->cbLoader();
            /*if (! CRUDBooster::isCreate() && $this->global_privilege == false) {
                CRUDBooster::insertLog(trans('crudbooster.log_try_add_save', [
                    'name' => \http\Client\Request::input($this->title_field),
                    'module' => CRUDBooster::getCurrentModule()->name,
                ]));
                CRUDBooster::redirect(CRUDBooster::adminPath(), trans("crudbooster.denied_access"));
            }*/
            $this->validation();
            $this->input_assignment();
            if (Schema::hasColumn($this->table, 'created_at')) {
                $this->arr['created_at'] = date('Y-m-d H:i:s');
            }

            //Permite recibir toda la informacion ingresada en el formulario de facturacion
            $request=Request()->request->all();
            $cliente=Clientes::findOrFail($request['cliente_id']);
            $user=CmsUser::where('identificacion',$cliente->identificacion)->first();
            $pedido=Pedido::where('cliente_id',$cliente->id)->orderBy('id','desc')->first();
            $secuencial=1;
            if ($pedido)$secuencial=$pedido->secuencial_cliente+1;


            $pedido_cabecera = new Pedido();

            if ($user)$pedido_cabecera->user_id=$user->id;

            $pedido_cabecera->codigo=Str::random(15);
            $pedido_cabecera->cliente_id=$request['cliente_id'];
            $pedido_cabecera->empresa_id=1;
            $pedido_cabecera->secuencial_cliente=$secuencial;
            $pedido_cabecera->fecha_emision=$request['fecha_emision'];
            $pedido_cabecera->observacion=$request['observacion'];
            $pedido_cabecera->total_sin_impuestos=0;
            $pedido_cabecera->subtotal_12=0;
            $pedido_cabecera->subtotal_0=0;
            $pedido_cabecera->subtotal_no_iva=0;
            $pedido_cabecera->subtotal_extento_iva=0;
            $pedido_cabecera->total_ice=0;
            $pedido_cabecera->total_iva=0;
            $pedido_cabecera->total_descuento=0;
            $pedido_cabecera->total_propina=0;
            $pedido_cabecera->total_valor=0;
            $pedido_cabecera->created_by_id=$user->id;
            $pedido_cabecera->updated_by_id=$user->id;
            $pedido_cabecera->saveOrFail();


            $detalles = json_decode($request['listadoArticulos']);

            $subtotal = 0;
            $totaliva = 0;
            foreach ($detalles as $detalle) {
                $producto = Productos::where('codigo',$detalle->codigo)->first();
                $pedido_detalles = new PedidoDetalles();
                $pedido_detalles->producto_id = $producto->id;
                $pedido_detalles->usuario_id = 1;
                $pedido_detalles->pedido_id = $pedido_cabecera->id;
                $pedido_detalles->fecha = $request['fecha_emision'];
                //$pedido_detalles->tasa_iva_id =
                $pedido_detalles->precio_unitario = $detalle->precio;
                $pedido_detalles->cantidad = $detalle->cantidad;
                $pedido_detalles->subtotal = $detalle->subTotal;
                $pedido_detalles->iva = $detalle->iva;
                $pedido_detalles->total = $detalle->total;
                $pedido_detalles->saveOrFail();

                $subtotal = $subtotal + $detalle->subTotal;
                $totaliva = $totaliva + $detalle->iva;

                //resta de articulos del inventario

                $producto->stock = $producto->stock - $detalle->cantidad;
                $producto->save();
            }
            $totalfactura = $subtotal + $totaliva;
            $pedido_cabecera->subtotal_12=$subtotal;
            $pedido_cabecera->total_iva=$totaliva;
            $pedido_cabecera->total_valor=$totalfactura;
            $pedido_cabecera->saveOrFail();

            return redirect('/admin/pedidos/detail/'.$pedido_cabecera->id)->with(['message' =>  'Agregado correctamente', 'message_type' => 'success']);
        }

        public function getDetail($id) {
            //Create an Auth
            if(!CRUDBooster::isRead() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {
                CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
            }

            $data = [];
            //$data['page_title'] = 'Detail Data';


            $pedido = Pedido::findOrFail($id);
            $dataDetallePed = PedidoDetalles::where('pedido_id',$pedido->id)->get();
            $empresa = Empresa::first();


            //Please use view method instead view method from laravel
            return $this->view('/verPedido', compact('pedido','dataDetallePed', 'empresa'));
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
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after add public static function called
	    | ----------------------------------------------------------------------
	    | @id = last insert id
	    |
	    */
	    public function hook_after_add($id) {
	        //Your code here

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
	        //Your code here

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



	    //By the way, you can still create your own method in here... :)


	}
