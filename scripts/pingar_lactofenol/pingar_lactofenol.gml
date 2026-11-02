function pingar_lactofenol(){
    if (!obj_microscope_slide.visible) exit
    if (!obj_microscope_slide.identificado) exit
    if (obj_microscope_slide.com_gota) exit

    estado = "pingando"
	sprite_index = s_pipette_dropping
	image_index = 0
	image_speed = 1
	name = "Pipeta pingando"
	options = [];

    with obj_microscope_slide{
        com_gota = true
        name = "Lâmina com lactofenol"
    }
}