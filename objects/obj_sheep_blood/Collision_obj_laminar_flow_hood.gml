if(obj_laminar_flow_hood.sprite_index == s_laminar_flow_hood_glass_jar){
	room_goto(rm_laminar_flow_hood) // muda para a room da capela de fluxo laminar 
}else{
	create_textbox(x + sprite_width, y, "Primeiro leve o frasco de vidro com a mistura até a capela de fluxo laminar.")
}


