*** Settings ***

Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***

${URL}                                   https://blogdoagi.com.br/
${BROWSER}                               chrome
${search_magnifying_glass}               //button[@id='search-open']
${search_field}                          name=s
${search_button}                              (//input[contains(@type,'submit')])[1]


*** Keywords ***
Given I access the blog page
    Open Browser            url=${URL}        browser=${BROWSER}    
    Maximize Browser Window
    Title Should Be         Blog do Agi

When I search for an article with the text "${result_found}"
    Wait Until Element Is Visible     locator=${search_magnifying_glass} 
    Sleep                             10
    Click Element                     locator=${search_magnifying_glass}  
    Sleep                             10
    Input Text                        locator=${search_field}        text=${result_found}        clear=true
    Sleep                             10
    
And I click on the search button
    Wait Until Element Is Visible     locator=${search_button}
    Click Element                     locator=${search_button}    
    Sleep                             10
Then I should validate the search message "${message_result}"
     Page Should Contain    text=${message_result}

When I search for an article not found with "${no_results}"     
    Wait Until Element Is Visible     locator=${search_magnifying_glass} 
    Sleep                             10
    Click Element                     locator=${search_magnifying_glass}  
    Sleep                             10
    Input Text                        locator=${search_field}        text=${no_results}        clear=true
    Sleep                             10

Then I should validate the search message "${not_found}" when it is not found
    Page Should Contain    text=${not_found}