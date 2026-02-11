// Cria a janela de interior se não existir
if (!instance_exists(obj_interface_laminar_flow_hood)) {
    var interface = instance_create_layer(0, 0, "Instances", obj_interface_laminar_flow_hood);
    interface.active = true;
}


