name = "Não Setado"
xx = 0
yy = 0
base_x = x 
base_y = y
options = []
scale_on_contact_list = []
tool_tip = noone
on_release = undefined
drag_mode = false;
locked = false
scale_pulse_data = undefined
default_depth = depth


needed_EPI = []

if (instance_exists(obj_locker_btn)) {
	var _locker = instance_find(obj_locker_btn, 0)
	if (variable_instance_exists(_locker, "itens") && is_array(_locker.itens)) {
		array_copy(needed_EPI, 0, _locker.itens, 0, array_length(_locker.itens))
	} else {
		needed_EPI = [obj_glove, obj_lab_coat, obj_goggles]
	}
} else {
	needed_EPI = [obj_glove, obj_lab_coat, obj_goggles]
}