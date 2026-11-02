// AVISO MEGA_PRO

var _box_w = 400; // Define a largura da caixa
var _box_h = 320; // Define a altura da caixa
var _box_x = x - _box_w/2; // Centraliza a caixa horizontalmente
var _box_y = y - _box_h/2; // Centraliza a caixa verticalmente
var _r = 14; // Define o arredondamento dos cantos

draw_set_alpha(0.5); // Define a transparência do fundo
draw_set_color(c_black); // Define a cor preta
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false); // Desenha o fundo escurecido
draw_set_alpha(1); // Restaura a transparência

draw_set_color(c_white); // Define a cor branca
draw_roundrect_ext(_box_x, _box_y, _box_x + _box_w, _box_y + _box_h, _r, _r, false); // Desenha o fundo da caixa

var _title_h = 30; // Define a altura da barra de título
draw_set_color(make_color_rgb(120, 144, 170)); // Define a cor da barra
draw_roundrect_ext(_box_x, _box_y, _box_x + _box_w, _box_y + _title_h, _r, _r, false); // Desenha a barra superior
draw_rectangle(_box_x, _box_y + _r, _box_x + _box_w, _box_y + _title_h, false); // Completa a barra para remover o arredondamento inferior

draw_set_color(c_black); // Define a cor do contorno
draw_roundrect_ext(_box_x, _box_y, _box_x + _box_w, _box_y + _box_h, _r, _r, true); // Desenha o contorno da caixa
draw_line(_box_x, _box_y + _title_h, _box_x + _box_w, _box_y + _title_h); // Separa a barra do restante da caixa

draw_sprite(sprite_index, 0, _box_x + _box_w/2, _box_y + _title_h + (_box_h - _title_h - 70) / 2); // Desenha o sprite centralizado na caixa

draw_set_halign(fa_center); // Centraliza o texto horizontalmente
draw_set_valign(fa_middle); // Centraliza o texto verticalmente
draw_set_color(c_black); // Define a cor do texto
draw_text(_box_x + _box_w/2, _box_y + _box_h - 70, texto_aviso); // Exibe a mensagem do aviso

var _btn_w = 80; // Define a largura do botão
var _btn_h = 30; // Define a altura do botão
var _btn_x = _box_x + _box_w/2 - _btn_w/2; // Centraliza o botão horizontalmente
var _btn_y = _box_y + _box_h - 50; // Posiciona o botão próximo à parte inferior

draw_set_color(make_color_rgb(230, 230, 230)); // Define a cor de fundo do botão
draw_roundrect_ext(_btn_x, _btn_y, _btn_x + _btn_w, _btn_y + _btn_h, 8, 8, false); // Desenha o botão
draw_set_color(c_black); // Define a cor do contorno
draw_roundrect_ext(_btn_x, _btn_y, _btn_x + _btn_w, _btn_y + _btn_h, 8, 8, true); // Desenha o contorno do botão
draw_text(_btn_x + _btn_w/2, _btn_y + _btn_h/2, "OK"); // Exibe o texto do botão

draw_set_halign(fa_left); // Restaura o alinhamento horizontal padrão
draw_set_valign(fa_top); // Restaura o alinhamento vertical padrão