function colect_saliva(){
	var _becker = instance_nearest(x, y, obj_saliva_artificial)
	if !place_meeting(x, y, _becker){
		return
	}
	var _saliva_color = #CFE6EE
	liquid_draw_setup.liquid_color = _saliva_color
	ml = max_ml
	on_release = pass_saliva_to_becker
	
}