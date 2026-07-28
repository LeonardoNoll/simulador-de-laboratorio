/*if(device_mouse_check_button_released(0, mb_left)) {
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
		update_notes_texts_experiment_9(parent.parent)
	}
	
	cursor_timer += 1
	if (cursor_timer >= cursor_interval) {
		cursor_visible = !cursor_visible
		cursor_timer = 0
	}
}*/
if(device_mouse_check_button_released(0, mb_left)) {
	writable = point_in_rectangle(mouse_x, mouse_y, x, y, x+width, y+height)
	
	if(writable) {
		if(text == "0") {
			keyboard_string = ""
		} else {
			keyboard_string = text
		}
	}
}

if(writable) {
	if(string_length(keyboard_string) < max_text_length ) {
		text = keyboard_string
		var _btn = instance_find(obj_btn_notes_table_9, 0)

		if (instance_exists(_btn)) {
			update_notes_texts_experiment_9(parent.parent)
		}
		try_instantiate_buffer_capacity()
	}
	
	cursor_timer += 1
	if (cursor_timer >= cursor_interval) {
		cursor_visible = !cursor_visible
		cursor_timer = 0
	}
}


	




	

