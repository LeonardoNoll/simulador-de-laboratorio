event_inherited();

if (ph > 0) {
    var _color;
    if (ph < 1)      _color = make_colour_rgb(233, 28, 38);
    else if (ph < 2) _color = make_colour_rgb(237, 102, 37);
    else if (ph < 3) _color = make_colour_rgb(243, 194, 19);
    else if (ph < 4) _color = make_colour_rgb(240, 232, 29);
    else if (ph < 5) _color = make_colour_rgb(178, 208, 54);
    else if (ph < 6) _color = make_colour_rgb(79, 182, 75);
    else if (ph < 7) _color = make_colour_rgb(80, 183, 75);
    else if (ph < 8) _color = make_colour_rgb(53, 169, 76);
    else if (ph < 9) _color = make_colour_rgb(38, 180, 108);
    else if (ph < 10) _color = make_colour_rgb(14, 183, 183);
    else if (ph < 11) _color = make_colour_rgb(71, 144, 204);
    else if (ph < 12) _color = make_colour_rgb(59, 84, 165);
    else if (ph < 13) _color = make_colour_rgb(102, 71, 158);
    else if (ph < 14) _color = make_colour_rgb(91, 82, 163);
    else if (ph < 15) _color = make_colour_rgb(72, 47, 133);
    else              _color = c_black;
    
    draw_set_color(_color);
    draw_rectangle(x - sprite_width / 2, y + sprite_height / 2, x + sprite_width / 2 - 1, y + sprite_height / 2 - 18, false);
}
