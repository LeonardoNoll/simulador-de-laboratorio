var _padding_x = 4
var _display_string = ""
var _display_mode_string = ""

switch(display_mode) {
case DISPLAY_MODES.TIME: 
	_display_string = format_seconds_mm_ss(obj_centrifuge.seconds)
	_display_mode_string = "tmp"
	break
case DISPLAY_MODES.RPM: 
	_display_string = string(obj_centrifuge.rpm)
	_display_mode_string = "rpm"
	break
}


draw_self()
draw_set_color(c_black)
draw_set_font(fnt_centrifuge_visor)
draw_set_valign(fa_bottom)
draw_set_halign(fa_left)
draw_text_transformed(x + _padding_x,y,string(_display_string), image_xscale, image_yscale, 0)
draw_set_halign(fa_right)
draw_text_transformed(x + sprite_width - _padding_x,y,string(_display_mode_string), image_xscale * 0.8, image_yscale * 0.8, 0)