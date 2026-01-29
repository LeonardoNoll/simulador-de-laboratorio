// define a temperatura do banho-maria 
function turn_on_water_bath(){
	
	var gr = function(_text) {
		// verificação da temperatura 
		if(real(_text) != 45) {
			create_textbox(mouse_x, mouse_y,
			      ["Este não é o valor correto. Tente novamente."])
		}
	}
	get_input(x - 5, y - 25, "Temperatura:", gr)
}

