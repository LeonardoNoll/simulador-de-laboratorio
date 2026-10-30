btn_x = noone

if(sprite_index != noone) {
	btn_x = instance_create_depth(x+170, y - 225, -1, obj_btn_x)
	btn_x.parent = id
}