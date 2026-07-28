//for(var i = 0; i < instance_number(obj_btn_tabela_bebida); i++){
//	var _current_btn = experiment_materials_btns[i]

	if (instance_exists(obj_btn_agar)) {
		var _target_pos = obj_btn_agar.inicial_y + (activated ? 15 : 0)		
		obj_btn_agar.y = lerp(obj_btn_agar.y, _target_pos, 0.2)
	}
	/*var _target_pos = obj_btn_agar.inicial_y + (activated ? 300 : 0)		
	obj_btn_agar.y = lerp(obj_btn_agar.y, _target_pos, 0.2)*/
//}		