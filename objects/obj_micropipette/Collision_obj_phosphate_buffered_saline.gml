if(room == rm_coleta_de_biofilme_supragengival_2){
	if(obj_phosphate_buffered_saline.sprite_index == s_phosphate_buffered_saline_open){
		on_release = get_phosphate_buffered_saline()
	}else{
		create_textbox(x, y, "Primeiro você precisa abrir a tampa.")
	}
}
