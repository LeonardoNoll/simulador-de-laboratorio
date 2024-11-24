// Destruir os 2 e instanciar novo objeto 
if(!other.drag_mode && !drag_mode) {
		instance_create_layer(x, y, "Instances", obj_syringe_and_bottle)
		instance_destroy(other.id)
		instance_destroy(self)
}