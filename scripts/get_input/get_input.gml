/// @function get_input(_x, _y, _prompt, _callback)
/// @description Exibe um campo de input e chama a função callback quando finalizar
/// @param _x (number): Posição no eixo x
/// @param _y (number): Posição no eixo y
/// @param _prompt (string): O texto a ser exibido
/// @param _callback (function): A função que recebe o valor digitado

function get_input(_x, _y, _prompt, _callback) {
    var _input = instance_create_layer(_x, _y, "GUI", obj_input);
    
    _input.prompt = _prompt;
    _input.on_confirm = _callback; // Função a ser chamada com o valor digitado
    
    return _input; // Se quiser guardar uma referência
}
