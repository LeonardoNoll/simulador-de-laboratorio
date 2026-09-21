function identificar_lamina(){
    with global.selected{
        if (identificado) exit;
        identificado = true;
        sprite_index = s_microscope_slide_identify;
        options = [];
        name = "Lâmina de vidro (lado identificado)";
    }
}
