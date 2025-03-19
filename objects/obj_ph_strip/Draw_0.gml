event_inherited()

if ph > 0 {
	var _color
	switch (ph) {
		case 1: _color = c_aqua break
		case 2: _color = c_blue break
		case 7: _color = c_red break
	}
	draw_set_color(_color)
	draw_rectangle(x-sprite_width/2,y+sprite_height/2, x+sprite_width/2-1, y+sprite_height/2-20, false)
}