

if(!is_undefined(content)) {
	var _half_width = 7
	draw_set_color(content.color)
	draw_rectangle(
		x - _half_width * image_xscale,
		y - 30 * image_yscale,
		x + _half_width-1 * image_xscale,
		y + 45 * image_yscale, false)
}

event_inherited();




