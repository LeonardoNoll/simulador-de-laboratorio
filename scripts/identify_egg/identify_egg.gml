// identifica o ovo
function identify_egg(){
		
	var cb = function(_text){
		var _egg = instance_nearest(x, y, obj_egg)
		
		if(global.selected_egg.sprite_index != s_egg && global.selected_egg.sprite_index != s_marked_egg){
			 create_textbox(_egg.x, _egg.y, "Ovo já identificado.")
			 return
		}
		
		_text = string_upper(_text)
		
		switch (_text){
            case "SF":
                global.selected_egg.sprite_index = s_egg_SF
            break

            case "DF":
                global.selected_egg.sprite_index = s_egg_DF
            break

            case "GF":
                global.selected_egg.sprite_index = s_egg_FG
            break
			
            default:
                create_textbox(_egg.x, _egg.y, "Produto inválido.")
        }
	}
	get_input(x+20, y-5, "Identifique o produto: ", cb)
}

