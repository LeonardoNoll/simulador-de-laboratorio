draw_self()

draw_set_font(fnt_relogio)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)
draw_set_color(#0b0b0b)
draw_text(x-100, y-30, string_concat(water_bath.temperature, "  C"))
