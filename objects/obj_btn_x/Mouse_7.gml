/// @description Insert description here
// You can write your code in this editor
//instance_destroy(parent)

if (instance_exists(parent)) {

/* observação:  na room rm_laminar_flow_hood o experimento finaliza após o usuário ler a última mensagem, o if abaixo verifica 
   se é a última mensagem */
    if (variable_instance_exists(parent, "messageText")) {

        if (parent.messageText == "As placas identificadas serão reservadas em local adequado para evitar a contaminação até o momento do uso.") {

            room_goto(rm_parabens)

        } else {
            instance_destroy(parent)
        }
// para outras caixas de texto com mensagens diferentes 
    } else {
        instance_destroy(parent)
    }
}