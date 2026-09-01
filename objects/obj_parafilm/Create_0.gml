// Inherit the parent event
event_inherited();

name = "Parafilm"
readyToUse = false


on_release = function() {
	if(place_meeting(x,y,obj_patient)) {
		create_textbox(mouse_x, mouse_y, ["Antes de dar o Parafilm ao paciente, identifique o béquer e dê-o ao paciente"])
		return
	}

	if(place_meeting(x,y,obj_patient_head)) {
		var _patient_head = instance_nearest(x,y, obj_patient_head)

		if(!_patient_head.pronto_para_coleta) {
			create_textbox(mouse_x, mouse_y, ["Antes de dar o Parafilm ao paciente, posicione o paciente num ângulo de 45º"])
			return
		}

		if(!instance_exists(obj_cronometer)) {
			create_textbox(mouse_x, mouse_y, ["Antes de dar o Parafilm ao paciente, interaja com o béquer para preparar a coleta"])
			return
		}

		instance_destroy()
	}
}
