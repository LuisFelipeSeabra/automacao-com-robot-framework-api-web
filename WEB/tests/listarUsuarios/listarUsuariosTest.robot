***Settings***
Documentation     Testes de Listar usuários
Resource     ../../resources/common/base_web.resource

Test Teardown    Fechar Sessao

*** Variables ***

***Test Cases***
Cenário 01: listar usuários
    [Setup]     gerar usuário para testes de login e abrir sessao
    @{lista_coluna}=    Create List    Nome  Email  Senha  administrador  Ações
    Dado que eu tenha realizado login    ${email_login}    ${senha_login}
    Quando clicar em "Listar" para usuários
    Então sistema apresentará as colunas: "${lista_coluna}"
    E uma lista de usuários
    