// 0 = fora da placa | 1 = tocou o ágar vazio | 2 = tocou a colônia
function toque_colonia(_x, _y){
    if (!instance_exists(obj_colonia)) return 0;

    var _placa = collision_rectangle(_x - 10, _y - 14, _x + 10, _y + 10, obj_colonia, false, false);
    if (_placa == noone) return 0;

    var _centro = (_placa.bbox_left + _placa.bbox_right) / 2;
    return (abs(_x - _centro) <= 22) ? 2 : 1;
}