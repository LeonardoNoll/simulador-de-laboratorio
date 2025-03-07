/// @func use_text_input(_parent)
/// @param {Id.Instance} _parent
function use_text_input(_parent){
		_input = instance_create_layer(x,y,"GUI", obj_input)
		_input.parent = _parent
	return
}