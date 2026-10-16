// Subject to change
function remove_itens_from_centrifuge(){
	if (room == rm_da_concentracao_de_fluor_soluvel_FST){
		//criar IF para saber se foi centrifugado, posso criar dentro da função, ou aqui
		update_test_tube()
	}else{
		update_falcon_tube()

		
		if(!obj_falcon_tube.centrifuged) {
			return
		}
				
		spawn_water_bath()
	}
	array_delete_value(obj_centrifuge.options, OPTIONS.REMOVER_ITENS)
	
}   

function update_falcon_tube() {
	with(obj_falcon_tube) {
		is_in_centrifuge = false
		//checa se ele foi centrifugado, em suma é um if e else
		on_release = centrifuged ? try_to_pass_liquid_to_test_tube_experiment_4 : insert_in_centrifuge
	sprite_index = s_falcon_tube_filled
		content_id = global.liquids_experiment_4.saliva.id
		scale_pulse(self, 2, 0.15)
	}
}

function update_test_tube() {
	with(obj_filled_test_tube_1){
			if (centrifuged == true) {
				sprite_index = s_tubo_test
			}else {
				sprite_index = s_filled_test_tube_1
				on_release = insert_in_centrifuge
				array_delete_value(options,OPTIONS.REMOVER_ITENS)
			scale_pulse(self, 2, 0.15)
			}
		}
	with(obj_filled_test_tube_2){
		if (is_in_centrifuge = true){
			is_in_centrifuge = false
			if (centrifuged == true) {
				sprite_index = s_tubo_test
			}else {
				sprite_index = s_filled_test_tube_2
				//array_delete_value(obj_centrifuge.options,OPTIONS.REMOVER_ITENS)
			scale_pulse(self, 2, 0.15)
			}
		}
	}
	with(obj_filled_test_tube_3){
		if (is_in_centrifuge = true){
			is_in_centrifuge = false
			if (centrifuged == true) {
				sprite_index = s_tubo_test
			}else {
				sprite_index = s_filled_test_tube_3
				array_delete_value(options,OPTIONS.REMOVER_ITENS)
			scale_pulse(self, 2, 0.15)
			}
		}
	}
	with(obj_filled_test_tube_4){
		if (is_in_centrifuge = true){
			is_in_centrifuge = false
			if (centrifuged == true) {
				sprite_index = s_tubo_test
			}else {
				sprite_index = s_filled_test_tube_4
				array_delete_value(options,OPTIONS.REMOVER_ITENS)
			scale_pulse(self, 2, 0.15)
			}
		}
	}
}



function spawn_water_bath(){
	with(global.selected) {
		instance_create_layer(x - 20, y, "Instances", obj_water_bath)
		instance_create_layer(570, 420, "Instances", obj_erlenmeyer_experiment_4)
		instance_destroy()
	}
}