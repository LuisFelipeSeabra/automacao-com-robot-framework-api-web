*** Settings ***
Resource    ../../common/base_api.resource

*** Keywords ***

Gerar payload para cadastro de cliente   
    [Arguments]     ${NOME}     ${EMAIL}    ${SENHA}    ${ADM}
    ${body}=    criar_payload_para_cadastro_de_cliente        ${NOME}     ${EMAIL}    ${SENHA}    ${ADM}
    Set Test Variable    ${body}

criar usuário    
    [Arguments]    ${nome}    ${email}    ${senha}    ${adm}
    Gerar payload para cadastro de cliente      ${nome}    ${email}    ${senha}    ${adm}
    POST request test       /usuarios    ${body}    201