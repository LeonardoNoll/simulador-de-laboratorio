function remover_pera(){
	with(global.selected) {
		var _is10ml = object_index == obj_pipett_10ml
		sprite_index =  _is10ml ? s_pipette_10ml : s_pipette_5ml
		name = _is10ml ? "Pipeta 10ml" : "Pipeta 5ml"
		// adjust to sprite size
		base_x += 10
		base_y += _is10ml ? 50 : 40
		x = base_x
		y = base_y
		pear_on = false
		options = []
		ml = 0
		ph = 0
		content = ""
		
		on_release = put_pear_on
		instance_create_depth(pear_inicial_position.x,pear_inicial_position.y, depth-1, obj_suction_pear)
	}
}