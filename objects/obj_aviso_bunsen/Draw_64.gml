
//	AVISO MEGA_PRO
// tamanho da caixa
var _box_w = 400;
var _box_h = 320;
var _box_x = x - _box_w/2;
var _box_y = y - _box_h/2;

//tela escura
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// corpo da caixa
draw_set_color(c_white);
draw_rectangle(_box_x, _box_y, _box_x + _box_w, _box_y + _box_h, false);

// barra de título
var _title_h = 30;
draw_set_color(make_color_rgb(120, 144, 170));
draw_rectangle(_box_x, _box_y, _box_x + _box_w, _box_y + _title_h, false);

// borda
draw_set_color(c_black);
draw_rectangle(_box_x, _box_y, _box_x + _box_w, _box_y + _box_h, true);
draw_rectangle(_box_x, _box_y, _box_x + _box_w, _box_y + _title_h, true);

// sprite da placa
draw_sprite(sprite_index, 0, _box_x + _box_w/2, _box_y + _title_h + (_box_h - _title_h - 70) / 2);

// texto do aviso
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(_box_x + _box_w/2, _box_y + _box_h - 70, texto_aviso);

//OK
var _btn_w = 80;
var _btn_h = 30;
var _btn_x = _box_x + _box_w/2 - _btn_w/2;
var _btn_y = _box_y + _box_h - 50;

draw_set_color(make_color_rgb(230, 230, 230));
draw_rectangle(_btn_x, _btn_y, _btn_x + _btn_w, _btn_y + _btn_h, false);
draw_set_color(c_black);
draw_rectangle(_btn_x, _btn_y, _btn_x + _btn_w, _btn_y + _btn_h, true);
draw_text(_btn_x + _btn_w/2, _btn_y + _btn_h/2, "OK");

draw_set_halign(fa_left);
draw_set_valign(fa_top);