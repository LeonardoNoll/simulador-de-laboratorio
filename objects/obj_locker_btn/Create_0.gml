event_inherited();
name = "Armário de EPIs"

// No HTML5 a Object Variable "itens" (Expression) às vezes não chega como array.
if (!variable_instance_exists(id, "itens") || !is_array(itens)) {
	itens = [obj_glove, obj_lab_coat, obj_goggles]
}
