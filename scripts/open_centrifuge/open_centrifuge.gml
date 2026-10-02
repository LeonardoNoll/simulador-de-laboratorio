function open_centrifuge(){
	with(obj_centrifuge) {
		sprite_index = s_centrifuge_open
		options = [OPTIONS.FECHAR_CENTRIFUGA]
		if (room == rm_da_concentracao_de_fluor_soluvel_FST) {
			var filled_tube = instance_nearest(x,y,obj_filled_test_tube_1)
			if(filled_tube.is_in_centrifuge) {
				array_push(options, OPTIONS.REMOVER_ITENS)
		}
		}
		else {
			var falcon_tube = instance_nearest(x,y,obj_falcon_tube)
			if(falcon_tube.is_in_centrifuge) {
			array_push(options, OPTIONS.REMOVER_ITENS)
		}
		}
	}
}