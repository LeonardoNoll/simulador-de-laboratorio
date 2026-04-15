function put_pear_on_experiment_4(){
	if(place_meeting(x,y, obj_pipette_10ml)) {
		with(instance_nearest(mouse_x,mouse_y,obj_pipette_10ml)) {
			sprite_index =  s_pipette_10ml_with_pear
			var _pear_x_offset = 10
			base_x -= _pear_x_offset
			base_y -= 50
			x = base_x
			y = base_y
			options = [OPTIONS.REMOVER_PERA]
			scale_on_contact_list = [obj_solucao_amido]
			on_release = get_mls_experiment_4
			pear_on = true
			pear_inicial_position = {
				x: obj_suction_pear_experiment_4.base_x,
				y: obj_suction_pear_experiment_4.base_y
			}
		}
		instance_destroy()
	}
}