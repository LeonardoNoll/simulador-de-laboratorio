function esterilizar_alca(){
    with obj_plantinum_loop{
        if (esterilizada) exit;
        esterilizada = true;
        calor = 1;
        quente = (tempo_esfriar > 0);
        timer_esfriar = tempo_esfriar;
        name = quente ? "Alça de platina (esterilizada, quente)" : "Alça de platina (esterilizada)";
    }
}