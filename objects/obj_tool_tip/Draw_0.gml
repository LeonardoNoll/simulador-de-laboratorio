draw_set_alpha(alpha_value);
draw_set_font(fnt_text)

draw_set_color(c_white)
draw_rectangle(x-4, y, x + string_length(name) * 8 + 4, y + 20, false)

draw_set_color(c_black)
draw_text(x + 2, y, name)

draw_set_alpha(1);