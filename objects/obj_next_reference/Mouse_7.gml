obj_instructions.current_sprite++
if(obj_instructions.current_sprite == array_length(obj_instructions.instructions_list) - 1) {
	instance_destroy(self)
}