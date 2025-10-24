padding = 4
gap = 4
w = 200 + padding * 2
h = padding * 2

if(!is_array(options) || array_length(options) == 0) return;

h += 24 * array_length(options)
for(var _i = 0; _i < array_length(options); _i++) {
	var _my_btn = instance_create_depth(x + padding, y + padding + 24 * _i, depth-1, obj_context_btn, {
		option: options[_i],
	})
}