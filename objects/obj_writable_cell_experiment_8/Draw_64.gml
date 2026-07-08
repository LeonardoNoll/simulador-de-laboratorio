/*if (cursor_visible && writable) {
    var length = min(string_width(text), width - padding * 2);
	var height = string_height(10) + padding;
	draw_line(x + length, y, x + length, y + height);
	
}*/

// cursor acompanha o texto 
if (cursor_visible && writable) {
    var line_height = string_height("A")
    var available_width = width - padding * 2;

    var current_line = "";
    var line_count = 0;

    for (var i = 1; i <= string_length(text); i++) {
        var c = string_char_at(text, i);

        if (string_width(current_line + c) > available_width) {
            line_count++;
            current_line = c;
        } else {
            current_line += c;
        }
    }

    var cursor_x = x + padding + string_width(current_line);
    var cursor_y = y + padding + line_count * line_height;

    draw_line(
        cursor_x,
        cursor_y,
        cursor_x,
        cursor_y + line_height
    );
}

