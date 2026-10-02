// Subject to change
function remove_itens_from_centrifuge(){
	if (room == rm_da_concentracao_de_fluor_soluvel_FST){
		update_test_tube()
	}else{
		update_falcon_tube()

		array_delete_value(obj_centrifuge.options, OPTIONS.REMOVER_ITENS)
		if(!obj_falcon_tube.centrifuged) {
			return
		}
				
		spawn_water_bath()
	}
	
}   

function update_falcon_tube() {
	with(obj_falcon_tube) {
		is_in_centrifuge = false
		on_release = centrifuged ? try_to_pass_liquid_to_test_tube_experiment_4 : insert_in_centrifuge
		sprite_index = s_falcon_tube_filled
		content_id = global.liquids_experiment_4.saliva.id
		scale_pulse(self, 2, 0.15)
	}
}

function update_test_tube() {
	with(obj_filled_test_tube_1){
		is_in_centrifuge = false
		sprite_index = s_tubo_test
		scale_pulse(self, 2, 0.15)
	}
	with(obj_filled_test_tube_2){
		is_in_centrifuge = false
		sprite_index = s_tubo_test
		scale_pulse(self, 2, 0.15)
	}
	with(obj_filled_test_tube_3){
		is_in_centrifuge = false
		sprite_index = s_tubo_test
		scale_pulse(self, 2, 0.15)
	}
	with(obj_filled_test_tube_4){
		is_in_centrifuge = false
		sprite_index = s_tubo_test
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