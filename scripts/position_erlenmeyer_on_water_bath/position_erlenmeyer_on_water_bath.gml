function position_erlenmeyer_on_water_bath(){
	var _water_bath = instance_nearest(x,y, obj_water_bath)
	base_x = _water_bath.x - 10
	base_y = _water_bath.y - 45
	locked = true
	on_release = undefined
	_water_bath.erlenmeyer = self
}

