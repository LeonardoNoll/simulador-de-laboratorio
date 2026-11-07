event_inherited();

var _laranja = make_color_rgb(255, 90, 30);

if (!esterilizada) {
    if (drag_mode && ponta_na_chama(x, y)) {
        calor = min(1, calor + 1 / tempo_flambar);
        if (calor >= 1) esterilizar_alca();
    } else {
        calor = max(0, calor - 2 / tempo_flambar);
    }
    image_blend = merge_color(c_white, _laranja, calor);
}
else if (quente) {
    timer_esfriar--;
    calor = max(timer_esfriar, 0) / tempo_esfriar;
    image_blend = merge_color(c_white, _laranja, calor);

    if (timer_esfriar <= 0) {
        quente = false;
        calor = 0;
        image_blend = c_white;
        name = "Alça de platina (esterilizada)";
    }
}

if (esterilizada && !msg_mostrada && !drag_mode) {
    msg_mostrada = true;
    create_textbox(x, y - 40, "Alça esterilizada! Espere esfriar antes de tocar a colônia.");
}