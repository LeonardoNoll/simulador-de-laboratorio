// //@description desenha a linha para dividir o ovo 
function draw_a_line(_egg){
	if(_egg.sprite_index == s_egg){
		_egg.sprite_index = s_marked_egg;
	}
}