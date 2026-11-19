function sterile_petri_dish_name_validation(_petri){
	if(_petri.name != string_normalize("bhi sangue")){
		create_textbox(_petri.x, y-110, "A placa não foi identificada corretamente. Você deve reidentificá-la utilizando o nome do meio de cultura.")
	}else{
		// identifica a placa 
		if (!_petri.validated && _petri.name == string_normalize("bhi sangue")) {
            _petri.validated = true
            global.identified_petri_dish++
        }

// verifica se as duas placas foram identificadas para exibir a mensagem 
        if (global.identified_petri_dish == 2) {
            create_textbox(_petri.x, _petri.x-110, "As placas identificadas serão reservadas em local adequado para evitar a contaminação até o momento do uso.");
        }
	}
}

