event_inherited();

if (com_gota) {
    var _gx = (bbox_left + bbox_right) / 2;
    var _gy = (bbox_top + bbox_bottom) / 2;
    draw_sprite(s_gota_de_lactofenol, 0, _gx, _gy);

    if (com_cultura) {
        draw_set_alpha(0.9);
        draw_set_color(make_color_rgb(235, 232, 214));
        for (var i = 0; i < 7; i++) {
            var _ang = i * 51 + 10;
            draw_line_width(_gx, _gy, _gx + lengthdir_x(7, _ang), _gy + lengthdir_y(7, _ang), 1);
        }
        draw_set_color(make_color_rgb(250, 248, 236));
        draw_circle(_gx, _gy, 3, false);
        draw_set_alpha(1);
        draw_set_color(c_white);
    }
}