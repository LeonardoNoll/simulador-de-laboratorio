//@function close_lid()
//@description deixa a tampa entreaberta
function lid_ajar(){
	with(global.selected){
		if(object_index == obj_glass_jar_with_lid){
			if(room = rm_preparacao_de_meios_de_cultura_em_caldo){
				sprite_index = s_glass_mixed_autoclave
			}else if(room = rm_preparacao_de_meios_de_cultura_em_agar){
				sprite_index = s_glass_agar_mixed_autoclave
			}
		}
	}
}

