*** Settings ***
Documentation    Teste da funcionalidade de pesquisa do blog do agi
Resource        ${CURDIR}/../resources/base.robot

Test Setup      Start Browser Session     ${BROWSER}   ${URL}
Test Teardown   Quit Browser Session  
          

*** Test Cases ***
Test Case 01: clicar na lupa e validar campo digitavel e botão pesquisar
    Dado que estou na pagina do blog do agi
    Quando clicar no ícone da lupa
    Então devo ver o campo de pesquisa
    E o botão pesquisar