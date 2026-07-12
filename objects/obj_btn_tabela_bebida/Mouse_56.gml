// 1. Calcula os limites dinamicamente com base na posição atual do objeto
var _half_w = width / 2;
var _half_h = height / 2;

var _left   = x - _half_w;
var _right  = x + _half_w;
var _top    = y - _half_h;
var _bottom = y + _half_h;

// 2. Verifica se o clique foi liberado dentro da área correta e atualizada
if (_left < mouse_x && mouse_x < _right && _top < mouse_y && mouse_y < _bottom) {
	instance_destroy(obj_notes_table_experiment_6)
	
	instance_create_depth(x, y + height*2, depth-1, obj_notes_table_experiment_6, {
		textos_cabecalho: textos_cabecalho,
		valores_ml: valores_ml,
		parent: id
	})
    
    // Se for reativar a criação do objeto, ele também usará o x e y atualizados:
    // instance_create_layer(x, y, layer, obj_tabela_bebida, {
    //     liquid_name: name,
    //     textos_cabecalho: textos_cabecalho
    // });
}