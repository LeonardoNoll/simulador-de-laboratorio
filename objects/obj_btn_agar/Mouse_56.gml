//limites do botão
var _half_w = width / 2
var _half_h = height / 2

var _left   = x - _half_w
var _right  = x + _half_w
var _top    = y - _half_h
var _bottom = y + _half_h

if (_left < mouse_x && mouse_x < _right && _top < mouse_y && mouse_y < _bottom) {

    // Destrói a tabela anterior, se existir
    if (instance_exists(obj_notes_table_9)) {
        instance_destroy(obj_notes_table_9)
    }

    // largura total da tabela
    var _table_width = 180 * array_length(textos_cabecalho)

    // x inicial (a tabela é criada no centro da tela)
    var _table_x = (room_width / 2) - (_table_width / 2)

    // cria a tabela
    instance_create_depth(
        _table_x,
        room_height / 2,
        depth - 1,
        obj_notes_table_9,
        {
            textos_cabecalho: textos_cabecalho,
            valores_ml: valores_ml,
            parent: id
        }
    );
}