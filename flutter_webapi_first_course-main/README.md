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

