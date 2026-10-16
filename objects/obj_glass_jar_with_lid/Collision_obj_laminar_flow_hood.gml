if (obj_laminar_flow_hood.sprite_index == s_laminar_flow_hood_petri_2){
	on_release = laminar_flow_hood_with_glass_jar_with_lid(other) // adiciona as placas de petri
}else if(obj_laminar_flow_hood.sprite_index == s_laminar_flow_hood_UV){
		create_textbox(x + sprite_width, y, "Primeiro você precisa desligar a luz ultravioleta.")
}else{
	create_textbox(x + sprite_width, y, "Primeiro você precisa levar as placas de Petri.")
}
