if(device_mouse_check_button_released(0, mb_left)) {
	writable = point_in_rectangle(mouse_x, mouse_y, x, y, x+width, y+height)

	if(writable) {
		keyboard_string = text
	}
}

if(writable) {
	if(string_length(keyboard_string) < max_text_length ) {
		text = keyboard_string

		if (instance_exists(parent) && instance_exists(parent.parent)) {
			update_notes_texts_experiment_4(parent.parent)
		}
	}

	cursor_timer += 1
	if (cursor_timer >= cursor_interval) {
		cursor_visible = !cursor_visible
		cursor_timer = 0
	}
}
