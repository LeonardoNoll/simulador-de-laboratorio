draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(	
	median(x, x + width, mouse_x) == mouse_x
	&& median(y, y + height, mouse_y) == mouse_y 
	? #E2E2E2
	: c_white
)
draw_rectangle(x, y, x+width, y+height, false)

draw_set_color(c_black)
draw_rectangle(x, y, x+width, y+height, true)
draw_set_font(fnt_text)
draw_text_ext_transformed(x+padding, y+padding, text, 100, width, 1, 1, 0)