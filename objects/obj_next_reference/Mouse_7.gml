obj_btn_instructions.instruction++

if(!is_array(obj_instructions.instructions)) return

if(obj_btn_instructions.instruction == array_length(obj_instructions.instructions) - 1) {
	instance_destroy()
}