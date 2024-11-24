// Pega mensagem do array para a variavel
var _arr = messages[| message_id]
var _text = MSG.TEXT

//Texto
messageText = messages[| message_id]

// Definição manual da hitbox
hitbox_left = x;
hitbox_right = x + width;
hitbox_top = y;
hitbox_bottom = y + height;

//Logica do skip de mensagem
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
	// Próxima mensagem
	if (message_id < ds_list_size(messages) - 1) {
		message_id++
	}
	// Fecha a caixa
	else {
		instance_destroy() 
	}
}