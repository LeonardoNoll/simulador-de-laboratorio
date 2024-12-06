// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cronometrar_coleta(){
	with (obj_cronometer) {
		counting_down = true
		if(!array_contains(options, OPTIONS.ACELERAR_CONTAGEM))  {
			array_push(options, OPTIONS.ACELERAR_CONTAGEM)
		}
	}
}