// para o cursor
if (cursor_visible && writable) {
    var line_height = string_height("A") // pega o tamanho de A como referência
    var available_width = width - padding * 2 // verifica espaço disponível

    var words = string_split(text, " ")
    var current_line = ""
    var line_count = 0

    for (var i = 0; i < array_length(words); i++) {
        var test_line

        if (current_line == "") {
            test_line = words[i]
        } else {
            test_line = current_line + " " + words[i]
        }

        if (string_width(test_line) > available_width) {
            line_count++
            current_line = words[i]
        } else {
            current_line = test_line
        }
    }

    var cursor_x = x + padding + string_width(current_line)
    var cursor_y = y + padding + line_count * line_height

    draw_line(
        cursor_x,
        cursor_y,
        cursor_x,
        cursor_y + line_height
    )
}

