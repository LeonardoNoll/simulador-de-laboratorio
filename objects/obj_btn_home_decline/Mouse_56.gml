/// @description Insert description here
// You can write your code in this editor
if(x1 < mouse_x && mouse_x < x2 && y1 < mouse_y && mouse_y < y2) {
	instance_destroy(obj_btn_home_dialog)
	show_debug_message("Não")
}