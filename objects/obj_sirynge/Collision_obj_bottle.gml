// Destruir os 2 e instanciar novo objeto 
if(!other.drag_mode && !drag_mode) {
	if(other.open) {
		instance_create_layer(x, y, "Instances", obj_syringe_and_bottle)
		instance_destroy(other.id)
		instance_destroy(self)
	} else {
		x = x + 100
		criar_textbox(["voce nao pode fazer isso, o pote esta vazio", "abra o pote antes de inserir a seringa"])
	}
}