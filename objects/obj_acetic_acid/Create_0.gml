event_inherited()

name = "Ácido acético"

needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]

canPourAceticAcid = false // verifica se pode usar o ácido acético

// passa o ácido acético para o béquer 
on_release = function() {
	if(canPourAceticAcid){
		// verifica se colidiu com o béquer 
	    if (place_meeting(x, y, obj_becker_8)) { 
			var _becker =  instance_nearest(x, y, obj_becker_8)
			pour_acetic_acid(_becker)
		}
	}else{
		create_textbox(x + sprite_width, y, "Você ainda não pode usar o ácido acético.")
	}
}

