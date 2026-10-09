# Experimento 4: Atividade Enzimática Salivar

## Arquitetura de Reagentes (LiquidInstance)

O experimento 4 introduziu a necessidade de rastrear o estado dinâmico dos líquidos (como tempo de reação e presença de enzimas), o que levou à migração do sistema estático para o sistema de instâncias.

### 1. LiquidDef vs LiquidInstance
- **LiquidDef**: Definição global e estática (id, cor, nome, regras de mistura fixas). Localizado em `RoomCreationCode.gml`.
- **LiquidInstance**: Uma amostra concreta de um líquido. Possui um campo `state` (struct) para dados mutáveis.

### 2. Centralização com `ensure_liquid_instance`
Para reduzir a repetição de código nos frascos de reagentes, foi criado o script `ensure_liquid_instance(instancia)`.
- **Funcionamento**: Se um objeto possui `content_id` mas o campo `content` (a instância) ainda é `undefined`, ele cria a instância automaticamente.
- **Lazy Initialization**: A instância é criada apenas quando necessária (ex: ao clicar no frasco ou ao tentar coletar com a pipeta).

### 3. Lógica do Amido (Starch)
O amido (`starch`) possui estados específicos controlados no Erlenmeyer:
- `minutes_passed`: Tempo decorrido no banho-maria.
- `saliva_added`: Booleano que indica se a saliva (enzima) foi adicionada.

A hidrólise é decidida dinamicamente no script `resolve_dynamic_mix.gml`:
- Sem `saliva_added` -> não há hidrólise; o amido reage com o iodo (`starch_control`, escuro).
- Com `saliva_added`, a cor é **interpolada** ao longo do tempo em vez de decidida por um corte binário. Ver [reaction_and_results](reaction_and_results.md) para o funcionamento completo do gradiente, da cadência do cronômetro e da propagação de estado.

### 4. Como Criar Novos Reagentes
Para adicionar um novo reagente compatível com este sistema, configure o `Create` do objeto:
```javascript
event_inherited();
content_id = "id_do_liquido"; // Definido em global.liquids_experiment_4
initial_liquid_state = { ... }; // Opcional: estado inicial
on_release = try_to_pass_liquid_to_test_tube_experiment_4; // Para transferência direta
```

### 5. Fluxo de Transferência
1. **Coleta**: `collect_liquid` chama `ensure_liquid_instance` na fonte, faz um `clone()` da instância e armazena na pipeta.
2. **Mistura**: `transfer_liquid_to_test_tube` utiliza `resolve_dynamic_mix` para checar regras de estado antes de recorrer às regras estáticas.
3. **Esvaziamento**: Após a transferência bem-sucedida, a pipeta é limpa automaticamente via `try_to_pass_liquid_to_test_tube_experiment_4`.
