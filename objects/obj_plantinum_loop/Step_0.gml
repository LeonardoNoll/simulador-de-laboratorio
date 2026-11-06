// Inherit the parent event
event_inherited();

var _fogo = collision_point(mouse_x, mouse_y, obj_hitbox_fogo, true, true);

if (_fogo != noone) {
    options = [OPTIONS.ESTERELIZAR_ALCA];
}
else {
    options = [];
}