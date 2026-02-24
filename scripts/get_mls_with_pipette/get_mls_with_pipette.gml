/// function get_mls_with_pípette(_interaction_list)
/// @param {array} _interaction_list	Lista de itens que devem ativar esta função da pipeta
/// @description							função genérica para puxar o líquido de um bécker para a pipeta
function get_mls_with_pipette(_interaction_list){
	if(!place_meeting(x,y,_interaction_list)) return
	
	var _other = find_closest_on_interaction_list(_interaction_list)
	
	if(used != "" && used !=  _other.content) {
		create_textbox(x, y, ["Você não pode utilzar em mais de um líquido a mesma pipeta. Troque a pipeta por uma nova."])
		return
	}
	if(_other.content == "") {
		create_textbox(x,y, ["Você não pode coletar o líquido de um recipiente vazio."])	
		return
	}
	
	take_ml_input(_other)
}