event_inherited();

// ---------- brilho da ponta quando está quente ----------
if (calor > 0) {
    var _pulso_calor = 1 + 0.12 * sin(current_time / 80);

    gpu_set_blendmode(bm_add);
    for (var i = 3; i >= 1; i--) {
        draw_set_alpha(calor * 0.22);
        draw_circle_color(x, y, i * 6 * _pulso_calor, make_color_rgb(255, 170, 70), make_color_rgb(255, 80, 20), false);
    }
    draw_set_alpha(1);
    gpu_set_blendmode(bm_normal);
}

// ---------- posição do centro do laço (muda se a alça está inclinada) ----------
var _inclinada = (sprite_index == spr_diagonal);
var _dir = _inclinada ? (180 - ang_diag) : 180;      // direção da ponta até o cabo
var _lx  = x + lengthdir_x(5 * image_xscale, _dir);
var _ly  = y + lengthdir_y(5 * image_xscale, _dir);

// ---------- cultura no laço ----------
if (carregada) {
    draw_set_color(make_color_rgb(250, 248, 235));
    draw_circle(_lx, _ly, 2.5 * image_xscale, false);
    draw_set_color(make_color_rgb(185, 180, 150));
    draw_circle(_lx, _ly, 2.5 * image_xscale, true);
    draw_set_color(c_white);
}

// ---------- anel de brilho ao coletar ----------
if (pulso > 0) {
    draw_set_alpha(pulso);
    draw_set_color(make_color_rgb(255, 250, 210));
    draw_circle(_lx, _ly, 4 + 14 * (1 - pulso), true);
    draw_set_alpha(1);
    draw_set_color(c_white);
}

// ---------- caixa de dica (estilo parecido com o aviso do jogo) ----------
if (dica_timer > 0) {
    dica_timer--;

    var _alfa  = min(1, dica_timer / 30);               // some suavemente no fim
    var _larg  = 250;                                   // largura do texto
    var _pad   = 12;                                    // margem interna
    var _barra = 22;                                    // altura da barra de título
    var _r     = 10;                                    // arredondamento dos cantos

    var _txt_h = string_height_ext(dica, -1, _larg);
    var _box_w = _larg + _pad * 2;
    var _box_h = _barra + _txt_h + _pad * 2;

    var _bx = clamp(x - _box_w / 2, 8, room_width - _box_w - 8);   // canto esquerdo da caixa
    var _by = max(8, y - 70 - _box_h);                             // canto de cima da caixa

    // sombra leve
    draw_set_alpha(0.25 * _alfa);
    draw_set_color(c_black);
    draw_roundrect_ext(_bx + 3, _by + 4, _bx + _box_w + 3, _by + _box_h + 4, _r, _r, false);

    // fundo branco
    draw_set_alpha(_alfa);
    draw_set_color(c_white);
    draw_roundrect_ext(_bx, _by, _bx + _box_w, _by + _box_h, _r, _r, false);

    // barra de título azul-acinzentada (cantos de cima arredondados)
    draw_set_color(make_color_rgb(120, 144, 170));
    draw_roundrect_ext(_bx, _by, _bx + _box_w, _by + _barra, _r, _r, false);
    draw_rectangle(_bx, _by + _r, _bx + _box_w, _by + _barra, false);

    // contorno e linha do título
    draw_set_color(c_black);
    draw_roundrect_ext(_bx, _by, _bx + _box_w, _by + _box_h, _r, _r, true);
    draw_line(_bx, _by + _barra, _bx + _box_w, _by + _barra);

    // título
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text(_bx + _box_w / 2, _by + _barra / 2, "Atenção");

    // texto da dica
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_black);
    draw_text_ext(_bx + _pad, _by + _barra + _pad, dica, -1, _larg);

    // pontinha apontando para a alça
    var _px = clamp(x, _bx + 20, _bx + _box_w - 20);
    draw_set_color(c_white);
    draw_triangle(_px - 8, _by + _box_h - 1, _px + 8, _by + _box_h - 1, _px, _by + _box_h + 9, false);
    draw_set_color(c_black);
    draw_line(_px - 8, _by + _box_h, _px, _by + _box_h + 9);
    draw_line(_px + 8, _by + _box_h, _px, _by + _box_h + 9);

    // volta tudo ao normal
    draw_set_alpha(1);
    draw_set_color(c_white);
}