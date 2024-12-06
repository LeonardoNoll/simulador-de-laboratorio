/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_black)
draw_set_font(fnt_menu)
var _string_seconds = seconds >= 10?string(seconds) : "0"+string(seconds)
draw_text(45, y + 100, string(minutes) +":" + _string_seconds)


