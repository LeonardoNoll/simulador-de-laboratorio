function is_becker_ready(becker){
	if (becker.name == "Bécker 25ml") {
		create_textbox(becker.x,becker.y, ["Você ainda não marcou este recipiente"])
		return false
	}
	if (becker.content != "") {
		create_textbox(becker.x, becker.y, ["Você não pode colocar líquido em um béquer já preenchido"])
		return false
	}
	return true
}