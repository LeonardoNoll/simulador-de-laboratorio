obj_btn_question.page++
if(obj_btn_question.page == array_length(obj_instructions.instructions_list) - 1) {
	instance_destroy(self)
}