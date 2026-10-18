function ponta_na_chama(_x, _y){
    return obj_bunsen.ligado && (collision_point(_x, _y, obj_hitbox_fogo, false, false) != noone);
}