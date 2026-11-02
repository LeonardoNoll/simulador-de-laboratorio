var _box_w = 400; // Define a largura da caixa
var _box_h = 320; // Define a altura da caixa
var _box_x = x - _box_w/2; // Calcula a posição horizontal da caixa
var _box_y = y - _box_h/2; // Calcula a posição vertical da caixa

var _btn_w = 80; // Define a largura do botão
var _btn_h = 30; // Define a altura do botão
var _btn_x = _box_x + _box_w/2 - _btn_w/2; // Calcula a posição horizontal do botão
var _btn_y = _box_y + _box_h - 50; // Calcula a posição vertical do botão

var _mx = device_mouse_x_to_gui(0); // Obtém a posição horizontal do mouse na GUI
var _my = device_mouse_y_to_gui(0); // Obtém a posição vertical do mouse na GUI

// Verifica se o mouse está dentro dos limites do botão
if (_mx >= _btn_x && _mx <= _btn_x + _btn_w && _my >= _btn_y && _my <= _btn_y + _btn_h){
    instance_destroy(); // Fecha o aviso ao clicar no botão
}