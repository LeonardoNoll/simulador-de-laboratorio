/// @description Insert description here
// You can write your code in this editor


minutes--
minutes_elapsed++

if(minutes == -1) {
	show_debug_message(string(minutes_elapsed))
	if(minutes_elapsed == 6) {
		room_goto(rm_1c)
	} else {
	criar_textbox(["voce cronometrou o tempo errado"])
	minutes_elapsed = 0
	minutes = 0
	}
	//var _my_menu = instance_create_layer(x - 50, y + 50, "Instances", obj_menu)  // Cria o menu
	//_my_menu.options = options // Seta as opçoes do menu
} else {
	alarm[0] = 30
}