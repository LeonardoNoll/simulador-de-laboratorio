event_inherited();

if (calor > 0) {
    var _pulso = 1 + 0.12 * sin(current_time / 80);

    gpu_set_blendmode(bm_add);
    for (var i = 3; i >= 1; i--) {
        draw_set_alpha(calor * 0.22);
        draw_circle_color(x, y, i * 6 * _pulso, make_color_rgb(255, 170, 70), make_color_rgb(255, 80, 20), false);
    }
    draw_set_alpha(1);
    gpu_set_blendmode(bm_normal);
}
if (carregada) {
    var _px = x - 5 * image_xscale;
    draw_set_color(make_color_rgb(250, 248, 235));
    draw_circle(_px, y, 2.5 * image_xscale, false);
    draw_set_color(make_color_rgb(185, 180, 150));
    draw_circle(_px, y, 2.5 * image_xscale, true);
    draw_set_color(c_white);
}