var _target_pos = inicial_y + (obj_btn_notes_table_experiment_6.activated ? 220 : 0)		
y = lerp(y, _target_pos, 0.2)
if instance_exists(obj_btn_grafico){
	return
}
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