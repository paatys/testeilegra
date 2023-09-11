/// <reference types="cypress"/>

describe("Pesquisa de artigo no blog agi", () => {
    beforeEach(() => {
        //Acessar o blog do agi
        cy.visit("https://blogdoagi.com.br/");
      });
   
    it('Acessar a pagina do agi e pesquisar um artigo existente', () =>{
        //Clica na lupa para exibir o campo de pesquisa
        cy.get('#search-open').click()
        //Verifica se o campo de pesquisa está visivel
        cy.get('.search-field').should('be.visible');
        //Clica no campo de pesquisa e insere um texto
        cy.get('.desktop-search > .search-form > label > .search-field').click({ multiple: true }).type('Agibank se prepara para transacionar via Drex');
        //Clica no botão de Pesquisar
        cy.get('.desktop-search > .search-form > .search-submit').click();
        //Valida a mensagem exibida, retorna os artigos encontrados
        cy.contains('Resultados da busca por: Agibank se prepara para transacionar via Drex')
    });

    it('Acessar a pagina do agi e pesquisar um artigo inexistente', () =>{
        //Clica na lupa para exibir o campo de pesquisa
        cy.get('#search-open').click()
        //Verifica se o campo de pesquisa está visivel
        cy.get('.search-field').should('be.visible');
        //Clica no campo de pesquisa e insere um texto
        cy.get('.desktop-search > .search-form > label > .search-field').click({ multiple: true }).type('Teste de automação');
        //Clica no botão de Pesquisar
        cy.get('.desktop-search > .search-form > .search-submit').click();
         //Valida a mensagem exibida, de resultado não encontrado
        cy.contains('Não encontramos nada para estes termos de busca. Tente novamente com palavras-chave diferentes.')
    });
    
    });
  

 