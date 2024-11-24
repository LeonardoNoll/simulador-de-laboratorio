var _arr = messages[| message_id]
draw_set_font(fnt_text)

// Caixa
draw_sprite_stretched(s_text_box_9slice, 0, x, y, width, height);

// Texto
var _drawX = x + padding;
var _drawY = y + padding;
draw_set_color(c_black);
var _maxW = width-padding*2;
draw_text_ext(_drawX, _drawY, messageText, -1, _maxW);
