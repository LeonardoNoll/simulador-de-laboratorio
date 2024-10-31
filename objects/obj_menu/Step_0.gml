if (!initialized) {
	initialized = true
	h += 20 * array_length(options)
	for(var _i = 0; _i < array_length(options); _i++) {
		var _my_btn = instance_create_layer(x + padding, y + padding + 20 * _i, "GUI", obj_context_btn)
		_my_btn.option = options[_i]
	}
}