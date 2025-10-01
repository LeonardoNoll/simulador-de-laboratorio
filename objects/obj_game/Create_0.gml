global.selected = noone
global.particle_sys = noone

randomize()

// Ambos os arrays devem seguir a mesma ordem
// e, para fins de organização, os items devem ter
// o mesmo nome

// Todo item deve ter um "case" equivalente no
// evento Left Released do obj_context_btn

enum OPTIONS {
	CALCAR,
	VERIFICAR,
	DIAGNOSTICAR,
	EXTRAIR_CONTEUDO,
	HIPOSSALIVACAO,
	POUCA_SALIVACAO,
	SALIVACAO_NORMAL,
	IDENTIFICAR,
	PREPARAR_PARA_COLETA,
	CRONOMETRAR,
	MAIS_1_MINUTO,
	MENOS_1_MINUTO,
	ACELERAR_CONTAGEM,
	FINALIZAR_TUTORIAL,
	REMOVER_PERA,
	IDENFICIAR_RECIPIENTE,
	REIDENFICIAR_RECIPIENTE,
	ABRIR_TUBO_DE_ENSAIO,
	FECHER_TUBO_DE_ENSAIO,
	AGITAR,
	SUBSTITUIR_PIPETA,
	PASSAR_LIQUIDO_AO_BEQUER,
	ABRIR_CENTRIFUGA,
	FECHAR_CENTRIFUGA,
	REMOVER_ITENS,
	MUDAR_COR,
	COLOCAR_OBJETO_NA_BALANCA
}

options_string = [
	"Calçar",
	"Verificar",
	"Diagnosticar",
	"Extrair conteúdo",
	"Hipossalivação",
	"Pouca salivação",
	"Salivação normal",
	"Identificar",
	"Prepara para coleta",
	"Cronometrar",
	"1+ Minuto",
	"1- Minuto",
	"Acelerar contagem",
	"Finalizar tutorial",
	"Remover pera",
	"Identificar recipiente",
	"Reidentificar recipiente",
	"Abrir tubo de ensaio",
	"Fechar tubo de ensaio",
	"Agitar",
	"Substituir pipeta",
	"Passar líquido ao béquer",
	"Abrir centrífuga",
	"Fechar centrífuga",
	"Remover itens",
	"Mudar a cor",
	"Colocar pote na balança"
]