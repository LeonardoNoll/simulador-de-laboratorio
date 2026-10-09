var _is_mouse_hovering = (
	median(x, x + width, mouse_x) == mouse_x
	&& median(y, y + height, mouse_y) == mouse_y
)
if(!_is_mouse_hovering) return

var _iodine_control_color = global.liquids_experiment_4.iodine_control.color
var _has_finished_tube = false

for (var i = 0; i < instance_number(obj_test_tube_experiment_4); i++) {
	var _curr_test_tube = instance_find(obj_test_tube_experiment_4, i)

	// Considera apenas os tubos numerados de 0 a 7
	var _tube_name = _curr_test_tube.name
	if (is_undefined(_tube_name) || _tube_name == "") continue
	if (string_digits(_tube_name) != _tube_name) continue

	var _tube_number = real(_tube_name)
	if (_tube_number < 0 || _tube_number > 7) continue

	// O tubo precisa ter recebido uma alíquota do erlenmeyer. Sem essa checagem, um tubo
	// que só tem água destilada + iodo também terminaria com a cor do Controle Iodo.
	var _content = _curr_test_tube.content
	if (!is_struct(_content)) continue
	if (!variable_struct_exists(_content, "state")) continue
	if (!(struct_get(_content.state, "from_erlenmeyer") ?? false)) continue

	// A hidrólise completa é atingida quando a cor iguala a do Controle Iodo
	if (_content.color == _iodine_control_color) {
		_has_finished_tube = true
		break
	}
}

if (_has_finished_tube) {
	room_goto(rm_parabens)
	return
}

var _msg_x = x
var _msg_y = y

instance_destroy(parent)

create_textbox(_msg_x, _msg_y, ["Continue coletando alíquotas do erlenmeyer a cada 2 minutos até que a cor de um dos tubos fique igual à do Controle Iodo."])
