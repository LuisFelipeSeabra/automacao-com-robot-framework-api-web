***Settings***
Documentation     Testes de login e logout
Resource     ../../resources/common/base_web.resource

Test Teardown    Fechar Sessao


***Test Cases***
Cenário 01: Login com sucesso
    [Setup]     gerar usuário para testes de login e abrir sessao
    Dado que eu tenha acessado o sistema serverest
    Quando preencher usuário "${email_login}" e Senha "${senha_login}"
    E clicar em "Entrar"
    Então sistema efetuará o "login" com sucesso ao mostrar o texto "${Texto_bem_vindo}"

Cenário 02: Logout com sucesso
    [Setup]     gerar usuário para testes de login e abrir sessao
    Dado que eu tenha realizado login    ${email_login}    ${senha_login}
    Quando clicar em "Logout"
    Então sistema efetuará o "logout" com sucesso ao mostrar o texto "${Texto_Logout}"

Cenário 03: Login com senha errada
    [Setup]     Abrir Sessao
    Dado que eu tenha acessado o sistema serverest
    Quando preencher usuário "${NOME}" e Senha "1234"
    E clicar em "Entrar"
    Então sistema não efeturá login e apresentará o texto "${Texto_Logout}"