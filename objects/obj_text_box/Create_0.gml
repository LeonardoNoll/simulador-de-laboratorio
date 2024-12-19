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

// Botão fechar
btn_x = instance_create_layer(x+width-5, y, "GUI", obj_btn_x)
btn_x.parent = self
