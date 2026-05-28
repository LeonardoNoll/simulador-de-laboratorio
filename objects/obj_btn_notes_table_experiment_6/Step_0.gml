//for(var i = 0; i < instance_number(obj_btn_tabela_bebida); i++){
//	var _current_btn = experiment_materials_btns[i]
	var _target_pos = obj_btn_tabela_bebida.inicial_y + (activated ? 300 : 0)		
	obj_btn_tabela_bebida.y = lerp(obj_btn_tabela_bebida.y, _target_pos, 0.2)
//}		