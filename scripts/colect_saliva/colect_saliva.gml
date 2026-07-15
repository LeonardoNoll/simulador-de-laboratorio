function colect_saliva(){
	var _becker = instance_nearest(x, y, obj_saliva_artificial)
	if !place_meeting(x, y, _becker){
		return
	}
	//to do draw_liquid_on_pipette
	on_release = pass_saliva_to_becker
}