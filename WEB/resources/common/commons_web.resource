*** Settings ***
Resource    ../common/base_web.resource

*** Variables ***

*** Keywords ***
Abrir Sessao
    ${CHROMEDRIVER_PATH}=    Baixar Chromedriver Path
    Open Browser     ${BASE_URL}    ${BROWSER}    executable_path=${CHROMEDRIVER_PATH}

Fechar Sessao 
    Close Browser

${word} clicar em "${btn}"    
    Click Element    ${Botao_${btn}}

aguardar texto: "${Texto}" estar visivel e printar a tela 
    Wait Until Page Contains    ${Texto}
    Capture Page Screenshot

