// Inherit the parent event
event_inherited();
name = "Solução de amido 1%"
needed_EPI = [obj_lab_coat]

on_release = function() {
	if(place_meeting(x,y,obj_erlenmeyer_experiment_4)) {
			spawn_context_menu([OPTIONS.PASSAR_LIQUIDO_ERLENMEYER])
	}
}
