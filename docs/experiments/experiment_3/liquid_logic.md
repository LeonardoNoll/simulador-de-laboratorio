# Experimento 3: Aferição de Capacidade Tampão

## Migração para o Sistema de Structs (LiquidDef/LiquidInstance)

O experimento 3 usava originalmente um `content` em string (`"HCl"`, `"HCl + Saliva estimulada"`, ...) e um `ph` solto na instância do tubo, sem relação formal entre os dois. Isso causava bugs recorrentes (comparações de string frágeis, `ph` dessincronizado de `content`). O experimento foi migrado para o mesmo padrão data-driven do experimento 4 — ver `docs/experiments/experiment_4/liquid_logic.md` para o funcionamento geral de `LiquidDef`/`LiquidInstance`/`ensure_liquid_instance`/`transfer_liquid_to_test_tube`.

### 1. Catálogo de líquidos (`global.liquids_experiment_3`)

Definido em `rooms/rm_3_afericao_de_capacidade_tampao/RoomCreationCode.gml`:

- `hcl` (pH 1) — mistura com `saliva_estimulada` ou `agua_destilada` (2ml exigidos), gerando `hcl_saliva_mix` ou `hcl_agua_mix`.
- `saliva_estimulada` (pH 7) e `agua_destilada` (pH 7) — cada um também declara a regra de mistura com `hcl` (o `can_mix`/`get_mix_result` checam os dois lados, então a ordem de adição não importa).
- `hcl_saliva_mix` e `hcl_agua_mix` (pH 1 ao serem criados) — resultado da mistura, sem `mix_results` próprios (não aceitam uma terceira adição).

### 2. Onde mora o pH

`LiquidDef` tem um campo opcional `ph` (usado como valor inicial). `LiquidInstance` semeia esse valor em `state.ph` na construção — **não** como campo solto — porque é `state` que `clone()` preserva entre transferências. Consumidores (sprite do tubo, fita de pH, correção, `shake`) sempre leem `content.state.ph`, nunca um `ph` separado na instância do tubo.

A evolução do pH ao longo do roteiro:
1. Mistura recém-feita → `state.ph = 1` (herdado do `LiquidDef` do resultado, HCl domina).
2. `shake()` (ação "Agitar", liberada por `close_test_tube` quando o tubo tem uma mistura) → `state.ph = 2` para os dois tipos de mistura.
3. `update_test_tube_ph_10_min()` (após os 10 minutos de espera) → só `hcl_saliva_mix` evolui, para um valor aleatório entre 4 e 6.9 (efeito tampão da saliva); `hcl_agua_mix` permanece em 2 (sem tamponamento).

### 3. Definição e identificação dos tubos (`global.test_tubes_experiment_3`)

Ao contrário do experimento 4 (tubos pré-nomeados: `"0"`..`"7"`, `"Controle Amido"`, etc.), os tubos do experimento 3 são objetos genéricos (`obj_test_tube_experiment_3`) que o jogador precisa identificar em runtime — clique direito → "Identificar recipiente" (`OPTIONS.IDENFICIAR_RECIPIENTE`, herdado de `obj_test_tube`) → `identify_recipient()` seta `name`.

Existem exatamente 2 definições, cada uma restrita à sua própria combinação de líquidos:

```javascript
global.test_tubes_experiment_3 = {
	agua: new TestTubeDef("agua", "Agua", {
		hcl: 6,
		agua_destilada: 2
	}),
	saliva: new TestTubeDef("saliva", "Saliva", {
		hcl: 6,
		saliva_estimulada: 2
	})
}
```

`pass_liquid_to_test_tube_3` chama `transfer_liquid_to_test_tube(..., "", ml)` — o `_test_tube_id` vazio aciona `find_test_tube_def_by_name`, que casa `_test_tube.name` (normalizado via `string_normalize`, ignora acento/maiúscula) contra o `name` de cada `TestTubeDef`. Por isso o nome do tubo **não é mais sobrescrito** após receber líquido (diferente da versão antiga, que renomeava para `"Tubo de teste com X"`) — o nome precisa continuar sendo `"Agua"`/`"Saliva"` para a próxima transferência encontrar a definição certa.

Consequência direta de cada tubo ter sua própria lista de líquidos aceitos: um tubo identificado como `"Agua"` rejeita saliva (e vice-versa) — `can_transfer_liquid_to_test_tube` não encontra a entrada correspondente no `TestTubeDef.liquids` e a transferência falha com `"liquid_test_tube_mismatch"`. Se o tubo ainda não foi identificado, a falha é `"test_tube_definition_not_found"`, tratada separadamente em `pass_liquid_to_test_tube_3` com uma mensagem específica ("Identifique o tubo de teste (Agua ou Saliva) antes de usá-lo").

### 4. Béquer permanece string-based (decisão de escopo)

Beckers (`obj_25ml_becker`) e suas origens (`obj_acid_bottle`, `obj_distiled_water`, `obj_stimulated_saliva_experiment_3`) continuam com `content` em string — só ganharam um `content_id` adicional. A conversão para `LiquidInstance` de verdade só acontece no momento da coleta pela pipeta, via `ensure_liquid_instance`, que muta `becker.content` de string para struct na primeira coleta. Isso evita ter que reescrever toda a lógica de identificação/preenchimento do béquer para obter o mesmo resultado no tubo de ensaio.

### 5. Fluxo completo

1. Identificar 3 béqueres (Saliva estimulada / Água destilada / HCl) e preenchê-los.
2. Identificar os 2 tubos de ensaio como `"Agua"` e `"Saliva"` (clique direito → Identificar recipiente).
3. Coletar 6ml de HCl com a pipeta de 10ml + pera e dispensar em cada tubo.
4. Coletar 2ml do líquido correspondente (saliva ou água) com uma pipeta de 5ml + pera e dispensar no tubo com o nome correspondente.
5. Fechar e agitar os tubos (`shake`, ph vai a 2).
6. Aguardar 10 minutos; `update_test_tube_ph_10_min` evolui o pH do tubo `hcl_saliva_mix`.
7. Medir o pH com a fita (`obj_ph_strip`) antes e depois da espera; `try_instantiate_buffer_capacity` usa `content.id`/`content.state.ph` para liberar a etapa de resposta.
