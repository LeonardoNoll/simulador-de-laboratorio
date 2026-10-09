# Experimento 4: Reação em tempo real e tabela de resultados (passos 21-23)

Documenta a implementação dos passos finais do roteiro "Saliva – Nível 2": alíquotas retiradas do erlenmeyer a cada 2 minutos, a mudança progressiva de cor, e a tabela onde o aluno anota os resultados. Para a base do sistema de líquidos (`LiquidDef`/`LiquidInstance`), ver [liquid_logic](liquid_logic.md).

## 1. O relógio da reação

O experimento reaproveita o cronômetro genérico (`obj_cronometer` + `obj_btn_cronometer`) em vez de ter um timer próprio. A ligação é feita por **override de instância na sala**, não em código — em `rm_4_atividade_enzimatica_atividade_salivar.yy`, a instância de `obj_btn_cronometer` define `expected_minutes = 5` e `on_count_sucess = erlenmeyer_first_5_minutes`.

O encadeamento funciona assim:

1. **Banho-maria (passo 16)**: o primeiro ciclo de 5 minutos dispara `erlenmeyer_first_5_minutes`, que valida a temperatura (37º), grava `state.minutes_passed = 5` e **reprograma o cronômetro** para ciclos de 2 minutos apontando para `erlenmeyer_one_more_minute`.
2. **Ciclos da reação (passo 20)**: cada ciclo seguinte dispara `erlenmeyer_one_more_minute`, que soma 2 a `state.minutes_passed`.

> `obj_cronometer` não se rearma sozinho — ao chegar em 0:00 ele dispara o callback e para. Reatribuir `on_count_sucess` dentro do próprio callback é o padrão do projeto para simular um "tick" periódico. É o único mecanismo de tick existente; não há `on_count_tick`.

**Cuidado ao revisitar**: a cadência de 2 minutos está em dois lugares que precisam concordar — `expected_minutes` (quanto tempo o cronômetro conta) em `erlenmeyer_first_5_minutes`, e o incremento de `state.minutes_passed` em `erlenmeyer_one_more_minute`. Mudar um sem o outro dessincroniza o tempo de reação do tempo real.

## 2. Congelamento da alíquota

Quando a pipeta coleta do erlenmeyer, `collect_liquid` chama `ensure_liquid_instance` e faz `content = _raw_content.clone()`. Como `LiquidInstance.clone()` usa `variable_clone(self, 1)`, o `state` vira uma **cópia independente** — a alíquota carrega o `minutes_passed` do instante da coleta, e continua avançando no erlenmeyer sem afetar o que já foi retirado.

Isso não exigiu código novo: é consequência direta do `clone()` com profundidade 1. Quebrar essa profundidade (voltando a uma cópia rasa/por referência) faria todas as alíquotas compartilharem o mesmo estado.

## 3. Gradiente de cor

`resolve_dynamic_mix` resolve o par `starch` ↔ `iodine_control`. Com saliva adicionada, em vez de devolver só um id, devolve uma struct:

```gml
var _t = clamp(_mins / 8, 0, 1);
var _color = merge_colour(
    global.liquids_experiment_4.starch_control.color,
    global.liquids_experiment_4.iodine_control.color,
    _t
);
return { result: _result_id, color: _color, state: _result_state };
```

- **8 minutos** é o tempo de hidrólise completa. A partir dele `_t` satura em 1 e a cor fica **idêntica** à do Controle Iodo — é isso que dá sentido ao passo 22 ("interrompa a coleta quando a cor atingida for igual à do Controle Iodo"). Na prática os tubos 4 a 7 (8, 10, 12 e 14 min) ficam todos com a mesma cor, o que é quimicamente correto: sem amido sobrando, não há mais reação com o iodo.
- O `id` do resultado continua binário (`starch_control` antes de 8 min, `iodine_control` a partir dele). Só a **cor** é contínua.

### Contrato estendido de resultado de mistura

Para suportar isso, o resultado de mistura ganhou dois campos opcionais que atravessam toda a cadeia `resolve_dynamic_mix` → `parse_mix_result` → `transfer_liquid_to_test_tube`:

| Campo | Efeito em `transfer_liquid_to_test_tube` |
|---|---|
| `color` | sobrescreve a cor estática do `LiquidDef` na instância resultante |
| `state` | é **mesclado** (não substituído) no `state` da instância resultante |

