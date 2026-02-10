function water_bath(){
	
		// verifica se o frasco está com a tampa fechada
		if(obj_glass_jar_with_lid.sprite_index == s_glass_agar_with_lid){
			// verifica a temperatura 
			function check_temp(_text){
				if (real(_text) != 45) {
		            create_textbox(mouse_x, mouse_y, ["Este não é o valor correto. Tente novamente."])
         
		            get_input(x - 5, y - 25, "Temperatura:", check_temp)
				}
			}
	
			get_input(x - 5, y - 25, "Temperatura:", check_temp)
		
		}else{
			create_textbox(mouse_x-50, mouse_y-100,
		            ["O frasco com a mistura de ágar e água destilada precisa estar fechado."])
		    return
		}
		
		// preparação da capela de fluxo laminar 
		with(obj_laminar_flow_hood){
				options = [OPTIONS.LIGAR_LUZ_ULTRAVIOLETA]
		}
}