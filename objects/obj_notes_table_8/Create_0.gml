titulos = ["Dentifrício Sem Flúor","Dentifrício Fluoretado","Gel Fluoretado"]

for (var i = 0; i < array_length(titulos); ++i) {
	// create titulo
	instance_create_layer(x,y, "GUI", obj_col_header, {
		text: titulos[i]}	
	)
	//create células
	for (var j = 0; j < 2; ++j) {
	    instance_create_layer(x,y, "GUI", obj_writable_cell, {
			text: texts[j+i*2]
		})
	}
}




