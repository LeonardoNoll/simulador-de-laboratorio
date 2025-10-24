function pass_into_the_bottle(obj_bhi_flask, obj_glass_jar_with_lid){
    if (place_meeting(obj_bhi_flask.x, obj_bhi_flask.y, obj_glass_jar_with_lid)) {
        if (get_grams()) {
            // Aqui você pode trocar uma variável de estado dos objetos
            //jar.has_medium = true;
            //beaker.has_medium = false;

            show_message("Conteúdo transferido com sucesso!");
        }
    }


}