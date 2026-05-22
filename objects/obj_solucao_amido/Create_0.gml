// Inherit the parent event
event_inherited();
name = "Solução de amido 1%"
needed_EPI = [obj_lab_coat]
content_id = "starch"
content = undefined;

// Define o estado inicial para quando o líquido for instanciado
initial_liquid_state = {
	minutes_passed: 0,
	saliva_added: false
};

on_release = function() {
	if(place_meeting(x,y,obj_erlenmeyer_experiment_4)) {
		ensure_liquid_instance(id);
		spawn_context_menu([OPTIONS.PASSAR_LIQUIDO_ERLENMEYER])
	}
}




