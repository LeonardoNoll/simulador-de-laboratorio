function position_erlenmeyer_on_water_bath(){
	var water_bath = instance_nearest(x,y, obj_water_bath)
	base_x = water_bath.x - 10
	base_y = water_bath.y - 10
	locked = true
	on_release = undefined
}