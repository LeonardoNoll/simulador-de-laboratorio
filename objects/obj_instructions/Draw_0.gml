sprite_index = instructions_list[parent.page]

var _padding_x = 50
var _padding_y = 20
if(sprite_index != noone) {
	var _btn_x = instance_create_depth(x+175, y - 205, depth-1, obj_btn_x)
	_btn_x.parent = self
	if(parent.page > 0 && !instance_exists(obj_previous_reference)) {
		var _prev_arrow = instance_create_depth(x - sprite_width/2 + _padding_x*2, y + sprite_height/2 - _padding_y, depth-1, obj_previous_reference)
	}
	if(parent.page < array_length(instructions_list)-1 && !instance_exists(obj_next_reference)) {
		show_debug_message("teste")
		var _next_arrow = instance_create_depth(x + sprite_width/2 - _padding_x, y + sprite_height/2 - _padding_y, depth-1, obj_next_reference)
	}
}
draw_self()