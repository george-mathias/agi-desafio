*** Settings ***
Documentation    Contém as implementações dos casos de teste

Library          Browser
Resource         ${CURDIR}/../base.robot

*** Variables ***
${SELETOR_ICONE_LUPA}       button[id="search-open"]
${SELETOR_CAMPO_PESQUISA}   div[style='display: block;']
${SELETOR_BTN_PESQUISAR}    //div[@class="desktop-search"]/form/input[@value="Pesquisar"]
${TEXTO_BTN_PESQUISAR}      Pesquisar

*** Keywords ***
# Caso de teste 01: clicar na lupa
Dado que estou na pagina do blog do agi
    Validate Title Page    ${TITLE_PAGE}
    
Quando clicar no ícone da lupa
    Click    ${SELETOR_ICONE_LUPA}

Então devo ver o campo de pesquisa
    Wait For Elements State    ${SELETOR_CAMPO_PESQUISA}    visible    5

E o botão pesquisar
    Validate Text     ${SELETOR_BTN_PESQUISAR}    ${TEXTO_BTN_PESQUISAR}