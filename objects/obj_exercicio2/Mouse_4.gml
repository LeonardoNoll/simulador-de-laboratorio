var _is_context_btn_overlaping = collision_point(mouse_x,mouse_y,obj_context_btn,false,true) != noone
var _is_x_overlaping = collision_point(mouse_x,mouse_y,obj_btn_x,false,true) != noone

if (locked || _is_context_btn_overlaping || _is_x_overlaping) {
	return
}

if(check_EPI(needed_EPI)){
	global.selected = id 
	drag_mode = true
	xx = x-mouse_x;
	yy = y-mouse_y;
} else {
	create_textbox(x+sprite_width/2, y-sprite_height/2, "Para interagir com este objeto você deve calçar os EPIs adequados. Calce todos os EPIs separados no seu armário.")
}
