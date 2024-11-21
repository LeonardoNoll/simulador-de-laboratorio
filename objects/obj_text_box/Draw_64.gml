var _arr = messages[| message_id]

draw_set_font(fnt_text)

// Draw the text box sprite
draw_sprite_stretched(s_text_box_9slice, 0, x, y, width, height);

// Draw the message text
var _drawX = x + padding;
var _drawY = y + padding + 80;
draw_set_color(c_white);
var _maxW = width - (_drawX);
draw_text_ext(_drawX, _drawY, messageText, -1, _maxW);
