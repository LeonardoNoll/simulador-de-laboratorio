titulos = ["DENTIFRÍCIO SEM FLÚOR","DENTIFRÍCIO FLUORETADO","GEL FLUORETADO"]
subtitulos = ["Superfície sem tratamento", "Superfície tratada"]

width = 208 
titulo_width = width * 2
colunas = 0

// Desloca a tabela para a esquerda
var start_x = x - 175

for (var i = 0; i < array_length(titulos); i++) {
    // Título
    instance_create_layer(start_x + (titulo_width * i), y+10, "GUI", obj_col_header, {
        text: titulos[i],
        width: titulo_width,
    })

    // Subtítulos e células
    for (var j = 0; j < 2; j++) {
        instance_create_layer(start_x + (width * colunas), y + 40, "GUI", obj_col_header, {
            text: subtitulos[j],
            width: width
        })

        instance_create_layer(start_x + (width * colunas), y + 70, "GUI", obj_writable_cell_experiment_8, {
            text: texts[j + i * 2],
            width: width
        })

        colunas++
    }
}

x_btn = instance_create_depth(x + width * 5.1, y+10, depth - 10, obj_btn_x)
x_btn.parent = id


