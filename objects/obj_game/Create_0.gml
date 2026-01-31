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
	ABRIR_TAMPA, 
	TAMPA_ENTREABERTA,
	ABRIR_AUTOCLAVE, 
	FECHAR_AUTOCLAVE,
	PASSAR_PARA_O_FRASCO,
	//MUDAR_COR,
	PASSAR_LIQUIDO_ERLENMEYER, 
	PASSAR_LIQUIDO_PARA_O_FRASCO,
	PEGAR_AGUA_DESTILADA,
	LIGAR_AGITADOR_MAGNETICO,
	LIGAR_AUTOCLAVE,
	REMOVER_FRASCO,
	FECHAR_TAMPA,
	BANHO_MARIA,
	LIGAR_LUZ_ULTRAVIOLETA
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
	"Abrir a tampa",
	"Deixar tampa entreaberta",
	"Abrir a autoclave",
	"Fechar autoclave",
	//"Mudar a cor",
	"Passar para o frasco", 
	"Passar líquido ao erlenmeyer",
	"Passar para o frasco",
	"Pegar água destilada",
	"Ligar agitador magnético",
	"Ligar autoclave",
	"Remover o frasco de vidro",
	"Fechar a tampa",
	"Levar para o banho maria",
	"Ligar a luz ultravioleta"
]