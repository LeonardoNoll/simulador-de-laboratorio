var _text_scale = 0.5

var _half_w = width / 2
var _half_h = height / 2

var _left   = x - _half_w
var _right  = x + _half_w
var _top    = y - _half_h
var _bottom = y + _half_h

var _is_mouse_hovering = _left < mouse_x && mouse_x < _right && _top < mouse_y && mouse_y < _bottom

var _y_offset = _is_mouse_hovering ? 12 : 0

if (!_is_mouse_hovering) {
    draw_set_color(#5C81A4)
    draw_roundrect_ext(_left, _top, _right, _bottom + 12, radius, radius, false)
}

draw_set_color(#7EC1FF)
draw_roundrect_ext(_left, _top + _y_offset, _right, _bottom + _y_offset, radius, radius, false)

draw_set_color(#fbfbfb)
draw_set_font(fnt_menu_btn)

// Desenhar o texto centralizado
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)

draw_text_ext_transformed(x,y + _y_offset,button_text,-1,width,_text_scale,_text_scale,0)