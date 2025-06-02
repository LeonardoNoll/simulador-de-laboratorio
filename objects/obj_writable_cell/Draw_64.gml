if (cursor_visible && writable) {
    var length = string_width(text) + padding;
    var height = string_height(text) + padding;
    draw_line(x + length, y, x + length, y + height);
}

