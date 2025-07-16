function string_normalize(str) {
    // Converte minúsculas no alfabeto en-US
    str = string_lower(str);

    // Tabelas com maiúsculas e minúsculas acentuadas
    var upper  = ["À","Á","Â","Ã","Ä","É","È","Ê","Ë","Í","Ì","Î","Ï","Ó","Ò","Ô","Õ","Ö","Ú","Ù","Û","Ü","Ç"];
    var lower  = ["à","á","â","ã","ä","é","è","ê","ë","í","ì","î","ï","ó","ò","ô","õ","ö","ú","ù","û","ü","ç"];
    var simples = ["a","a","a","a","a","e","e","e","e","i","i","i","i","o","o","o","o","o","u","u","u","u","c"];

    for (var i = 0; i < array_length(upper); i++) {
        str = string_replace_all(str, upper[i], lower[i]);
        str = string_replace_all(str, lower[i], simples[i]);
    }

    return str;
}
