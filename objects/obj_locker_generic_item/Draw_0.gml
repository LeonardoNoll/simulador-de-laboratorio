// Box
draw_set_alpha(1)
draw_set_color(#F1F1F1)
draw_roundrect(x-padding, y-padding, x+padding, y+padding, false)

// Border
draw_set_alpha(1)
draw_set_color(#F6F4F0)
draw_roundrect(x-padding, y-padding, x+padding, y+padding, true)

// Name
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_text)
draw_text(x, y + padding + 20, name)

draw_set_halign(0);
draw_set_valign(0);
draw_self()