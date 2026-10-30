// liga o agitador magnético 
function magnetic_stirrer(_becker = undefined){
	with(global.selected){
		// muda a sprite de acordo com a room do experimento 
		if(object_index == obj_glass_jar_with_lid){
				
			if(room == rm_preparacao_de_meios_de_cultura_em_caldo){
				sprite_index = s_glass_mixed
					
			}else if(room == rm_preparacao_de_meios_de_cultura_em_agar){
				sprite_index = s_glass_agar_mixed
			}
		}
	}
	if (room == rm_6_saliva_na_titulacao_de_bebidas_acidas){
		var _stirrer = obj_magnetic_stirrer_experiment_6
		var _becker_ref = _stirrer.becker
		if (!instance_exists(_becker_ref)) {
			_becker_ref = obj_phmetro.becker
		}
		if (!instance_exists(_becker_ref)) {
			create_textbox(_stirrer.x, _stirrer.y, "Coloque o béquer com a bebida sobre o agitador antes de ligá-lo")
			return
		}
		_becker_ref.name = _becker_ref.name + " - agitando"
		_becker_ref.agitando = true
		_stirrer.options = [OPTIONS.DESLIGAR_AGITADOR]
	}
}
