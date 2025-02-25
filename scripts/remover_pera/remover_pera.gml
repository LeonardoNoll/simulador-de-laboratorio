function remover_pera(){
		var _is10ml = object_index == obj_pipett_10ml
		sprite_index =  _is10ml ? s_pipette_10ml : s_pipette_5ml
		// ajust to sprite size
		base_x += 10
		base_y += _is10ml ? 50 : 40
		x = base_x
		y = base_y
		pear_on = false
		options = [OPTIONS.REMOVER_PERA]
	instance_create_depth(x,y, depth, obj_suction_pear)
}