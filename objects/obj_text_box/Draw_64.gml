var _arr = messages[| message_id]
draw_set_font(fnt_text)

// Posição
var _drawX = x + padding;
var _drawY = y + padding;
var _maxW = width-padding*2;


// Calculo da altura
var line_height = string_height("A"); // Altura base de uma linha
var text_height = string_height_ext(messageText,-1, _maxW); 
var num_lines = ceil(text_height / (line_height)) * 20;

// Caixa
draw_sprite_stretched(s_text_box_9slice, 0, x, y, width, num_lines+padding*2);

// Texto
draw_set_color(c_black);
draw_text_ext(_drawX, _drawY, messageText, -1, _maxW);

// X
//draw_sprite(s_x, 0, x+width-5, y)