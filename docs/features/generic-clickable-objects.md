# Objetos Clicáveis Genéricos

## Visão geral

Este é talvez o objeto mais complexo e vital para o funcionamento dos experimentos. Este é objeto que deve ser herdado por outros objetos que representam algo "físico", que o usuário pode interagir, de essência palpável. Podemos entender o **obj_clickable_need_EPI** como dividido em 2 principais comportamentos, os relacionados ao clique esquerdo e ao clique direito.

O documento visa detalhar o funcionamento do objeto, seus atributos, como utiliza-lo e o que pode, ou não, ser alterado.

---

## Atributos

### name

- Deve ser alterado para refletir o nome do objeto
- Usado pelo **obj_tool_tip**

### xx & yy

- Variáveis que fazem parte da lógica de "arrastar" o objeto
- É recomendável não alterar essas variáveis

### base_x & base_y

- Mantem registro de para onde um objeto deve voltar ao ser "largado" ou sair do "drag_mode"
- A variável é automaticamente definida para a coordenada original da instância, mas pode ser alterada externamente se fizer sentido para o cenário

### options

- Representa que opções de interação o objeto oferece ao ser clicado com o botão esquerdo
- Pode ser vazio, ou preenchido com valores do array de constantes **OPTIONS**
- Se vazio, o clique direito não faz nada, mas, se preenchido, o a interação instancia um **obj_context_menu** com as opções correspondentes
- Pode ser alterado durante ou após a criação da instancia

```js
options = [OPTIONS.ABRIR_TUBO_DE_ENSAIO, OPTIONS.AGITAR]
```

### needed_EPI

- Representa a lista de EPIs que devem ser equipadas antes que o usuário possa interagir com o objeto em questão
- Se vazio, o usuário não precisa equipar nada
- Deve refletir os equipamentos pedidos no roteiro

### scale_on_contact_list

- Os objetos listados nessa variável aumentam de tamanho quando a instância entra em contato e está em **drag_mode**  
- Utilize esta variável para indicar visualmente ao usuário quando dois objetos podem interagir um com o outro

### tool_tip

- Gerencia a **obj_tool_tip** atrelado ao objeto
- Não deve ser alterado

### on_release

- É inicializado como **undefined** mas representa o comportamento do objeto ao ser "solto"
- Para esta variável deve ser passado uma **function()**, que também pode ser um *Script*
- Pare este atributo, é interessante entender como funciona a sua execução dentro do evento *Global Left Released*

```js
if(drag_mode) {
	if(on_release != undefined) on_release()
	
	global.selected = noone
	drag_mode = false;

	y = base_y
	x = base_x
}
```

### drag_mode

- Gerencia se o objeto está sento arrastado/segurado ou não

### locked

- Se verdadeiro, impede que o objeto seja arrastado
- Para objeto em que apenas a interação com o botão direito faz sentido, ou quando um objeto, antes movível, precisa ser trancado

### scale_pulse_data

- Variável necessária para que o objeto possa interagir com o *Script* **scale_pulse**
- Não deve ser alterado

---

## Notas sobre a implementação

Sempre que este objeto for herdado, mude **name** e **needed_EPI** de forma a refletir o objeto representado. **On_release** refletira como o objeto lidara com a ideia do *"drag and drop"*. Tenha em mente que **on_release** será executado antes do objeto voltar a sua posição inicial. Caso o objeto tenha **options**, tenha em mente a implementação de suas opções no **obj_context_btn**.

