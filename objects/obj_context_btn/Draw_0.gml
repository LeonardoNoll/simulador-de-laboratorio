if(
	median(x, x + sprite_width, mouse_x) == mouse_x
	&& median(y, y + sprite_height, mouse_y) == mouse_y
) {
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_teal, 1)
} else {
	draw_self()
}

draw_set_font(fnt_text)
draw_set_color(c_black)
draw_text(x+3, y, obj_game.options_string[option])