*** Settings ***
Resource    ../../common/base_api.resource

*** Keywords ***
Gerar payload para login    
    [Arguments]     ${EMAIL}    ${SENHA}
    ${body}=    criar payload para gerar token        ${EMAIL}    ${SENHA}
    Set Test Variable    ${body}

efetuar login
    [Arguments]    ${EMAIL}    ${SENHA}    ${STATUSCODE}
    Gerar payload para login    ${EMAIL}    ${SENHA}
    gerar token    ${EMAIL}    ${SENHA}    ${STATUSCODE}


