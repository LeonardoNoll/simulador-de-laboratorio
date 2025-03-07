//TODO: fix error
function remover_pera(){
	with(global.selected) {
		var _is10ml = object_index == obj_pipett_10ml
		sprite_index =  _is10ml ? s_pipette_10ml : s_pipette_5ml
		// adjust to sprite size
		base_x += 10
		base_y += _is10ml ? 50 : 40
		x = base_x
		y = base_y
		pear_on = false
		options = []
		instance_create_depth(pear_inicial_position.x,pear_inicial_position.y, depth-1, obj_suction_pear)
	}
}