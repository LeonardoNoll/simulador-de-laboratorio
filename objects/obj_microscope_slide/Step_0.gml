// Inherit the parent event
event_inherited();
// avança a animação enquanto a gota existir e não tiver terminado
if (com_gota && gota_t < 1) {
    gota_t = min(1, gota_t + 1 / gota_dur);   // soma uma fração por quadro, no máximo 1
}

