on_release = function(){
	// verifica se colidiu com o béquer 
	if (place_meeting(x, y, obj_becker_8)) { 
		var _becker =  instance_nearest(x, y, obj_becker_8)
		place_egg_in_becker(_becker)
	}
}