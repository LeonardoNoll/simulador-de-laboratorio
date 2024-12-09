draw_set_font(fnt_text)

draw_set_color(c_white)
draw_roundrect(x-4, y-5, x + string_length(name) * 8 + 5, y + 25, false)

draw_set_color(c_black)
draw_text(x + 2, y, name)

