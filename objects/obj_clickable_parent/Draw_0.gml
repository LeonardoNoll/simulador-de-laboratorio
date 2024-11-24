// Desenha borda ilustrativa quando selecionado


if (global.selected == id) {
//	var _x_offset = sprite_width * 0.1
//	var _y_offset = sprite_height * 0.1
//	
//	draw_sprite_ext(sprite_index, image_index, x, y, 1.2, 1.2, 0, focus_color, 1)
	image_xscale = 1.2;
	image_yscale = 1.2;
} else {
	image_xscale = 1;
	image_yscale = 1;
}
draw_self()

