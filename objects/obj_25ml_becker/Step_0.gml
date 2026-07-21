// Inherit the parent event
event_inherited();

if(previous_name != name) {
	show_debug_message(name)
	show_debug_message(previous_name)
}

previous_name = name

// NOTE: Não sei porque, mas isto resolve um bug relacionado ao nome do objeto