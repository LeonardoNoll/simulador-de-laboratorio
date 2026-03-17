// desliga a luz UV da capela de fluxo laminar 
function turn_off_UV(){
	// muda a sprite 
	with(global.selected){
		if(object_index == obj_laminar_flow_hood){
			sprite_index = s_laminar_flow_hood
		}
	} 

}