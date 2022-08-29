<?php namespace App\Http\Controllers;

    use CB;
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
    use Illuminate\Support\Str;
    use Session;
    use Illuminate\Support\Facades\Request;

	use CRUDBooster;
    use Illuminate\Support\Facades\DB;

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


        public function getIndex()
        {


            $this->cbLoader();

            $module = CRUDBooster::getCurrentModule();

            if (! CRUDBooster::isView() && $this->global_privilege == false) {
                CRUDBooster::insertLog(cbLang('log_try_view', ['module' => $module->name]));
                CRUDBooster::redirect(CRUDBooster::adminPath(), cbLang('denied_access'));
            }

            if (request('parent_table')) {
                $parentTablePK = CB::pk(g('parent_table'));
                $data['parent_table'] = DB::table(request('parent_table'))->where($parentTablePK, request('parent_id'))->first();
                if (request('foreign_key')) {
                    $data['parent_field'] = request('foreign_key');
                } else {
                    $data['parent_field'] = CB::getTableForeignKey(g('parent_table'), $this->table);
                }

                if ($data['parent_field']) {
                    foreach ($this->columns_table as $i => $col) {
                        if ($col['name'] == $data['parent_field']) {
                            unset($this->columns_table[$i]);
                        }
                    }
                }
            }

            $data['table'] = $this->table;
            $data['table_pk'] = CB::pk($this->table);
            $data['page_title'] = $module->name;
            $data['page_description'] = cbLang('default_module_description');
            $data['date_candidate'] = $this->date_candidate;
            $data['limit'] = $limit = (request('limit')) ? request('limit') : $this->limit;

            $tablePK = $data['table_pk'];
            $table_columns = CB::getTableColumns($this->table);
            $result = DB::table($this->table)->select(DB::raw($this->table.".".$this->primary_key));

            if (request('parent_id')) {
                $table_parent = $this->table;
                $table_parent = CRUDBooster::parseSqlTable($table_parent)['table'];
                $result->where($table_parent.'.'.request('foreign_key'), request('parent_id'));
            }

            $this->hook_query_index($result);

            if (in_array('deleted_at', $table_columns)) {
                $result->where($this->table.'.deleted_at', null);
            }

            $alias = [];
            $join_alias_count = 0;
            $join_table_temp = [];
            $table = $this->table;
            $columns_table = $this->columns_table;
            foreach ($columns_table as $index => $coltab) {

                $join = @$coltab['join'];
                $join_where = @$coltab['join_where'];
                $join_id = @$coltab['join_id'];
                $field = @$coltab['name'];
                $join_table_temp[] = $table;

                if (! $field) {
                    continue;
                }

                if (strpos($field, ' as ') !== false) {
                    $field = substr($field, strpos($field, ' as ') + 4);
                    $field_with = (array_key_exists('join', $coltab)) ? str_replace(",", ".", $coltab['join']) : $field;
                    $result->addselect(DB::raw($coltab['name']));
                    $columns_table[$index]['type_data'] = 'varchar';
                    $columns_table[$index]['field'] = $field;
                    $columns_table[$index]['field_raw'] = $field;
                    $columns_table[$index]['field_with'] = $field_with;
                    $columns_table[$index]['is_subquery'] = true;
                    continue;
                }

                if (strpos($field, '.') !== false) {
                    $result->addselect($field);
                } else {
                    $result->addselect($table.'.'.$field);
                }

                $field_array = explode('.', $field);

                if (isset($field_array[1])) {
                    $field = $field_array[1];
                    $table = $field_array[0];
                } else {
                    $table = $this->table;
                }

                if ($join) {

                    $join_exp = explode(',', $join);

                    $join_table = $join_exp[0];
                    $joinTablePK = CB::pk($join_table);
                    $join_column = $join_exp[1];
                    $join_alias = str_replace(".", "_", $join_table);

                    if (in_array($join_table, $join_table_temp)) {
                        $join_alias_count += 1;
                        $join_alias = $join_table.$join_alias_count;
                    }
                    $join_table_temp[] = $join_table;

                    $result->leftjoin($join_table.' as '.$join_alias, $join_alias.(($join_id) ? '.'.$join_id : '.'.$joinTablePK), '=', DB::raw($table.'.'.$field.(($join_where) ? ' AND '.$join_where.' ' : '')));
                    $result->addselect($join_alias.'.'.$join_column.' as '.$join_alias.'_'.$join_column);

                    $join_table_columns = CRUDBooster::getTableColumns($join_table);
                    if ($join_table_columns) {
                        foreach ($join_table_columns as $jtc) {
                            $result->addselect($join_alias.'.'.$jtc.' as '.$join_alias.'_'.$jtc);
                        }
                    }

                    $alias[] = $join_alias;
                    $columns_table[$index]['type_data'] = CRUDBooster::getFieldType($join_table, $join_column);
                    $columns_table[$index]['field'] = $join_alias.'_'.$join_column;
                    $columns_table[$index]['field_with'] = $join_alias.'.'.$join_column;
                    $columns_table[$index]['field_raw'] = $join_column;

                    @$join_table1 = $join_exp[2];
                    @$joinTable1PK = CB::pk($join_table1);
                    @$join_column1 = $join_exp[3];
                    @$join_alias1 = $join_table1;

                    if ($join_table1 && $join_column1) {

                        if (in_array($join_table1, $join_table_temp)) {
                            $join_alias_count += 1;
                            $join_alias1 = $join_table1.$join_alias_count;
                        }

                        $join_table_temp[] = $join_table1;

                        $result->leftjoin($join_table1.' as '.$join_alias1, $join_alias1.'.'.$joinTable1PK, '=', $join_alias.'.'.$join_column);
                        $result->addselect($join_alias1.'.'.$join_column1.' as '.$join_column1.'_'.$join_alias1);
                        $alias[] = $join_alias1;
                        $columns_table[$index]['type_data'] = CRUDBooster::getFieldType($join_table1, $join_column1);
                        $columns_table[$index]['field'] = $join_column1.'_'.$join_alias1;
                        $columns_table[$index]['field_with'] = $join_alias1.'.'.$join_column1;
                        $columns_table[$index]['field_raw'] = $join_column1;
                    }

                } else {

                    if(isset($field_array[1])) {
                        $result->addselect($table.'.'.$field.' as '.$table.'_'.$field);
                        $columns_table[$index]['type_data'] = CRUDBooster::getFieldType($table, $field);
                        $columns_table[$index]['field'] = $table.'_'.$field;
                        $columns_table[$index]['field_raw'] = $table.'.'.$field;
                    }else{
                        $result->addselect($table.'.'.$field);
                        $columns_table[$index]['type_data'] = CRUDBooster::getFieldType($table, $field);
                        $columns_table[$index]['field'] = $field;
                        $columns_table[$index]['field_raw'] = $field;
                    }

                    $columns_table[$index]['field_with'] = $table.'.'.$field;
                }
            }

            if (request('q')) {
                $result->where(function ($w) use ($columns_table) {
                    foreach ($columns_table as $col) {
                        if (! $col['field_with']) {
                            continue;
                        }
                        if ($col['is_subquery']) {
                            continue;
                        }
                        $w->orwhere($col['field_with'], "like", "%".request("q")."%");
                    }
                });
            }

            if (request('where')) {
                foreach (request('where') as $k => $v) {
                    $result->where($table.'.'.$k, $v);
                }
            }

            $filter_is_orderby = false;
            if (request('filter_column')) {

                $filter_column = request('filter_column');
                $result->where(function ($w) use ($filter_column) {
                    foreach ($filter_column as $key => $fc) {

                        $value = @$fc['value'];
                        $type = @$fc['type'];

                        if ($type == 'empty') {
                            $w->whereNull($key)->orWhere($key, '');
                            continue;
                        }

                        if ($value == '' || $type == '') {
                            continue;
                        }

                        if ($type == 'between') {
                            continue;
                        }

                        switch ($type) {
                            default:
                                if ($key && $type && $value) {
                                    $w->where($key, $type, $value);
                                }
                                break;
                            case 'like':
                            case 'not like':
                                $value = '%'.$value.'%';
                                if ($key && $type && $value) {
                                    $w->where($key, $type, $value);
                                }
                                break;
                            case 'in':
                            case 'not in':
                                if ($value) {
                                    $value = explode(',', $value);
                                    if ($key && $value) {
                                        $w->whereIn($key, $value);
                                    }
                                }
                                break;
                        }
                    }
                });

                foreach ($filter_column as $key => $fc) {
                    $value = @$fc['value'];
                    $type = @$fc['type'];
                    $sorting = @$fc['sorting'];

                    if ($sorting != '') {
                        if ($key) {
                            $result->orderby($key, $sorting);
                            $filter_is_orderby = true;
                        }
                    }

                    if ($type == 'between') {
                        if ($key && $value) {
                            $result->whereBetween($key, $value);
                        }
                    } else {
                        continue;
                    }
                }
            }

            if ($filter_is_orderby == true) {
                $data['result'] = $result->paginate($limit);
            } else {
                if ($this->orderby) {
                    if (is_array($this->orderby)) {
                        foreach ($this->orderby as $k => $v) {
                            if (strpos($k, '.') !== false) {
                                $orderby_table = explode(".", $k)[0];
                                $k = explode(".", $k)[1];
                            } else {
                                $orderby_table = $this->table;
                            }
                            $result->orderby($orderby_table.'.'.$k, $v);
                        }
                    } else {
                        $this->orderby = explode(";", $this->orderby);
                        foreach ($this->orderby as $o) {
                            $o = explode(",", $o);
                            $k = $o[0];
                            $v = $o[1];
                            if (strpos($k, '.') !== false) {
                                $orderby_table = explode(".", $k)[0];
                            } else {
                                $orderby_table = $this->table;
                            }
                            $result->orderby($orderby_table.'.'.$k, $v);
                        }
                    }

                    if(CRUDBooster::me()->id_cms_privileges==4){
                        $result->where($table.'.'.'user_id', CRUDBooster::myId());
                    }

                    $data['result'] = $result->paginate($limit);
                } else {
                    $data['result'] = $result->orderby($this->table.'.'.$this->primary_key, 'desc')->paginate($limit);
                }
            }

            $data['columns'] = $columns_table;

            if ($this->index_return) {
                return $data;
            }

            //LISTING INDEX HTML
            $addaction = $this->data['addaction'];

            if ($this->sub_module) {
                foreach ($this->sub_module as $s) {
                    $table_parent = CRUDBooster::parseSqlTable($this->table)['table'];
                    $addaction[] = [
                        'label' => $s['label'],
                        'icon' => $s['button_icon'],
                        'url' => CRUDBooster::adminPath($s['path']).'?return_url='.urlencode(Request::fullUrl()).'&parent_table='.$table_parent.'&parent_columns='.$s['parent_columns'].'&parent_columns_alias='.$s['parent_columns_alias'].'&parent_id=['.(! isset($s['custom_parent_id']) ? "id" : $s['custom_parent_id']).']&foreign_key='.$s['foreign_key'].'&label='.urlencode($s['label']),
                        'color' => $s['button_color'],
                        'showIf' => $s['showIf'],
                    ];
                }
            }

            $mainpath = CRUDBooster::mainpath();
            $orig_mainpath = $this->data['mainpath'];
            $title_field = $this->title_field;
            $html_contents = [];
            $page = (request('page')) ? request('page') : 1;
            $number = ($page - 1) * $limit + 1;
            foreach ($data['result'] as $row) {
                $html_content = [];

                if ($this->button_bulk_action) {

                    $html_content[] = "<input type='checkbox' class='checkbox' name='checkbox[]' value='".$row->{$tablePK}."'/>";
                }

                if ($this->show_numbering) {
                    $html_content[] = $number.'. ';
                    $number++;
                }

                foreach ($columns_table as $col) {
                    if ($col['visible'] === false) {
                        continue;
                    }

                    $value = @$row->{$col['field']};
                    $title = @$row->{$this->title_field};
                    $label = $col['label'];

                    if (isset($col['image'])) {
                        if ($value == '') {
                            $value = "<a  data-lightbox='roadtrip' rel='group_{{$table}}' title='$label: $title' href='".asset('vendor/crudbooster/avatar.jpg')."'><img width='40px' height='40px' src='".asset('vendor/crudbooster/avatar.jpg')."'/></a>";
                        } else {
                            $pic = (strpos($value, 'http://') !== false) ? $value : asset($value);
                            $value = "<a data-lightbox='roadtrip'  rel='group_{{$table}}' title='$label: $title' href='".$pic."'><img width='40px' height='40px' src='".$pic."'/></a>";
                        }
                    }

                    if (@$col['download']) {
                        $url = (strpos($value, 'http://') !== false) ? $value : asset($value).'?download=1';
                        if ($value) {
                            $value = "<a class='btn btn-xs btn-primary' href='$url' target='_blank' title='Download File'><i class='fa fa-download'></i> Download</a>";
                        } else {
                            $value = " - ";
                        }
                    }

                    if ($col['str_limit']) {
                        $value = trim(strip_tags($value));
                        $value = str_limit($value, $col['str_limit']);
                    }

                    if ($col['nl2br']) {
                        $value = nl2br($value);
                    }

                    if ($col['callback_php']) {
                        foreach ($row as $k => $v) {
                            $col['callback_php'] = str_replace("[".$k."]", $v, $col['callback_php']);
                        }
                        @eval("\$value = ".$col['callback_php'].";");
                    }

                    //New method for callback
                    if (isset($col['callback'])) {
                        $value = call_user_func($col['callback'], $row);
                    }

                    $datavalue = @unserialize($value);
                    if ($datavalue !== false) {
                        if ($datavalue) {
                            $prevalue = [];
                            foreach ($datavalue as $d) {
                                if ($d['label']) {
                                    $prevalue[] = $d['label'];
                                }
                            }
                            if ($prevalue && count($prevalue)) {
                                $value = implode(", ", $prevalue);
                            }
                        }
                    }

                    $html_content[] = $value;
                } //end foreach columns_table

                if ($this->button_table_action):

                    $button_action_style = $this->button_action_style;
                    $html_content[] = "<div class='button_action' style='text-align:right'>".view('crudbooster::components.action', compact('addaction', 'row', 'button_action_style', 'parent_field'))->render()."</div>";

                endif;//button_table_action

                foreach ($html_content as $i => $v) {
                    $this->hook_row_index($i, $v);
                    $html_content[$i] = $v;
                }

                $html_contents[] = $html_content;
            } //end foreach data[result]

            $html_contents = ['html' => $html_contents, 'data' => $data['result']];

            $data['html_contents'] = $html_contents;

            return view("crudbooster::default.index", $data);
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
            $pedido_cabecera->created_by_id=CRUDBooster::myId();
            $pedido_cabecera->updated_by_id=CRUDBooster::myId();
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

        public function save(\Illuminate\Http\Request $request) {

            /*if (! CRUDBooster::isCreate() && $this->global_privilege == false) {
                CRUDBooster::insertLog(trans('crudbooster.log_try_add_save', [
                    'name' => \http\Client\Request::input($this->title_field),
                    'module' => CRUDBooster::getCurrentModule()->name,
                ]));
                CRUDBooster::redirect(CRUDBooster::adminPath(), trans("crudbooster.denied_access"));
            }*/


            //Permite recibir toda la informacion ingresada en el formulario de facturacion
            //$request=Request()->request->all();
            if (empty($request->cliente_id)){
                $user=CmsUser::findOrFail(CRUDBooster::myId());
                $cliente=Clientes::where('identificacion',$user->identificacion)->first();

            }else{
                $cliente=Clientes::findOrFail($request['cliente_id']);
                $user=CmsUser::where('identificacion',$cliente->identificacion)->first();
            }

            $pedido=Pedido::where('cliente_id',$cliente->id)->orderBy('id','desc')->first();
            $secuencial=1;
            if ($pedido)$secuencial=$pedido->secuencial_cliente+1;


            $detalles = json_decode($request['listadoArticulos']);

            if ($detalles != null) {
                $pedido_cabecera = new Pedido();

                if ($user) $pedido_cabecera->user_id = $user->id;

                $pedido_cabecera->codigo = Str::random(15);
                $pedido_cabecera->cliente_id = $request['cliente_id'];
                $pedido_cabecera->empresa_id = 1;
                $pedido_cabecera->secuencial_cliente = $secuencial;
                $pedido_cabecera->fecha_emision = $request['fecha_emision'];
                $pedido_cabecera->observacion = $request['observacion'];
                $pedido_cabecera->total_sin_impuestos = 0;
                $pedido_cabecera->subtotal_12 = 0;
                $pedido_cabecera->subtotal_0 = 0;
                $pedido_cabecera->subtotal_no_iva = 0;
                $pedido_cabecera->subtotal_extento_iva = 0;
                $pedido_cabecera->total_ice = 0;
                $pedido_cabecera->total_iva = 0;
                $pedido_cabecera->total_descuento = 0;
                $pedido_cabecera->total_propina = 0;
                $pedido_cabecera->total_valor = 0;
                $pedido_cabecera->created_by_id = CRUDBooster::myId();
                $pedido_cabecera->updated_by_id = CRUDBooster::myId();
                $pedido_cabecera->saveOrFail();


                $subtotal = 0;
                $totaliva = 0;
                foreach ($detalles as $detalle) {
                    $producto = Productos::where('codigo', $detalle->codigo)->first();
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
                $pedido_cabecera->subtotal_12 = $subtotal;
                $pedido_cabecera->total_iva = $totaliva;
                $pedido_cabecera->total_valor = $totalfactura;
                $pedido_cabecera->saveOrFail();
                return redirect('/admin/pedidos/detail/'.$pedido_cabecera->id)->with(['message' =>  'Agregado correctamente', 'message_type' => 'success']);
            }else{
                return redirect('/admin/pedidos/add')->with(['message' =>  'Pedido vacio', 'message_type' => 'warning']);
            }


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
            return $this->view('verpedido', compact('pedido','dataDetallePed', 'empresa'));
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
