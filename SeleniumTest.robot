*** Settings ***
Test Setup    Run Keywords    Open Browser    ${SITE1}
...           AND    Maximize Browser Window 
Test Teardown    Close All Browsers
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    WikiMainPage.robot

*** Variables ***
${SITE1}    https://www.wikipedia.org    #WIKI URL
${PAGE_DELAY}    200ms
${TRANSITION_DELAY}    2s

*** Test Cases ***
TemplateTest-01    HP Lovecraft    pl
 
TemplateTest-01    Franko Revenge   pl
   
TemplateTest-01    Genesis   en

    
*** Keywords ***
Check If Number Of Pages Matches Description    
    ${results}    Get Element Count    //*[@class="mw-search-result"]
    ${expected_number_of_results}    Get Text    //*[@id="mw-search-top-table"]/*//strong
    @{expected_number_of_results}    Split String    ${expected_number_of_results}
    ${expected_number_of_results}    Get From List    ${expected_number_of_results}    -1
    Should Be Equal As Integers    ${results}    ${expected_number_of_results}     
    Wait and Click Element    //span[@class="searchmatch" and text()="Lovecraft"]   
    
Get to Wiki article
    [Arguments]    ${incorrect_phrase}    ${language}
    SearchForArticleInGivenLanguage    ${incorrect_phrase}    ${language}
    Check If Number Of Pages Matches Description 
