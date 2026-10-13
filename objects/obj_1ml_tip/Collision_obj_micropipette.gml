if(other.calibrated){
	other.sprite_index = s_micropipette_with_tip
	other.name = "micropipeta com ponteira de 1 ml"
	instance_destroy(self)
}else{
	create_textbox(x + sprite_width, y, "Primeiro você precisa calibrar a micropipeta")
}
