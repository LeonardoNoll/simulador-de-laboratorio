// Verifica se a ponta do objeto está encostando na chama do Bico de Bunsen
function ponta_na_chama(_x, _y) {
    // Primeiro, verifica se o Bico de Bunsen está ligado
    var chama_ligada = obj_bunsen.ligado;
    // Verifica se existe uma colisão na posição (X, Y) com a hitbox do fogo
    var encostando_na_chama = collision_point(_x, _y, obj_hitbox_fogo, false, false) != noone;
    // Retorna verdadeiro somente se as duas condições forem verdadeiras
    return chama_ligada && encostando_na_chama;
}