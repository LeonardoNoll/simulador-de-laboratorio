// 1. Calcula os limites dinamicamente com base na posição atual do objeto
var _half_w = width / 2;
var _half_h = height / 2;

var _left   = x - _half_w;
var _right  = x + _half_w;
var _top    = y - _half_h;
var _bottom = y + _half_h;

// 2. Verifica se o clique foi liberado dentro da área correta e atualizada
if (_left < mouse_x && mouse_x < _right && _top < mouse_y && mouse_y < _bottom) {


	for (var i = 0;instance_number(obj_btn_tabela_bebida); i++) {
		with (instance_find(obj_btn_tabela_bebida,i)){
			switch(button_text) {
				case "Café":
					if(valores_ml != [5.5,7.7]){
						create_textbox(x,y,"parou no teste")
						return
					}
				case "Coca Cola":
					if (valores_ml != [3.08,4.7,5.3,5.7]){
						return
					}
				case "Suco De Limão":
					if (valores_ml != [2.27,2.58,2.82,3.03,3.23,3.5,3.7,3.89,4.08]){
						return
					}
				case "Energético":
					if (valores_ml != [3.51,4.03,4.54,5.28,5.56]){
						return
					}
				case "Isotônico":
					if (valores_ml != [3.08,3.6,4.13,4.62,5.14,5.67]){
						return
					}
				case "Iogurte Natural":
				if (valores_ml != [4.12,4.27,4.54,4.88,5.37,5.64]){
						return
					}
				}
			}
		}
instance_create_depth(650,300, depth - 1,obj_grafico_final)
create_textbox(x,y,"criou obj")
}


	
    // Se for reativar a criação do objeto, ele também usará o x e y atualizados:
    // instance_create_layer(x, y, layer, obj_tabela_bebida, {
    //     liquid_name: name,
    //     textos_cabecalho: textos_cabecalho
    // });