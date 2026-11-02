
function ligar_bico_de_bunsen(){
    with global.selected{
        sprite_index = s_bunsen_anime // Altera para o sprite do bico ligado
        options = [OPTIONS.DESLIGAR_BUNSEN] // Disponibiliza a opção de desligar
        name = "Bico de bunsen ligado"
        ligado = true // Registra que o bico está ligado

        // Cria um aviso no centro da tela
        var _aviso = instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "GUI", obj_aviso_bunsen);
        _aviso.texto_aviso = "Ligue de forma cuidadosa o bico de Bunsen."; // Define a mensagem do aviso
    }
}