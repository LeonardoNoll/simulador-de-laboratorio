// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function menos_1_minuto(){
	var _cronometer = instance_nearest(0, 0, obj_cronometer)
	if(_cronometer.minutes > 0) {
		_cronometer.minutes--
	}
}