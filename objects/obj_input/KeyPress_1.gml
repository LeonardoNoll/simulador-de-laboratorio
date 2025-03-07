if(keyboard_check_pressed(vk_enter)) {
	parent.name = value
	keyboard_string = ""
	instance_destroy()
}

if(string_length(value) <= max_length) value = keyboard_string
else keyboard_string = value