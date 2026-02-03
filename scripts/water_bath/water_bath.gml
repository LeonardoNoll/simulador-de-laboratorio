function water_bath(){

	on_release = function() {
		
		if(place_meeting(x,y, obj_water_bath_7)) {
			
			if(obj_glass_jar_with_lid.sprite_index == s_glass_agar_with_lid){
				var _water_bath = instance_nearest(x, y, obj_water_bath_7)
				
				// posiciona o frasco de vidro dentro do banho-maria 
				base_x = 270
				base_y = 428
				
				on_release = undefined
				locked = true
				
				// verificação da temperatura 
				var gr = function(_text) {
				
					if(real(_text) != 45) {
						create_textbox(mouse_x, mouse_y,
						      ["Este não é o valor correto. Tente novamente."])
					    get_input(x - 5, y - 25, "Temperatura:", gr); 
					}
				}
				get_input(x - 5, y - 25, "Temperatura:", gr)
	
			}else{
				create_textbox(mouse_x-50, mouse_y-100,
		            ["O frasco com a mistura de ágar e água destilada precisa estar fechado."])
		        return
			}
			
			with(obj_laminar_flow_hood){
				options = [OPTIONS.LIGAR_LUZ_ULTRAVIOLETA]
			}
			
		}
	}	
}