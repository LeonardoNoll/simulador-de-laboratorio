draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _is_mouse_hovering = left < mouse_x && mouse_x < right && top < mouse_y && mouse_y < bottom
var _y_offset = _is_mouse_hovering ? 12 : 0

if(!_is_mouse_hovering) {
	draw_set_color(#5C81A4)
	draw_roundrect_ext(left,top, right, bottom+ 12, radius, radius, false)
}

draw_set_color(#7EC1FF)
draw_roundrect_ext(left,top+_y_offset, right, bottom+_y_offset, radius, radius, false)
	
draw_set_color(#fbfbfb)
draw_set_font(fnt_menu_btn)
draw_text_ext(x, y + _y_offset, button_text, -1, width);
