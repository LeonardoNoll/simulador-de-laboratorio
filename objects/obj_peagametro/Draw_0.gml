// Inherit the parent event
event_inherited();

draw_set_font(fnt_centrifuge_visor)
draw_set_color(#000000)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
if power_on {
	draw_text_transformed(x-17, y-18, display_text, 2, 2, 0)
}