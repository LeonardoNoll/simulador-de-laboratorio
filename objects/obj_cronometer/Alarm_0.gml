/// @description Insert description here
// You can write your code in this editor


minutes--
minutes_elapsed++

if(minutes == -1) {
	show_debug_message(string(minutes_elapsed))
	if(minutes_elapsed == 6) {
		room_goto(rm_1c)
	} else {
	criar_textbox(x+sprite_width, y, ["voce cronometrou o tempo errado"])
	minutes_elapsed = 0
	minutes = 0
	}
	blocked = false
} else {
	alarm[0] = 30
}