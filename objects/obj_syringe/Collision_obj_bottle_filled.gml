// Destruir os 2 e instanciar novo objeto 
if(!other.drag_mode && !drag_mode) {
	if(other.open) {
		instance_create_layer(x, y, "Instances", obj_syringe_and_bottle)
		instance_destroy(other.id)
		instance_destroy(self)
	} else {
		criar_textbox(x, y, ["voce nao pode fazer isso, o pote esta fechado", "abra o pote antes de inserir a seringa"])
		image_xscale = 1;
		image_yscale = 1;
		y = base_y
		x = base_x
	}
}