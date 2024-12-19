draw_self();

draw_set_font(fnt_text)
draw_set_color(c_black)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(x1 < mouse_x && mouse_x < x2 && y1 < mouse_y && mouse_y < y2) {
	draw_sprite_stretched(s_text_box_9slice_hover, 0, x1, y1, width, height);
} else {
	draw_sprite_stretched(s_text_box_9slice, 0, x1, y1, width, height);
}

draw_text(x, y, button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);



