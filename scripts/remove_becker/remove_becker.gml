function remove_becker(){
	if obj_phmetro.sprite_index != s_phmetro_medindo{
		with global.selected{
			if string_pos("agitando", name) == 0 {
			x = x_original
			y = y_original
			base_x = x_original
			base_y = y_original
			locked = false
			options = []
			if sprite_index != s_marked_becker_with_water {
				options = [OPTIONS.LIMPAR_BECKER]
				name = original_name
				}
			}else{
				create_textbox(x, y, "pare de agitar antes de retirar o becker do agitador")
			}
			}
		}else{
			create_textbox(x, y, "Pare de medir antes de remover o becker do phmetro")		
	}
}