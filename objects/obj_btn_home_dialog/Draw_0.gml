/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(fnt_text)
draw_set_color(c_black)

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_sprite_stretched(s_text_box_9slice, 0, x1, y1, width, height);

draw_text(x, y-60, "Você realmente deseja\nvoltar para o menu?");

draw_set_halign(fa_left);
draw_set_valign(fa_top);