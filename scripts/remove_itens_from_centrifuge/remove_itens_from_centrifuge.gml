// Subject to change
function remove_itens_from_centrifuge(){
	update_falcon_tube()

	array_delete_value(obj_centrifuge.options, OPTIONS.REMOVER_ITENS)
	if(!obj_falcon_tube.centrifuged) {
		return
	}
				
	spawn_water_bath()
}   

function update_falcon_tube() {
	with(obj_falcon_tube) {
		is_in_centrifuge = false
		on_release = centrifuged ? undefined : insert_in_centrifuge
		sprite_index = s_falcon_tube_filled
		scale_pulse(self, 2, 0.15)
	}
}

function spawn_water_bath(){
	with(global.selected) {
		instance_create_layer(x - 20, y, "Instances", obj_water_bath)
		instance_create_layer(570, 420, "Instances", obj_erlenmeyer_experiment_4)
		instance_destroy()
	}
}