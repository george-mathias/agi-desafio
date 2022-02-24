*** Settings ***
Documentation    Ações de validação

Library          Browser

*** Variables ***
${TITLE_PAGE}    Blog do Agi -

*** Keywords ***
Validate Title Page
    [Arguments]        ${title}
    Get Title    ==    ${title}

Validate Text
    [Arguments]    ${seletor}    ${texto}
    # ${text}=   Get Text    ${seletor}    should be    ${texto}
    ${text}=   Get Text    ${seletor}
    Should Be Equal    ${text}    ${texto}