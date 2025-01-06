var _padding = 50
draw_set_color(c_white)
draw_roundrect(x-_padding, y-_padding, x+_padding, y+_padding, false)
draw_set_color(c_black)
draw_roundrect(x-_padding, y-_padding, x+_padding, y+_padding, true)
draw_self()