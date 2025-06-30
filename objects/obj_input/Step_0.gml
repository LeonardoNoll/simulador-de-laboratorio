cursor_timer += 1;
if (cursor_timer >= cursor_interval) {
	cursor_visible = !cursor_visible;
	cursor_timer = 0;
}

if(keyboard_check_pressed(vk_enter)) {
	if(is_undefined(on_confirm)) 
		show_message("Nenhum callback definido!")
	else 
		on_confirm(string_trim(user_input), optional_args)
	keyboard_string = ""
	instance_destroy()
}

if(string_length(keyboard_string) < max_length) 
	user_input = keyboard_string
else 
	keyboard_string = user_input
