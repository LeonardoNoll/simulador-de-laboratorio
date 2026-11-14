event_inherited();

name = "Alça de platina";
options = [];

// ---------- SPRITES ----------
spr_normal   = s_platinum_loop;   // alça deitada (confira o nome no Navegador de recursos)
spr_diagonal = s_platinum_move;   // alça inclinada
ang_diag     = 32;                // ângulo do sprite inclinado (só posiciona o pontinho da cultura)
image_speed  = 0;                 // se o s_platinum_move tiver animação, apague esta linha

// ---------- ORIGEM NA PONTA DO LAÇO (corrige o "pulo" ao inclinar) ----------
// alça deitada: a ponta fica na extremidade direita, na altura do meio
sprite_set_offset(spr_normal,
                  sprite_get_width(spr_normal) - 1,
                  sprite_get_height(spr_normal) / 2);
// alça inclinada: a ponta fica no canto de baixo à direita
sprite_set_offset(spr_diagonal,
                  sprite_get_width(spr_diagonal) * 0.984,
                  sprite_get_height(spr_diagonal) * 0.951);

sprite_index = spr_normal;        // garante que a alça nasce deitada

inclinar_so_na_placa = true;      // true = inclina só perto da placa | false = inclina sempre que arrasta

// ---------- ESTADOS ----------
esterilizada = false;
quente       = false;
carregada    = false;   // pegou cultura da colônia
usada        = false;   // já depositou a cultura na lâmina
msg_mostrada = false;

// ---------- CALOR ----------
calor         = 0;      // 0 a 1
tempo_flambar = 120;    // quadros segurando na chama (60 = 1 segundo)
tempo_esfriar = 240;    // quadros para esfriar (0 = não esfria)
timer_esfriar = 0;

// ---------- PLACA DE CULTIVO ----------
na_placa       = false; // a alça está perto da placa agora?
na_placa_antes = false; // estava perto no quadro anterior? (detecta a ENTRADA)
pulso          = 0;     // anel de brilho ao coletar (1 → 0)

// ---------- CAIXA DE DICA (não trava o jogo) ----------
dica       = "";
dica_timer = 0;

// ---------- AO SOLTAR ----------
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

    // 2) soltou sobre a lâmina levando cultura
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