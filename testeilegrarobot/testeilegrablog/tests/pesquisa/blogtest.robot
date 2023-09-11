*** Settings ***
Resource     blogresources.robot


*** Test Cases ***

Test Scenario 01: Search for an article on the agi blog
    [Documentation]        This test will access agi's blog and search for an existing article
    [Tags]                 ct_01
    Given I access the blog page
    When I search for an article with the text "Agibank se prepara para transacionar via Drex"
    And I click on the search button
    Then I should validate the search message "Resultados da busca por: Agibank se prepara para transacionar via Drex"


Test Scenario 02: Search for a file that does not exist on the agi blog
    [Documentation]        This test will access the agi blog and search for an article that does not exist
    [Tags]                 ct_02
    Given I access the blog page
    When I search for an article not found with "testando automações" 
    And I click on the search button     
    Then I should validate the search message "Não encontramos nada para estes termos de busca. Tente novamente com palavras-chave diferentes" when it is not found


