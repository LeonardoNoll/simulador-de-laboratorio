draw_self()

var _padding_x = 50
var _padding_y = 20
var _instructions = parent.instructions_list


if(array_length(_instructions) > 0) {
	// Arrows control
	if(parent.instruction > 0 && !instance_exists(obj_previous_reference)) {
		var _prev_arrow = instance_create_depth(x - sprite_width / 2 + _padding_x*2, y + sprite_height/2 - _padding_y, depth-1, obj_previous_reference)
	}
	if(parent.instruction < array_length(_instructions) - 1 && !instance_exists(obj_next_reference)) {
		var _next_arrow = instance_create_depth(x + sprite_width / 2 - _padding_x, y + sprite_height / 2 - _padding_y, depth-1, obj_next_reference)
	}
	
	// Render Text
	draw_set_font(fnt_text)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_color(c_black)
	var _text_x = x-70
	var _text_y = y-80
	var _display_text = string(parent.instruction+1) + ". " + _instructions[parent.instruction]
	var _text_width = 150
	var _separation = 20
	var _scale = 1
	var _angle = 5
	draw_text_ext_transformed(_text_x, _text_y,_display_text, _separation, _text_width, _scale, _scale, _angle)
}
