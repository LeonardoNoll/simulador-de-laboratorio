// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function diagnosticar(){
		var _my_menu = instance_create_layer(x + sprite_width + 20,  y, "Instances", obj_menu)  // Cria o menu
			_my_menu.options = [
				OPTIONS.HIPOSSALIVACAO,
				OPTIONS.POUCA_SALIVACAO,
				OPTIONS.SALIVACAO_NORMAL
			]// Seta as opçoes do menu
}