# testeilegra
Este projeto visa automatizar testes de qualidade de software para o testes da ilegra 

# Projeto de Automação de Testes com Cypress

Este projeto contém testes automatizados para verificar o funcionamento de um campo de pesquisa do blog do Agi usando o Cypress.

## Pré-requisitos

Antes de executar os testes, certifique-se de ter as seguintes ferramentas instaladas em seu sistema:

- [Node.js](https://nodejs.org/)
- [Cypress](https://www.cypress.io/)

## Instalação

1. Clone este repositório:

   ```shell
   git clone https://github.com/paatys/testeilegra.git


2. Navegue até o diretório do projeto:

 <pre>cd testeilegracypress</pre>


3. Instale as dependências do projeto:
<pre>npm install cypress</pre>

## Executando os Testes
Para executar os testes, você pode usar o seguinte comando:

<pre>npx cypress open </pre>


Isso iniciará o Cypress e abrirá a interface do usuário, onde você pode selecionar os testes a serem executados.



## Estrutura do Projeto

cypress/e2e: Esta pasta contém o arquivo de teste Cypress.

cypress/support: Aqui você pode adicionar módulos de suporte personalizados, como comandos personalizados ou plugins.

cypress.config.json: Arquivo de configuração do Cypress.


***************************************************************************************************************************


# Projeto de Automação de Testes com Robot Framework

Este projeto contém testes automatizados para verificar o funcionamento de um aplicativo ou sistema usando o Robot Framework.

## Pré-requisitos

Antes de executar os testes, certifique-se de ter as seguintes ferramentas instaladas em seu sistema:

- [Python](https://www.python.org/)
- [Robot Framework](https://robotframework.org/)
- Bibliotecas e dependências adicionais, como Selenium Library

## Instalação

1. Clone este repositório:

   ```shell
   git clone https://github.com/paatys/testeilegra.git

2. Navegue até o diretório do projeto:

 <pre>cd testeilegrarobot</pre>


3. Instale as dependências do projeto:
<pre>pip install robotframework</pre>   


## Executando os Testes
Para executar os testes, você pode usar o seguinte comando:

<pre>robot -d ./logs blogtest.robot</pre>

Isso iniciará a execução dos testes no diretório tests/pesquisa.

## Estrutura do Projeto

testeilegrarobot/tests/pesquisa: Esta pasta contém o arquivo de teste do Robot Framework "blogtest.robot"

testeilegrarobot/tests/pesquisa/: Aqui você pode adicionar recursos reutilizáveis, como keywords customizadas e variáveis. "blogresources.robot"

testeilegrarobot/tests/pesquisa/logs/: Esta pasta armazenará os resultados dos testes após a execução.
