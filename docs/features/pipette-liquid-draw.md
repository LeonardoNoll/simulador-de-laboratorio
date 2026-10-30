# Desenho de Líquido na Pipeta

## Objetivo

Esta seção documenta o padrão de desenho do líquido dentro da pipeta. A ideia é fazer com que a função `draw_liquid_on_pipette` seja o mais "ignorante" possível sobre os detalhes visuais de cada modelo de pipeta.

Em vez de a função conhecer valores específicos por sprite, cada pipeta passa a carregar sua própria configuração visual por meio de uma `struct`.

## Princípio da Solução

A responsabilidade foi separada em duas partes:

- **A pipeta sabe como deve ser desenhada**: capacidade, cor do líquido e offsets visuais ficam na instância.
- **A função de draw só desenha**: ela lê os dados da pipeta e renderiza o retângulo do líquido.

Isso evita que o script precise ter regras como:

- se o sprite for `s_pipette_5ml`, use tais offsets;
- se o sprite for `s_pipette_10ml`, use outros offsets;
- se o conteúdo for `HCl`, use uma cor específica.

## Estrutura Recomendada

Cada pipeta pode declarar uma `struct` chamada `liquid_draw_setup` com os dados necessários para o desenho.

### Campos sugeridos

- `capacity_ml`: capacidade lógica da pipeta.
- `color`: cor do líquido a ser desenhado.
- `left_offset`: deslocamento horizontal da borda esquerda do líquido.
- `right_offset`: deslocamento horizontal da borda direita do líquido.
- `base_offset`: posição vertical da base do líquido.
- `max_liquid_pixels`: altura máxima do líquido quando a pipeta está cheia.

## Exemplo Prático

No `Create` da pipeta:

```gml
max_ml = 20;

liquid_draw_setup = {
    capacity_ml: 20,
    color: c_aqua,
    left_offset: 7,
    right_offset: 14,
    base_offset: 111,
    max_liquid_pixels: 86
};
```

Se a pipeta precisar de outra geometria, basta alterar a struct dessa instância sem mexer no script de desenho.

## Como a Função Deve Se Comportar

A função `draw_liquid_on_pipette` deve seguir esta ordem:

1. verificar se existe `ml` e se `ml > 0`;
2. ler `liquid_draw_setup` da instância, se existir;
3. usar os valores da struct para calcular posição e tamanho;
4. desenhar o retângulo com a cor configurada;
5. não decidir mais offsets por sprite e não inferir cor por conteúdo.

## O Que Sai da Função

Depois dessa padronização, a função não deve mais:

- identificar modelo de pipeta por `sprite_index`;
- usar `if` específicos para `5ml`, `10ml` ou qualquer outro caso;
- decidir cor com base em `content`, `HCl_color` ou `water_color`.

Essas decisões devem ficar fora do draw, preferencialmente no `Create` da pipeta ou no momento em que o líquido é carregado.

## Como Migrar uma Pipeta

Para transformar uma pipeta existente para esse padrão:

1. Defina `max_ml` no `Create`.
2. Adicione `liquid_draw_setup` com os valores visuais.
3. Garanta que o objeto continue definindo `ml` e `content` como o restante do fluxo espera.
4. Remova dependências implícitas do tipo "se for esse sprite, use tal valor".

## Benefícios Esperados

- Menos código condicional dentro de `draw_liquid_on_pipette`.
- Menos acoplamento entre visual e lógica.
- Fácil criação de novas pipetas com sprites diferentes.
- Configuração centralizada por objeto.
- Menor risco de quebrar o desenho ao adicionar novos modelos.

## Observação Importante

Essa abordagem funciona melhor quando todos os objetos seguem o mesmo contrato de dados. Se uma nova pipeta não definir `liquid_draw_setup`, o script pode cair em fallback, mas o resultado visual pode não ser confiável.

Por isso, o ideal é tratar `liquid_draw_setup` como parte obrigatória do contrato visual da pipeta.
