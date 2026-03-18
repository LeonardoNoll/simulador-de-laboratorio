// passa o sangue para o frasco de vidro com a mistura de ágar
function mix_blood_with_agar(){
	var _jar = instance_nearest(x, y, obj_glass_jar_with_lid)
	_jar.sprite_index = s_agar_and_blood // muda a sprite
		
	_jar.name = "Frasco de vidro com a mistura de ágar e sangue" // muda o nome

}