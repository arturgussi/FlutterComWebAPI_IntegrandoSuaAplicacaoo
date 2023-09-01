![Thumbnail GitHub](https://github.com/alura-cursos/flutter_webapi_first_course/raw/main/thumbnail01.png)

Repositório do Curso de Flutter com Web API - Integrando sua Aplicação, da Alura. 

## ✔️ Técnicas e tecnologias

**Veja mais de perto o que você aprenderá sobre** :
- `API`: O que é e como funciona uma API e sua relação com a internet;
- `http`: O que é o Protocolo HTTP e também a Biblioteca HTTP do Dart;
- `async/await`: Como usar o `async` e o `await` para requisições que são operações assíncronas;
- `interceptors`: O que é e como usar um interceptador HTTP;
- `logger`: O que é e como usar um logger para melhor visualização no console;

## 🔨 Projeto: Simple Journal

O código de Flutter: Web API - Integrando sua Aplicação são **Classes** e **Funções** para gerar uma aplicação de um **Diário pessoal**, que **registra entradas diárias** da pessoa usuária do aplicativo.

![GIF animado demonstrando funcionalidades do projeto](https://github.com/alura-cursos/flutter_webapi_first_course/raw/main/gif01.gif)

## 🛠️ Abrir e rodar o projeto

**Para executar este projeto você precisa:**

- Ter uma IDE, que pode ser o  [Android Studio](https://developer.android.com/) instalado na sua máquina;
- Ter a [SDK do Flutter](https://docs.flutter.dev/get-started/install) na versão 3.0.0;
- Ter o [Node.JS](https://nodejs.org/en/) instalado na sua máquina;
- (A partir da branch "Aula 02")  Ter um servidor [JSON-Server](https://www.npmjs.com/package/json-server) rodando o arquivo [server/db.json] em um endereço visível ao emulador usado;

## 📚 Mais informações do curso

Gostou do projeto e quer conhecer mais? Você pode [acessar o curso](https://cursos.alura.com.br/course/flutter-webapi-integrando-aplicacao) que desenvolve o projeto desde o começo! Nele você aprenderá:

- O que é uma Web API;
- Configurar uma API Local;
- Configurar um projeto Flutter para fazer requisições para APIs;
- O que é e como usar REST e JSON;
- Métodos do HTTP como GET e POST;

Esse curso faz parte da [formação de Flutter da Alura](https://cursos.alura.com.br/formacao-flutter)

*Te vejo lá!*


Temas no Flutter: Aprendemos que, quando vamos dar continuidade a um projeto que já foi iniciado, muitas vezes precisamos fazer algumas configurações-base para que, ao final, consigamos entregar o que foi pretendido. No nosso caso, a aparência de nossa aplicação estava completamente diferente do pedido em protótipo e por isso a fizemos a alteração utilizando o ThemeData.

API e REST: Vimos que, para falar sobre WebAPI, precisamos ter pelo menos uma introdução sobre o que é API e REST. Entendemos que API é uma interface que faz a ligação da comunicação entre cliente e servidor, e que REST é um conjunto de regras que regem a implementação e funcionamento das APIs que são RESTful.

Configurando a API Local: Vimos que existem variáveis que envolvem a configuração e a manutenção de uma API rodando na Web, e que, para evitar transtornos, decidimos usar uma API local para nossos estudos. Essa API é a JSON-Server do Node.JS.

Serviços no Flutter: Aprendemos também que é importante separar os blocos de código responsáveis pela comunicação da nossa aplicação com as APIs. Para isso, criamos uma classe chamada JournalService que gerenciará todas as nossas requisições.

IP e HTTP: Na sequência entendemos um pouco de como funciona a Internet e o que são os protocolos IP e HTTP. Vimos que o IP é um protocolo que ajuda a localizar uma máquina na Web através de um endereço e uma porta. Já o HTTP é o protocolo que usamos para fazer as comunicações cliente-servidor de modo a acessar e manipular os dados que o servidor possui.

Interceptadores e Loggers: Por fim, discutimos que, como a biblioteca http não nos dá uma forma interessante de fazermos um diagnóstico em tempo real das requisições e respostas que estão passando pela nossa aplicação, seria importante configurarmos uma. E foi exatamente o que fizemos usando a biblioteca http_interceptor para interceptar todas as requisições e respostas; e a logger para mostrar informações úteis de forma organizada e agradável no console.

Assincronismo: Começamos fazendo uma breve revisão sobre assincronismo no Dart, pois notamos que quando estamos lidando com requisições para Web APIs, essas operações não serão instantâneas, ou seja, levarão um tempo para acontecer, portanto, serão assíncronas.

Tela de Adição de Entradas: Vimos também que era necessário construir uma tela responsável por captar da pessoa usuária as informações que serão enviadas para a Web API.

Método POST: Na sequência, usamos o método POST para enviar as informações captadas para nossa Web API. Para isso, foi necessário converter nosso objeto para um JSON, configurar o cabeçalho para avisarmos que estamos enviando a informação usando esse padrão e verificar se a resposta do servidor indica que a entrada foi criada com sucesso.

SnackBar: Por fim, notamos ser extremamente importante dar um feedback para a pessoa usuária a respeito do sucesso da operação assíncrona. Para isso, usamos um SnackBar que será mostrado na tela quando a resposta do servidor for um 201 Created.

Buscando da API: Após ter aprendido como adicionar uma nova informação a um recurso usando o POST, era chegada a hora de aprendermos a ler as entradas do recurso. Para isso usamos o método GET para acessar o journals do nosso servidor e assim recebermos uma lista contendo todas as entradas registradas.

Listando na Tela: Com a lista de entradas disponíveis via nossa operação com o GET, faltava apenas conseguirmos mostrar na tela principal. Para isso, convertemos de volta o JSON que chega como resposta para uma lista de Journals, e com essa lista podemos substituir o database aleatório que usávamos por essa informação real recebida via Web API.

Refatorando o código: Por fim, refatoramos nosso código para que ele ficasse bem mais estruturado e legível.

Alterando com PUT: Vimos que, uma vez que conseguimos adicionar e ler entradas no nosso recurso via HTTP, o próximo passo natural é permitir que as pessoas usuárias consigam alterar essas entradas. Para isso, usamos o método PUT no HTTP, passando o ID da entrada a ser alterada na URL e todo o corpo do objeto Journal como JSON no body da requisição.

Removendo com DELETE: Por último, era necessário remover uma entrada. Vimos que, na verdade, essa é uma das operações mais simples para nosso caso. Bastou usar o método DELETE do HTTP, passando o ID da entrada a ser alterada na URL.

Dialog de Confirmação: Por a remoção ser uma operação destrutiva, notamos que seria interessante adicionar uma camada de proteção contra casos acidentais. Para isso criamos um Dialog genérico de confirmação (genérico, pois ele poderá ser usado em outras situações), e apenas quando a pessoa usuária confirmar o desejo de executar essa operação é que removeremos a entrada.

Instalando o JSON Server Auth: Vimos que, da forma que estava, nosso servidor não estava preparado para lidar com autenticação de pessoas usuárias. Para habilitar essa funcionalidade instalamos JSON Server Auth.

Entendendo o Fluxo de Autorização: Conversamos a respeito de que cada API terá especificidades na forma de autenticar e autorizar pessoas usuárias, mas que o sistema que usa Usuário - Senha - Token, ou apenas Autenticação com Token, é muito comum e é o que usaremos com o JSON Server Auth.

Postman: Conhecemos o Postman, uma ferramenta de execução e detalhamento de requisições e respostas. Ela é muito útil para fazermos operações de testes de forma rápida para nossa API, alterando livremente as informações enviadas (como cabeçalhos e corpo) e analisando cuidadosamente a resposta recebida.

Conheça o SharedPreferences: Existem 3 formas de manipular dados de forma persistente no Flutter: Com I/O para editar arquivos; com SQFlite com o uso de um banco de dados; e com o SharedPreferences, onde podemos salvar pequenos dados estruturados com chave e valor;

Instale o Shared Preferences: Para isso funcionar, você precisa instalar a dependência adicionando shared_preferences: ^2.0.15 no pubspec.yaml, e rodar o comando flutter pub get no terminal;

Salve as informações no Service: Agora, basta criar um método no AuthService para salvar as informações de ID e Token que chegam das requisições de Login e Register!

Importando Tela de Login: Vimos que nem sempre precisaremos criar uma ferramenta do zero, muitas vezes parte do código que nós vamos usar já está pronta e basta importá-la para o nosso código. Foi exatamente esse o caso da nossa Tela de Login, recebemos o código em Dart pronto e apenas precisamos importá-lo para nosso diretório de arquivos e fazer pequenas configurações.

Fazendo Login via API: Logo na sequência precisávamos enviar as informações de e-mail e senha para a API, para que assim o servidor pudesse tentar efetuar a autenticação com essas informações. Para isso, capturamos esses dados na tela que importamos e criamos um Service (serviço) chamado auth_service. Fizemos isso para separar as requisições referentes a Journal das referentes a autenticação. Depois foi só enviar as informações de e-mail e senha via POST, e receber a resposta do servidor.

Cadastrando via API: Notamos que, para não precisarmos criar uma tela para cadastro, poderíamos sugerir o cadastro de uma nova pessoa usuária caso o e-mail passado no 
Login fosse inválido. Para fazer esse teste, verificamos o Status Code da resposta do login e, em caso de falha, verificamos se o corpo da resposta continha o texto que vimos ser a mensagem de erro para casos onde o servidor não achou o e-mail passado na requisição na sua base de dados. Nesses casos, abrimos um Dialog de confirmação sugerindo a pessoa usuária a criar uma nova conta com esse e-mail e senha.

Salvando Localmente: Por fim, sabemos que logo adiante vamos usar a informação do Token e do ID do usuário para fazer nossas requisições autenticadas. Por isso, já fizemos o trabalho de salvar de forma persistente, usando o Shared Preferences, essas informações na memória do dispositivo.


Authorization: Contém as credenciais para autenticar um User-Agent com o servidor;
Last-Modified: Última data de modificação de um recurso, usado para comparar várias versões de um mesmo recurso;
Keep-Alive: Controla por quanto tempo uma conexão persistente deve permanecer aberta;
Accept: Informa ao servidor sobre os tipos de dados que podem ser enviados de volta. Isto é MIME-type;
Content-Type: Indica o tipo de mídia do recurso.

Redirecionamento na Tela Inicial: Percebemos que, caso a pessoa usuária já tenha logado uma vez, ela já possuirá o token de autenticação, então não faz sentido mandá-la para tela de login novamente. Para resolver isso fizemos uma verificação se o token é nulo já na nossa main, caso seja, fazemos nossa initialRoute direcionar para login. Caso o token seja diferente de nulo, nossa initialRoute recebe o valor home.

Cabeçalho de Autenticação: Aprendemos que precisamos autenticar nossas operações já construídas de GET, POST, PUT e DELETE. Para isso, entendemos no Postman como funciona adicionar um cabeçalho de autenticação com Token em uma requisição HTTP, e obtivemos e adicionamos essa informação em todas as operações em JournalService.

Deslogando o Usuário: Por fim, aprendemos que é necessário dar a opção para a pessoa usuária deslogar da sua conta. Para isso, criamos um Drawer com um botão de sair. Ao ser clicado, esse botão limpa as informações guardadas no Shared Preferences e chama a Tela de Login.