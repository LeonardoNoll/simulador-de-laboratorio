cursor_timer += 1;
if (cursor_timer >= cursor_interval) {
    cursor_visible = !cursor_visible;
    cursor_timer = 0;
}

// Confirmar com Enter
if (keyboard_check_pressed(vk_enter)) {
    if (is_undefined(on_confirm)) {
        show_message("Nenhum callback definido!");
    } else {
        on_confirm(string_trim(user_input), optional_args);
    }
    instance_destroy();
}

// Captura caracteres (inclusive acentos)
var c = keyboard_lastchar;
if (c != "") {
	show_debug_message(c)
    var code = ord(c);
    if (code > 31 && string_length(user_input) < max_length) {
        user_input += c;
    }
    keyboard_lastchar = "";
}

// Apagar com Backspace ou Delete
if (keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(vk_delete)) {
    if (string_length(user_input) > 0) {
        user_input = string_delete(user_input, string_length(user_input), 1);
    }
}

// Opcional: impedir crescimento de input além do limite
if (string_length(user_input) > max_length) {
    user_input = string_copy(user_input,1,max_length);
}
