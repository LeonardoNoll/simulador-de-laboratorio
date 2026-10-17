var _box_w = 400;
var _box_h = 320;
var _box_x = x - _box_w/2;
var _box_y = y - _box_h/2;

var _btn_w = 80;
var _btn_h = 30;
var _btn_x = _box_x + _box_w/2 - _btn_w/2;
var _btn_y = _box_y + _box_h - 50;

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (_mx >= _btn_x && _mx <= _btn_x + _btn_w && _my >= _btn_y && _my <= _btn_y + _btn_h){
    instance_destroy();
}