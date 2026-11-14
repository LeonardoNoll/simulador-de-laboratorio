// =====================================================
//  ALÇA DE PLATINA - ETAPA (roda 60 vezes por segundo)
// =====================================================

if (global.modal_open) return;   // caixa de mensagem aberta: não faz nada
event_inherited();               // Pai: arrastar, soltar, escala...

var _cor_quente = make_color_rgb(255, 90, 30);


// -----------------------------------------------------
// 1) AINDA NÃO ESTERILIZADA: esquenta se estiver na chama
// -----------------------------------------------------
if (!esterilizada) {
    var _segurando_na_chama = drag_mode && ponta_na_chama(x, y);

    if (_segurando_na_chama) {
        calor = min(1, calor + 1 / tempo_flambar);   // calor sobe até 1 (100%)
        if (calor >= 1) esterilizar_alca();          // chegou ao máximo: esteriliza
    }
    else {
        calor = max(0, calor - 2 / tempo_flambar);   // saiu da chama: esfria
    }
}

// -----------------------------------------------------
// 2) ESTERILIZADA E QUENTE: esfria aos poucos
// -----------------------------------------------------
else if (quente) {
    timer_esfriar--;
    calor = max(timer_esfriar, 0) / tempo_esfriar;

    if (timer_esfriar <= 0) {
        quente = false;
        name = "Alça de platina (esterilizada)";
    }
}

// -----------------------------------------------------
// 3) ESTERILIZADA E FRIA: sem calor
// -----------------------------------------------------
else {
    calor = 0;
}


// -----------------------------------------------------
// 4) PLACA DE CULTIVO: inclina e coleta ao arrastar
// -----------------------------------------------------
// 4.1) perto da placa? (zona maior, só para inclinar a alça)
var _perto = drag_mode && collision_rectangle(x - 24, y - 36, x + 24, y + 12, obj_colonia, false, false) != noone;
na_placa = _perto;

// 4.2) escolhe o sprite (a ponta é a origem dos dois, então não "pula")
var _inclinar = inclinar_so_na_placa ? na_placa : drag_mode;
var _sprite_alvo = _inclinar ? spr_diagonal : spr_normal;
if (sprite_index != _sprite_alvo) sprite_index = _sprite_alvo;

// 4.3) a ponta está tocando a placa? 0 = não | 1 = ágar vazio | 2 = colônia
var _toque = drag_mode ? toque_colonia(x, y) : 0;
var _entrou = (_toque > 0) && !na_placa_antes;      // acabou de encostar?
na_placa_antes = (_toque > 0);

// 4.4) COLETA: toca o centro da colônia com a alça pronta
if (_toque == 2 && esterilizada && !quente && !carregada && !usada) {
    carregada  = true;
    pulso      = 1;                                  // dispara o anel de brilho
    dica_timer = 0;                                  // apaga qualquer dica na tela
    name = "Alça de platina (com cultura)";
}
// 4.5) ERROS: balão uma vez, quando a ponta encosta na placa
else if (_entrou) {
    if (!esterilizada) {
        dica = "Alça não esterilizada! Flambe no bico de Bunsen antes, senão a cultura pode ser contaminada.";
        dica_timer = 200;
    }
    else if (quente) {
        dica = "A alça ainda está quente e pode matar o fungo. Aguarde esfriar.";
        dica_timer = 200;
    }
    else if (usada) {
        dica = "A cultura já foi transferida para a lâmina.";
        dica_timer = 160;
    }
    else if (carregada) {
        dica = "A alça já tem cultura. Leve-a até a gota na lâmina.";
        dica_timer = 160;
    }
    else if (_toque == 1) {
        dica = "Toque levemente na colônia, no centro da placa.";
        dica_timer = 160;
    }
}

// 4.6) o anel de brilho some aos poucos
pulso = max(0, pulso - 0.04);


// -----------------------------------------------------
// COR: 0 = cor normal | 1 = laranja total
// -----------------------------------------------------
image_blend = merge_color(c_white, _cor_quente, calor);


// -----------------------------------------------------
// AVISO DE ESTERILIZADA: uma única vez, depois que o aluno solta
// -----------------------------------------------------
if (esterilizada && !msg_mostrada && !drag_mode) {
    msg_mostrada = true;   // trava: impede o aviso de repetir
    create_textbox(x, y - 40, "Alça esterilizada! Espere esfriar antes de tocar a colônia.");
}