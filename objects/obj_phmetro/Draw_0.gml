// Inherit the parent event
event_inherited();

draw_set_font(fnt_centrifuge_visor)
draw_set_color(#000000)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
if power_on {
	draw_text_transformed(x-19, y-12, display_text, 1.5, 1.5, 0)
	draw_text_transformed(x-28, y-23, display_on_off, 0.8, 0.8, 0)
}