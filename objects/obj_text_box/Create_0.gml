// Prevenir que a text_box saia da tela
if(x > 850) x = 850

//Lógica do array de mensagens
messages = ds_list_create();
message_id = 0;
messageText = "";
enum MSG { TEXT }

// Dimensões
height = 200;
width = 400;

// Definição manual da hitbox
hitbox_left = x;
hitbox_right = x + width;
hitbox_top = y;
hitbox_bottom = y + height;
padding = 24;

// Setup animação
popup_timer = 0;          // Timer for the pop-up animation
popup_duration = 5;      // Total duration of the animation in frames
