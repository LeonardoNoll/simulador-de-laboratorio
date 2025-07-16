if(device_mouse_check_button_released(0, mb_left)) {
	writable = point_in_rectangle(mouse_x, mouse_y, x, y, x+width, y+height)
	
	if(writable) {
		if(text = "0") {
			keyboard_string = ""
		} else {
			keyboard_string = text
		}
	}
}

if(writable) {
	if(string_length(keyboard_string) < max_text_length ) {
		text = string_digits(keyboard_string)
		update_notes_texts()
		try_instantiate_buffer_capacity()
	}
	
	cursor_timer += 1;
	if (cursor_timer >= cursor_interval) {
		cursor_visible = !cursor_visible;
		cursor_timer = 0;
	}
}
	

