function put_pear_on(){
	if(place_meeting(x,y, obj_suction_pear)) {
		var _is10ml = object_index == obj_pipett_10ml
		sprite_index =  _is10ml ? s_pipette_10ml_with_pear : s_pipette_5ml_with_pear
		// ajust to sprite size
		base_x -= 10
		base_y -= _is10ml ? 50 : 40
		x = base_x
		y = base_y
		pear_on = true
		pear_inicial_position = {
			x: obj_suction_pear.base_x,
			y: obj_suction_pear.base_y
		}
		options = [OPTIONS.REMOVER_PERA]

		instance_destroy(obj_suction_pear)
	}
}