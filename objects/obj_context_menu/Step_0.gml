if (!initialized) {
	initialized = true
	h += 24 * array_length(options)
	for(var _i = 0; _i < array_length(options); _i++) {
		var _my_btn = instance_create_depth(x + padding, y + padding + 24 * _i, depth-1, obj_context_btn)
		_my_btn.option = options[_i]
		_my_btn.parent = parent
	}
}