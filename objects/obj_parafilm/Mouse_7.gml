global.selected = noone
drag_mode = false;

if(place_meeting(x,y,obj_patient_head)) {
	if(instance_exists(obj_cronometer)) {
		instance_destroy(self)
		return
	}
	criar_textbox(mouse_x, mouse_y, ["Antes de dar ao paciênte o Parafilm, você deve prepara-lo de acordo com o roteiro."])
}

y = base_y
x = base_x