A mescla é importante: substituir o `state` inteiro descartaria o que o construtor já semeou (ex. `ph`, usado pelo experimento 3). Qualquer mistura dinâmica futura pode usar esses dois campos sem tocar no pipeline.

## 4. `from_erlenmeyer`: por que existe

Um tubo 0-7 que recebeu apenas água destilada + iodo (passos 10 e 12) termina como `iodine_control` — **mesmo id e mesma cor** que o tubo Controle Iodo, e que uma alíquota totalmente hidrolisada. Ou seja, cor e id sozinhos não distinguem "tubo preparado" de "tubo que recebeu alíquota no fim da reação".

Por isso `resolve_dynamic_mix` marca `state.from_erlenmeyer = true` (junto de `minutes_passed`/`saliva_added`) no resultado. Qualquer verificação de progresso do experimento precisa checar **esse campo além da cor** — sem ele, o experimento poderia ser dado como concluído logo após o passo 12, antes de qualquer alíquota.

## 5. Tabela de resultados (passo 23)

Segue o padrão mais recente de tabelas do projeto (família `obj_notes_table_9`), com os textos vindo por parâmetro em vez de hardcoded:

- **`obj_btn_notes_table_experiment_4`** — botão que abre/fecha a tabela; guarda `texts`, então o que foi digitado persiste entre aberturas. Registrado em `experiment_materials_btns` na instância de `obj_experiment_materials` da sala.
- **`obj_notes_table_experiment_4`** — monta o grid: 2 linhas de cabeçalho (identidade da coluna + tempo de reação) × 10 colunas (Controle Iodo, Controle Amido, Tubo 0-7), e 2 linhas de dados (Cor, Interpretação).
- **`obj_writable_cell_experiment_4`** — célula editável. Foi criada em vez de reusar `obj_writable_cell` porque a base chama `try_instantiate_buffer_capacity()` a cada tecla, que é lógica exclusiva do experimento 3.
- **`update_notes_texts_experiment_4`** — achata as células no array `texts` do botão dono.

A linha de tempo do cabeçalho mostra o tempo **acumulado** (0, 2, 4... 14 min), não o intervalo entre coletas como aparece no PDF do roteiro — é o que corresponde ao `minutes_passed` real de cada alíquota.

## 6. Botão de finalizar

`obj_btn_submit_experiment_4` é criado junto da tabela, logo abaixo dela, e recebe a tabela em `parent` para poder fechá-la. Ao clicar, varre as instâncias de `obj_test_tube_experiment_4` e aprova se **algum tubo numerado de 0 a 7** satisfaz as duas condições:

1. `content.state.from_erlenmeyer == true` (recebeu alíquota — ver seção 4);
2. `content.color == global.liquids_experiment_4.iodine_control.color` (hidrólise completa).

Aprovado → `room_goto(rm_parabens)`. Reprovado → fecha a tabela e orienta o aluno a continuar coletando.

Os tubos são filtrados pelo `name` que o **jogador digitou** ao identificá-los (via `OPTIONS.IDENFICIAR_RECIPIENTE`): só entram nomes compostos apenas de dígitos, com valor entre 0 e 7. Isso significa que a validação depende de o aluno ter nomeado os tubos conforme o roteiro.

A checagem é sobre o **estado real dos tubos**, não sobre o que foi digitado na tabela — a tabela é anotação livre, sem gabarito, como no roteiro original.

## 7. Armadilha de manutenção: `.yyp` e a IDE aberta

Recursos criados fora do GameMaker precisam de duas coisas: o `.yy` próprio na pasta do recurso **e** uma entrada em `laboratorio.yyp`. Faltando a entrada, o script/objeto não compila e o erro em runtime é `Variable <...> not set before reading it` no ponto de uso — foi o que aconteceu com `resolve_dynamic_mix` (que existia só como `.gml` e por isso nunca funcionou, inclusive no experimento 4) e com `obj_btn_submit_experiment_4`.

Pior: **com o projeto aberto na IDE, o GameMaker reescreve o `laboratorio.yyp` a partir do estado em memória** e descarta entradas adicionadas por fora. Ao criar recursos manualmente, feche o projeto antes e reabra depois, e confira que a entrada sobreviveu.
