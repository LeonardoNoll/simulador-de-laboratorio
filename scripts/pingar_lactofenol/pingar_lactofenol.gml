function pingar_lactofenol(){
    if (!obj_microscope_slide.visible) exit;
    if (!obj_microscope_slide.identificado) exit;
    if (obj_microscope_slide.com_gota) exit;

    estado = "usada";
    sprite_index = sprite_vazia;
    name = "Pipeta usada";
    options = [];

    with obj_microscope_slide{
        com_gota = true;
        name = "Lâmina com lactofenol";
    }
}