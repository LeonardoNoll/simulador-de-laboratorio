event_inherited();

if (com_gota) { //possui lactofenol
    var _gx = (bbox_left + bbox_right) / 2; // Calcula o centro horizontal da lâmina
    var _gy = (bbox_top + bbox_bottom) / 2; // Calcula o centro vertical da lâmina
    draw_sprite(s_gota_de_lactofenol, 0, _gx, _gy); // Desenha a gota no centro da lâmina
}