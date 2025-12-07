var _autoclave = instance_nearest(x, y, obj_autoclave)

if (sprite_index == s_glass_mixed) {
        create_textbox(mouse_x-50, mouse_y-100,
            ["Você precisa deixar a tampa do frasco entreaberta antes de usar a autoclave."])
        return
}


if (sprite_index != s_glass_mixed_autoclave) {
	
	create_textbox(mouse_x-50, mouse_y-100,
            ["Antes de usar a autoclave, você precisa utilizar o agitador magnético, e depois deixar a tampa entreaberta."])
    return
}

//base_x = _autoclave.x - 5
//base_y = _autoclave.y - 36
//instance_destroy()



