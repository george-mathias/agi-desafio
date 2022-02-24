*** Settings ***
Documentation    Ações de navegação

Library          Browser
Resource         validacoes.robot

*** Variables ***
${URL}         https://blogdoagi.com.br/
${BROWSER}     chromium

*** Keywords ***
Start Browser Session
    [Arguments]    ${browser}    ${url}
    New Browser    ${browser}    headless=false
    New Page       ${url}

Quit Browser Session
    Take Screenshot
    Close Browser