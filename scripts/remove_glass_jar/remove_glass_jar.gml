// remove o frasco da autoclave: cria uma instância na mesa 
function remove_glass_jar(){
	
	var jar
	
	// muda a sprite e a posição final do frasco de vidro de acordo com a room 
	if(room == rm_preparacao_de_meios_de_cultura_em_caldo){
		var mesa_x = 1050
		var mesa_y = 437
		var jar = instance_create_layer(mesa_x, mesa_y, "Instances", obj_glass_jar_with_lid)

		jar.sprite_index = s_glass_mixed_autoclave
		jar.name = "Mistura de caldo BHI e água destilada"  // mudar para o nome da mistura
		
	}else if(room == rm_preparacao_de_meios_de_cultura_em_agar){
		var mesa_x = 749
		var mesa_y = 437
		var jar = instance_create_layer(mesa_x, mesa_y, "Instances", obj_glass_jar_with_lid)

		jar.sprite_index = s_glass_agar_mixed_autoclave
		jar.name = "Mistura de ágar e água destilada"  // mudar para o nome da mistura
	}
	
	
	// mostra a opção para fechar a tampa
	if (jar != noone) {
        jar.options = [OPTIONS.FECHAR_TAMPA];
		jar.dragging = true; // se seu Step usa essa variável para drag
        jar.holding = true;  // ou qualquer outra variável que seu Step use para manter o frasco “seguindo o mouse”
    }	
}
