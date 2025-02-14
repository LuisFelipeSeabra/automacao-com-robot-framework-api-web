*** Settings ***
Resource    ../../common/base_api.resource
Library    Collections

*** Keywords ***
Quando acionar a api para cadastro de cliente administrador e enviar nome "${nome}", Email "${email}" e senha "${senha}"
    criar usuário    ${nome}    ${email}    ${senha}    true


Então sistema efetuará o cadastro do ciente com sucesso
    Então sistema terá o retorno de status code "201" 
    E apresentará a mensagem "Cadastro realizado com sucesso"