if (estado == "enchendo") {
    estado = "cheia"
    sprite_index = s_pipette_full
    image_speed = 0
    name = "Pipeta com lactofenol"
}
else if (estado == "pingando") {
    estado = "usada"
    image_speed = 0
    image_index = image_number - 1
    name = "Pipeta usada"
}