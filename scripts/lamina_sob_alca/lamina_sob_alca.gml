function lamina_sob_alca(_x, _y){
    var _l = collision_rectangle(_x - 10, _y - 14, _x + 10, _y + 10, obj_microscope_slide, false, false);
    if (_l != noone && !_l.visible) return noone;
    return _l;
}