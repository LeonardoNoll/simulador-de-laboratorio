titulos = ["Dentifrício Sem Flúor","Dentifrício Fluoretado","Gel Fluoretado"]
subtitulos = ["Superfície s tratamento", "Superfície tratada"]
width = 150
titulo_width = 300
colunas = 0

for (var i = 0; i < array_length(titulos); i++) {
	// create titulo
	instance_create_layer(x+(titulo_width*i),y, "GUI", obj_col_header, {
		text: titulos[i], 
		width: titulo_width}	
	)
	//create células
	for (var j = 0; j < 2; j++) {
		instance_create_layer(x+(width*colunas),y+30, "GUI", obj_col_header, {
			text: subtitulos[j]
		})
	    instance_create_layer(x+(width*colunas),y+60, "GUI", obj_writable_cell, {
			text: texts[j+i*2]
		})
		colunas++
	}
}




