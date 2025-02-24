draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)
draw_rectangle(x, y, x+width, y+height, false)

draw_set_color(c_black)
draw_rectangle(x, y, x+width, y+height, true)
draw_set_font(fnt_text)
draw_text_ext_transformed(x+padding, y+padding, text, 100, 150, 1, 1, 0)