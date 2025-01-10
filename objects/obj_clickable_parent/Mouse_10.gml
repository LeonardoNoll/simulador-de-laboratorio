// Obtém a lista de instâncias colidindo no ponto atual
var _inst = instance_position(mouse_x, mouse_y, all);
show_debug_message(_inst)

// Verifica se existe uma instância com depth menor que o objeto atual
if (_inst != noone) {
    // Itera sobre todas as instâncias encontradas
    for (var i = 0; i < array_length(_inst); i++) {
        var _other = _inst[i];
        if (_other.depth < depth) {
            // Existe um objeto com depth menor colidindo; não executa o código
			show_debug_message("objeto na frente")
			exit;
        }
    }
}

// Nenhum objeto com depth menor foi encontrado; executa o código
spawn_tool_tip(name);