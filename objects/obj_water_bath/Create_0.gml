event_inherited()

name = "Banho Maria"
locked = true

temperature = 0
shaking = false
erlenmeyer = noone

if(room == rm_preparacao_de_meios_de_cultura_em_agar){
	needed_EPI = [obj_glove,obj_lab_coat, obj_mask]
}

options = [OPTIONS.USAR_BANHO_MARIA]


