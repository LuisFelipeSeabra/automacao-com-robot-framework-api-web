*** Settings ***
Resource    ../../common/base_api.resource

*** Keywords ***
Quando acionar endpoint para efetuar login com usuário "${NOME}" e Senha "${SENHA}"
    efetuar Login    ${NOME}    ${SENHA}    200
    
Então sistema retornará status code "${STATUSCODE}" e gerará token corretamente
    Should Not Be Empty    ${token}
    Então sistema terá o retorno de status code "${STATUSCODE}" 

Quando acionar endpoint para efetuar login, para verificar mensagem de erro, com usuário "${NOME}" e Senha "${SENHA}"
    efetuar Login    ${NOME}    ${SENHA}    401
