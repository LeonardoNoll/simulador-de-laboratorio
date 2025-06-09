// Cria uma lista para armazenar as instâncias na posição do clique
var _colliding_instances = ds_list_create();

// Obtém todas as instâncias na posição do clique
var _num_instances = instance_place_list(mouse_x, mouse_y, all, _colliding_instances, false);

// Inicializa a variável que armazenará a instância superior
var _top_instance = noone;

// Percorre a lista de instâncias encontradas para determinar a instância superior
for (var i = 0; i < _num_instances; i++) {
    var _inst = _colliding_instances[| i];
    if (_top_instance == noone || _inst.depth < _top_instance.depth) {
        _top_instance = _inst;
    }
}

show_debug_message(_colliding_instances)
show_debug_message(_num_instances)
show_debug_message(_top_instance)

// Checa se não tem nenhum objeto na frente
//if(_top_instance == id || _top_instance == noone) {
if(true) {
	if (!locked && collision_point(mouse_x,mouse_y,obj_context_btn,false,true) == noone) {
		// Checa se EPI está equipada
		// Objetos não dependentes de EPI passam pelo teste automaticamente
		if(check_EPI(needed_EPI)){
			// Logica para arrastar			
			global.selected = id 
			drag_mode = true
			xx = x-mouse_x;
			yy = y-mouse_y;
		} else {
			criar_textbox(x+sprite_width/2, y-sprite_height/2, ["Para interagir com este objeto você deve calçar os EPIs adequados. Calce todos os EPIs separados no seu armário."])
		}
	}
}

ds_list_destroy(_colliding_instances);