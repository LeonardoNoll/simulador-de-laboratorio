function ligar_bico_de_bunsen(){
    with global.selected{
        sprite_index = s_bunsen_on
        options = [OPTIONS.DESLIGAR_BUNSEN]
        name = "Bico de bunsen ligado"
        ligado = true
        var _aviso = instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "GUI", obj_aviso_bunsen);
        _aviso.texto_aviso = "Ligue de forma cuidadosa o bico de Bunsen.";
    }
}