/// @description Insert description here
// You can write your code in this editor
var _string_seconds = seconds >= 10?string(seconds) : "0"+string(seconds)
var _string_minutes = minutes >= 10?string(minutes) : "0"+string(minutes)

draw_self()
draw_set_color(c_red)
draw_set_font(fnt_relogio)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, _string_minutes +":" + _string_seconds)
draw_set_valign(0)
draw_set_halign(0)



