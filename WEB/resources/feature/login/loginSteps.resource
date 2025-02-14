*** Settings ***
Resource    ../../common/base_web.resource

*** Keywords ***
Dado que eu tenha acessado o sistema serverest   
    Wait Until Page Contains Element    ${BOTAO_ENTRAR}
    Capture Page Screenshot

Quando preencher usuário "${NOME_LOGIN}" e Senha "${SENHA_LOGIN}"
    aguardar elemento estar visivel na tela e preencher    ${Input_Email_Login}    ${NOME_LOGIN}
    aguardar elemento estar visivel na tela e preencher    ${Input_Senha_Login}    ${SENHA_LOGIN}
    
Então sistema efetuará o "${login}" com sucesso ao mostrar o texto "${Texto}"
    aguardar texto: "${Texto}" estar visivel e printar a tela 

Dado que eu tenha realizado login
    [Arguments]    ${NOME_LOGIN}    ${SENHA_LOGIN}
    Dado que eu tenha acessado o sistema serverest
    Quando preencher usuário "${NOME_LOGIN}" e Senha "${SENHA_LOGIN}"
    E clicar em "Entrar"
    Então sistema efetuará o "login" com sucesso ao mostrar o texto "${Texto_bem_vindo}"

Então sistema não efeturá login e apresentará o texto "${Texto}"
    aguardar texto: "${Texto}" estar visivel e printar a tela 

gerar usuário para testes de login e abrir sessao
    gerar usuário para testes de login
    Abrir Sessao