var _is_mouse_hovering = left < mouse_x && mouse_x < right && top < mouse_y && mouse_y < bottom;

if(_is_mouse_hovering && room_exists(target_room)) {
	ds_list_add(global.previous_room, room);
	room_goto(target_room);
}