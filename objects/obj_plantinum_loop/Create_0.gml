event_inherited();

name = "Alça de platina";
options = [];

esterilizada = false;
quente = false;
msg_mostrada = false;
carregada = false;
usada = false;

calor = 0;
tempo_flambar = 120;
tempo_esfriar = 240;
timer_esfriar = 0;

on_release = function() {
    // clique sem arrastar: ignora
    if (abs(x - base_x) < 6 && abs(y - base_y) < 6) return;

    var _msg_y = y - 40;

    // 1) soltou sobre a chama com o bico apagado
    if (!esterilizada && instance_exists(obj_bunsen) && !obj_bunsen.ligado
        && collision_point(x, y, obj_hitbox_fogo, false, false) != noone) {
        create_textbox(x, _msg_y, "O bico de Bunsen está apagado. Ligue-o para flambar a alça.");
        return;
    }

    // 2) soltou sobre a placa de cultivo
    var _toque = toque_colonia(x, y);
    if (_toque > 0) {
        if (!esterilizada) {
            create_textbox(x, _msg_y, "Alça não esterilizada! Flambe a alça no bico de Bunsen antes de tocar a colônia, senão a cultura pode ser contaminada.");
        }
        else if (quente) {
            create_textbox(x, _msg_y, "A alça ainda está quente e pode matar o fungo. Aguarde esfriar antes de tocar a colônia.");
        }
        else if (usada) {
            create_textbox(x, _msg_y, "A cultura já foi transferida para a lâmina. Siga para o próximo passo.");
        }
        else if (carregada) {
            create_textbox(x, _msg_y, "A alça já tem cultura. Leve-a até a gota de lactofenol na lâmina.");
        }
        else if (_toque == 1) {
            create_textbox(x, _msg_y, "Toque levemente na colônia, no centro da placa, e não no ágar vazio.");
        }
        else {
            carregada = true;
            name = "Alça de platina (com cultura)";
            create_textbox(x, _msg_y, "Cultura coletada! Leve a alça até a gota de lactofenol na lâmina.");
        }
        return;
    }

    // 3) soltou sobre a lâmina
    var _lamina = lamina_sob_alca(x, y);
    if (_lamina != noone && carregada) {
        if (!_lamina.com_gota) {
            create_textbox(x, _msg_y, "Coloque primeiro uma gota de lactofenol azul algodão na lâmina.");
        }
        else if (_lamina.com_cultura) {
            create_textbox(x, _msg_y, "A cultura já está na gota. O próximo passo é homogeneizar.");
        }
        else {
            depositar_cultura(_lamina);
            create_textbox(x, _msg_y, "Cultura transferida para a gota de lactofenol! Próximo passo: homogeneizar.");
        }
    }
}