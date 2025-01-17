if(sprite_index != noone) {
	//var _btn_x = instance_create_depth(x+sprite_width/2, y - sprite_height/2, -1, obj_btn_x)
	var _btn_x = instance_create_depth(x+175, y - 205, -1, obj_btn_x)
	_btn_x.parent = self
}

draw_self()