function open_centrifuge(){
	with(obj_centrifuge) {
		sprite_index = s_centrifuge_open
		options = [OPTIONS.FECHAR_CENTRIFUGA]
		var falcon_tube = instance_nearest(x,y,obj_falcon_tube)
		if(falcon_tube.is_in_centrifuge) {
			array_push(options, OPTIONS.REMOVER_ITENS)
		}
	}
}