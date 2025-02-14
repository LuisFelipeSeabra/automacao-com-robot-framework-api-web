***Settings***
Documentation     Testes de login e logout
Resource     ../../resources/common/base_api.resource

Task Setup     gerar usuário para testes de login

***Test Cases***
Cenário 01: Login com sucesso
    Quando acionar endpoint para efetuar login com usuário "${email_login}" e Senha "${senha_login}"
    Então sistema retornará status code "200" e gerará token corretamente

Cenário 02: Login com usuario inválido
    Quando acionar endpoint para efetuar login, para verificar mensagem de erro, com usuário "${NOME}" e Senha "1234"
    Então sistema terá o retorno de status code "401" 
    E apresentará a mensagem "Email e/ou senha inválidos"