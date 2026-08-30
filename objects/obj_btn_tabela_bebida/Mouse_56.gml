// 1. Calcula os limites dinamicamente com base na posição atual do objeto
var _half_w = width / 2;
var _half_h = height / 2;

var _left   = x - _half_w;
var _right  = x + _half_w;
var _top    = y - _half_h;
var _bottom = y + _half_h;

var _table_spawn_point = room_width/2 - array_length(textos_cabecalho) * 120/2
// 2. Verifica se o clique foi liberado dentro da área correta e atualizada
if (_left < mouse_x && mouse_x < _right && _top < mouse_y && mouse_y < _bottom) {
	instance_destroy(obj_notes_table_experiment_6)
	
	instance_create_depth(_table_spawn_point,200, depth-1, obj_notes_table_experiment_6, {
		textos_cabecalho: textos_cabecalho,
		valores_ml: valores_ml,
		parent: id
		
	
	})
//	se a tabela tiver toda pronta, executa isso, mas não ta finalizado pq eu n~ão entendi tudo
//eu preciso criar testar toda a atabela pra mostrar um sprite de um gráfico, mas só vai mostrarse
//tiver tudo certo

    for (var i = 0;instance_find(obj_btn_tabela_bebida,i); i++){
		with (instance_find(obj_btn_tabela_bebida,i)){
			for (var j = 0; j < array_length(valores_ml); j++){
				if (valores_ml[j] == 0 || valores_ml[j] == ""){
					return
				}
			}
		}
	}
	instance_create_depth(950, 25, depth -1, obj_btn_grafico)
    // Se for reativar a criação do objeto, ele também usará o x e y atualizados:
    // instance_create_layer(x, y, layer, obj_tabela_bebida, {
    //     liquid_name: name,
    //     textos_cabecalho: textos_cabecalho
    // });
}