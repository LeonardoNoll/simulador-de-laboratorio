event_inherited()

if ph > 0 {
	var _color
	switch (ph) {
		case 0: _color = make_colour_rgb(233, 28 ,38)  break
		case 1: _color = make_colour_rgb(237 ,102 ,37)  break
		case 2: _color = make_colour_rgb(243, 194 ,19) break
		case 3: _color = make_colour_rgb(240, 232, 29) break
		case 4: _color = make_colour_rgb(178, 208, 54) break
		case 5: _color = make_colour_rgb(79 ,182 ,75) break
		case 6: _color = make_colour_rgb(80, 183, 75) break
		case 7: _color = make_colour_rgb(53, 169, 76) break
		case 8: _color = make_colour_rgb(38, 180, 108) break
		case 9: _color = make_colour_rgb(14, 183, 183) break
		case 10: _color = make_colour_rgb(71, 144, 204) break
		case 11: _color = make_colour_rgb(59, 84, 165) break
		case 12: _color = make_colour_rgb(102, 71, 158) break
		case 13: _color = make_colour_rgb(91 ,82, 163) break
		case 14: _color = make_colour_rgb(72, 47, 133) break
	}
	draw_set_color(_color)
	draw_rectangle(x-sprite_width/2,y+sprite_height/2, x+sprite_width/2-1, y+sprite_height/2-18, false)
}