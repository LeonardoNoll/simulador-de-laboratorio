# Primeiros Passos no Gamemaker

## Visão geral

Se você está lendo isto, parabéns! Você é um novo integrante do projeto de desenvolvimento do laboratório virtual de microbiologia e química. Nesta etapa introdutória a sua responsabilidade será familiarizar-se com o Gamemaker, o projeto desenvolvido até agora e o ciclo de desenvolvimento do projeto. Pensando nisto, separamos conteúdos e atividades que lhe ajudarão nesta tarefa. Tenha em mente que você não precisa consumir todos os conteúdos em sua totalidade, apenas o que julgar como relevante. Boa sorte!

## Instalando o Gamemaker

- [Link oficial de download](https://gamemaker.io/pt-BR/download)
- [Gamemaker na Steam](https://store.steampowered.com/app/1670460/GameMaker/)
- [Vídeo tutorial oficial de download](https://www.youtube.com/watch?v=lKgC-pWQ1a8)
## Conteúdo introdutório

Nesta seção, separamos alguns conteúdos que apresentam a IDE. Portanto, vamos conhecer o Gamemaker do zero.  

- [Por que escolher o Gamemaker?](https://www.youtube.com/watch?v=XxxyGELApuQ)
- [Guia para iniciantes de Gamemaker](https://www.youtube.com/watch?v=bwQs9uLFr4E)
- [Crie seu primeiro jogo](https://www.youtube.com/watch?v=ypo83R7sIg0&list=PLLfRyNlUDowaIyjZ_gQBZznXT2lj1HJ92&index=8)

# Referência em GML

Esta seção trás compilados com informações aprofundadas sobre GML (GameMaker Language). Quando você tiver pego o básico e começar a desenvolver, certos conceitos mais complexos e as interações entre estes conceitos serão comuns. Use os materiais a seguir conforme a necessidade e dúvida.

- [Manual do GameMaker - português](https://manual.gamemaker.io/monthly/en/#t=Content.htm)
- [Manual do GameMaker - inglês](https://manual.gamemaker.io/monthly/br/#t=Content.htm)
- [Playlist de conceitos de programação em GML](https://youtube.com/playlist?list=PLwgH1hDD0q1Eq2xXKhkiJmtt7ml599CSt&si=ZuIHLgtfZHZd4tmP)

## Específico do projeto

Além dos conceitos gerais, também é interessante que você se familiarize com sistemas específicos do projeto. Esta secção trás alguns tutoriais que não correspondem ao que está no projeto completamente, mas ajudaram no desenvolvimento lógico e conceitual.

### Menu de contexto

- [Criando um menu de contexto](https://www.youtube.com/watch?v=CdbTBlBptyM)
- [Criando um menu de contexto - alternativo](https://www.youtube.com/watch?v=rH_Cri-2Ggk)
- Documentação de [[context-menu]]

### Drag and drop

- [Drag and drop simples](https://www.youtube.com/watch?v=lgF-lmvw2co)
- [Drag and drop complexo](https://www.youtube.com/watch?v=2Xov6BEm7VM)
- Documentação de [[generic-clickable-objects]]

## Botando a mão na massa

Tendo adquirido o conhecimento básico necessário para operar o GameMaker, podemos começar a trabalhar no projeto. Para tal, propomos o seguinte:

1. Acesse o laboratório através do [site](https://odo.poa.ifrs.edu.br/) (não se preocupe com o alerta);
2. Inicie o experimento "Sialometria Não Estimulada";
3. Complete o experimento observando aquilo que pode ser melhorado;
4. Baixe o [repositório](https://github.com/LeonardoNoll/simulador-de-laboratorio) para a sua máquina;
5. Abra o projeto no GameMaker;
6. Analise o código e tente entender o funcionamento deste experimento;
7. Tente implementar a sua melhoria, seja ela complexa ou simples;

Exemplo: 
	O béquer do primeiro experimento deve ser identificado antes de ser utilizado. Atualmente o experimento usa a função **identify**, mas a função **identify_recipient** representa uma representação mais didática do mesmo processo. Atualize o experimento de forma a acomodar o uso da nova função, tornando a representação mais fidedigna.