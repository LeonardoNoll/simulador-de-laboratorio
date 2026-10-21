
//	AVISO MEGA_PRO
// tamanho da caixa
var _box_w = 400;
var _box_h = 320;
var _box_x = x - _box_w/2;
var _box_y = y - _box_h/2;
var _r = 14; // raio dos cantos, aumente para arredondar mais

// fundo escurecendo a tela toda
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// corpo da caixa (branco)
draw_set_color(c_white);
draw_roundrect_ext(_box_x, _box_y, _box_x + _box_w, _box_y + _box_h, _r, _r, false);

// barra de título (cantos de cima arredondados, de baixo retos)
var _title_h = 30;
draw_set_color(make_color_rgb(120, 144, 170));
draw_roundrect_ext(_box_x, _box_y, _box_x + _box_w, _box_y + _title_h, _r, _r, false);
draw_rectangle(_box_x, _box_y + _r, _box_x + _box_w, _box_y + _title_h, false);

// borda externa e linha separando o título
draw_set_color(c_black);
draw_roundrect_ext(_box_x, _box_y, _box_x + _box_w, _box_y + _box_h, _r, _r, true);
draw_line(_box_x, _box_y + _title_h, _box_x + _box_w, _box_y + _title_h);

// sprite da placa, centralizado no espaço entre a barra de título e o botão
draw_sprite(sprite_index, 0, _box_x + _box_w/2, _box_y + _title_h + (_box_h - _title_h - 70) / 2);

// texto do aviso
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(_box_x + _box_w/2, _box_y + _box_h - 70, texto_aviso);

// botão OK (também arredondado)
var _btn_w = 80;
var _btn_h = 30;
var _btn_x = _box_x + _box_w/2 - _btn_w/2;
var _btn_y = _box_y + _box_h - 50;

draw_set_color(make_color_rgb(230, 230, 230));
draw_roundrect_ext(_btn_x, _btn_y, _btn_x + _btn_w, _btn_y + _btn_h, 8, 8, false);
draw_set_color(c_black);
draw_roundrect_ext(_btn_x, _btn_y, _btn_x + _btn_w, _btn_y + _btn_h, 8, 8, true);
draw_text(_btn_x + _btn_w/2, _btn_y + _btn_h/2, "OK");

draw_set_halign(fa_left);
draw_set_valign(fa_top);