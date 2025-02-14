***Settings***
Documentation     Testes de Listar usuários
Resource     ../../resources/common/base_api.resource


*** Variables ***

***Test Cases***
Cenário 01: cadastrar usuário com sucesso
    ${nome}=    First Name
    ${email}=    Email
    ${senha}=    Password
    Quando acionar a api para cadastro de cliente administrador e enviar nome "${nome}", Email "${email}" e senha "${senha}"
    Então sistema efetuará o cadastro do ciente com sucesso
    