water_bath = instance_nearest(x,y,obj_water_bath)

var _x_spacing = 75
var _starting_point_x = x-95
var _starting_point_y = y + 40

destroy_array = [
	instance_create_depth(_starting_point_x, _starting_point_y, depth-1, obj_water_bath_agitation_btn),
	instance_create_depth(_starting_point_x + _x_spacing, _starting_point_y, depth-1, obj_water_bath_minus_btn),
	instance_create_depth(_starting_point_x + _x_spacing*2, _starting_point_y, depth-1, obj_water_bath_plus_btn)
]


x_btn = instance_create_depth(x+sprite_width/2, y-sprite_height/2, depth-1, obj_btn_x)
x_btn.parent = self
array_push(destroy_array, x_btn)

