sprite_index = instructions_list[current_sprite]

if(sprite_index != noone) {
	var _btn_x = instance_create_depth(x+175, y - 205, depth-1, obj_btn_x)
	_btn_x.parent = self
	if(current_sprite > 0 && !instance_exists(obj_previous_reference)) {
		var _prev_arrow = instance_create_depth(x - sprite_width/2, y + sprite_height/2, depth-1, obj_previous_reference)
	}
	if(current_sprite < array_length(instructions_list)-1 && !instance_exists(obj_next_reference)) {
		var _next_arrow = instance_create_depth(x + sprite_width/2, y + sprite_height/2, depth-1, obj_next_reference)
	}
}
draw_self()