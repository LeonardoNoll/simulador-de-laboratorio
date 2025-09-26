// Subject to change
function remove_itens_from_centrifuge(){
	array_delete_value(obj_centrifuge.options, OPTIONS.REMOVER_ITENS)
	
	with(obj_falcon_tube) {
		is_in_centrifuge = false
		on_release = insert_in_centrifuge // Subject to change
		sprite_index = s_falcon_tube_filled
		scale_pulse(self, 2, 0.15)
	}
	
	if(!obj_falcon_tube.centrifuged) return
				
	with(global.selected) {
		instance_create_layer(x - 20, y, "Instances", obj_water_bath)
		instance_create_layer(570, 420, "Instances", obj_erlenmeyer_experiment_4)
		instance_destroy(global.selected)
	}
}    