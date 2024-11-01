// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sugar(){
	if(global.selected.object_index == obj_syringe_and_bottle) {
		_syringe_and_bottle = instance_nearest(x, y, obj_syringe_and_bottle)
		_syringe_and_bottle.sprite_index = s_sb_after
		_syringe_and_bottle.options = [OPTIONS.CHECAR]
		_syringe_and_bottle.sugado = true
	}
}