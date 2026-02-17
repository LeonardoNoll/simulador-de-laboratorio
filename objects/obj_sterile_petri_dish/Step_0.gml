// Código antigo do Step do frasco
if (drag_mode) {
    window_set_cursor(cr_none);
    x = mouse_x + xx;
    y = mouse_y + yy;
} 

if(array_length(scale_on_contact_list) > 0) {
    for(var i = 0; i < array_length(scale_on_contact_list); i++) {
        if(place_meeting(x, y, scale_on_contact_list[i]))
            scale_on_contact(instance_nearest(x, y, scale_on_contact_list[i]));		
    }
}

if (scale_pulse_data != undefined) {
    scale_pulse_data.update();
}

/*if (place_meeting(x, y, obj_laminar_flow_hood)) {
    // só cria a janela se ainda não existir
    if (!instance_exists(obj_interface_laminar_flow_hood)) {
        var interface = instance_create_layer(room_width/2, room_height/2, "UI", obj_interface_laminar_flow_hood);
        interface.active = true;
    }
	
}*/
