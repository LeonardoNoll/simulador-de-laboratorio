// cria a ponteira quando o usuário clicar na caixa de ponteiras 
if(room == rm_coleta_de_biofilme_supragengival_2){
	var tip = instance_create_layer(mouse_x, mouse_y, "Instances", obj_1ml_tip)
	tip.drag_mode = true
}