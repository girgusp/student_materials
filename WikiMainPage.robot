*** Keywords ***
SearchForArticleInGivenLanguage
    [Arguments]   ${phrase}    ${language}
    Wait and Click Element  //*[@class="hide-arrow"]
    Select From List By Value  //*[@id="searchLanguage"]    ${language}    
    Wait and Input    //*[@id="searchInput"]    ${phrase}
    Wait and Click Element    //*[text()='Search'] 

Wait and Click Element
    [Arguments]   ${selector}    ${timeout}=${TRANSITION_DELAY}
    Wait Until Element Is Visible     ${selector}    ${timeout}
    Click Element    ${selector} 
    
Wait and Input
    [Arguments]   ${selector}    ${content}    ${timeout}=${TRANSITION_DELAY}
    Wait Until Element Is Visible     ${selector}    ${timeout}
    Input Text   ${selector}    ${content} 