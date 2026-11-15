event_inherited();   // desenha a lâmina (se ela sumir, acrescente draw_self() aqui)

if (com_gota) {
    var _gx = (bbox_left + bbox_right) / 2;    // centro horizontal da lâmina
    var _gy = (bbox_top + bbox_bottom) / 2;    // centro vertical da lâmina

    var _esc;    // escala da gota (0 a 1)
    var _dy;     // deslocamento vertical (negativo = acima da lâmina)
    var _alfa;   // transparência da gota

    if (gota_t < 0.35) {
        // fase 1: a gota cai
        var _q = gota_t / 0.35;                 // progresso só da queda (0 a 1)
        _esc = 0.35;                            // gota pequena enquanto cai
        _dy = -gota_queda * (1 - _q * _q);      // começa alta e desacelera até tocar o vidro
        _alfa = min(1, _q * 3);                 // aparece rápido no começo
    }
    else {
        // fase 2: a gota se espalha
        var _p = (gota_t - 0.35) / 0.65;        // progresso só do espalhar (0 a 1)
        var _c1 = 1.70158;                      // força do "elástico"
        var _c3 = _c1 + 1;
        var _k = _p - 1;
        _esc = 0.35 + 0.65 * (1 + _c3 * _k * _k * _k + _c1 * _k * _k);   // ease-out-back
        _dy = 0;                                // já está no vidro
        _alfa = 1;
    }

    // ondinha ao redor da gota enquanto ela se espalha
    if (gota_t >= 0.35 && gota_t < 1) {
        var _f = (gota_t - 0.35) / 0.65;                          // progresso da ondinha
        draw_set_alpha(0.5 * (1 - _f));                           // some conforme cresce
        draw_set_color(make_color_rgb(120, 160, 255));
        draw_circle(_gx, _gy, (4 + 14 * _f) * image_xscale, true);   // só o contorno
        draw_set_alpha(1);
        draw_set_color(c_white);
    }

    // desenha a gota com escala, posição e transparência calculadas
    draw_sprite_ext(s_gota_de_lactofenol, 0, _gx, _gy + _dy * image_xscale,
                    _esc * image_xscale, _esc * image_xscale, 0, c_white, _alfa);

    // cultura do passo 5, desenhada por cima da gota
    if (com_cultura) {
        draw_set_alpha(0.9);
        draw_set_color(make_color_rgb(235, 232, 214));
        for (var i = 0; i < 7; i++) {
            var _ang = i * 51 + 10;                               // 7 filamentos em direções diferentes
            draw_line_width(_gx, _gy, _gx + lengthdir_x(7, _ang), _gy + lengthdir_y(7, _ang), 1);
        }
        draw_set_color(make_color_rgb(250, 248, 236));
        draw_circle(_gx, _gy, 3, false);                          // miolo da colônia
        draw_set_alpha(1);
        draw_set_color(c_white);
    }
}