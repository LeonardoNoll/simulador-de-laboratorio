draw_set_valign(fa_top)
draw_set_halign(fa_left)


draw_set_color(make_color_rgb(216,252,253))
draw_roundrect_ext(x, y, x + max_length * 8, y + 30, 8, 8, false)

draw_set_color(make_color_rgb(158,182,208))
draw_roundrect_ext(x-outline, y-outline, x + outline + max_length * 8, y + outline + 30, 8, 8, true)

draw_set_color(c_black)
draw_set_font(fnt_text)
draw_set_valign(fa_middle)
draw_text(x + 4, y+15, value)