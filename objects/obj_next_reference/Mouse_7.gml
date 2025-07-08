obj_btn_instructions.instruction++
if(obj_btn_instructions.instruction == array_length(obj_btn_instructions.instructions_list) - 1) {
	instance_destroy(self)
}