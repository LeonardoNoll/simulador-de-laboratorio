
## Visão geral

Menu de contexto dinâmico para interação com objetos. Composto por **obj_context_menu** e **obj_context_btn**. O objeto **obj_game** também é importante para o funcionamento do menu. É de extrema importância o entendimento deste objeto para o desenvolvimento de novos experimentos.

---

## Funcionamento

O objeto **obj_context_menu** deve ser instanciado através da função **spawn_context_menu** (é chamada por default no evento *Right Pressed* de [**obj_clickable_need_EPI**](generic-clickable-objects)), podendo receber um parâmetro contendo opções personalizadas. 

O objeto que instanciou o menu pode ser acessado através da variável **parent**.

```js
// Evento Right Pressed
// Sem array
options = [OPTIONS.IDENFICIAR_RECIPIENTE]

if(!drag_mode) {
	spawn_context_menu() // Usara o atributo options do objeto.
}
```

```js
// Dento de uma função "on_release"
// Com array
var _my_options = [OPTIONS.PASSAR_LIQUIDO_AO_BEQUER]
spawn_context_menu(_my_options)
```

---

## Como criar novas "options"

A maneira de inserir novos comportamentos para o menu de contexto é bem específica.

- Primeiro é necessário adicionar a sua opção ao *enum* e no array de strings do **obj_game**. Ambas precisam estar em posições correspondentes.

```js
enum OPTIONS {
	...,
	...,
	OPCAO_TESTE
}

options_string = [
	...,
	...,
	"Opção Teste"
]
```

- Crie um *Script* que executara a lógica que você planeja implementar.

```js
function test_option() {
	show_debug_message(parent.name + ": Olá mundo!")
}
```

- Dentro do evento *Left Released* de **obj_context_btn**, adicione um *case* correspondente a para a sua função

```js
// Left Released
switch(option) {
	...
	case OPTIONS.OPCAO_TESTE:
		test_option()
		// Você pode adicionar um return dentro do case
		// para impedir que o menu seja fechado
		// return 
		break
}
...
``` 
