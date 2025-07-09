function remove_pear(){
	with(global.selected) {
		var _is_10ml = object_index == obj_pipette_10ml
		sprite_index =  _is_10ml ? s_pipette_10ml : s_pipette_5ml
		name = _is_10ml ? "Pipeta 10ml" : "Pipeta 5ml"
		base_x += 10
		base_y += _is_10ml ? 50 : 40
		x = base_x
		y = base_y
		options = []
		scale_on_contact_list = [obj_suction_pear]
		on_release = change_pipette
		pear_on = false
		ml = 0
		ph = 0
		content = ""
		instance_create_depth(pear_inicial_position.x,pear_inicial_position.y, depth-1, obj_suction_pear)
	}
}