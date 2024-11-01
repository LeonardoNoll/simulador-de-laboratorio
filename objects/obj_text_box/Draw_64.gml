var _arr = messages[| message_id]

//var _name = _arr[MSG.NAME]
//var _image = _arr[MSG.TEXT]

draw_set_font(fnt_text)

draw_sprite_stretched(s_text_box_9slice, 0, x, y, room_width, 500)


var _drawX = x + padding
var _drawY = y + padding + 80

draw_set_color(c_white)

var _maxW = width - (_drawX + padding)

draw_text_ext(_drawX, _drawY, messageText, -1, _maxW)

