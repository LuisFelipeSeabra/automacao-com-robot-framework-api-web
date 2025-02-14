*** Settings ***
Resource    ../common/base_api.resource
Library    JsonValidator

*** Variables ***

*** Keywords ***
criar sessao
    Create Session    api    ${BASE_URL_API}    verify=True

gerar token
    [Arguments]    ${EMAIL}    ${SENHA}    ${STATUSCODE}
    POST request test      /login    ${body}    ${STATUSCODE}
    
    IF    "${STATUSCODE}" == "200"
        ${token}           Set Variable     ${resposta['authorization']}
        Set Test Variable     ${token}     
    END
    Set Test Variable     ${resposta}
    

POST request test
    [Arguments]         ${url}     ${body}    ${status}=200   
    criar sessao
    ${body}=    Convert To Json    ${body} 
    &{headers}=     Create Dictionary            Content-Type=application/json 
    ${response}     POST On Session     api     url=${url}     headers=${headers}     expected_status=${status}    json=${body}
    ${resposta}     Set Variable    ${response.content}
    ${resposta_status}=    Set Variable    ${response.status_code}
    ${resposta}     To Json    ${resposta}
    Set Test Variable     ${resposta}
    Set Test Variable     ${resposta_status}

GET request
    [Arguments]         ${url}    ${status}=200
    criar sessao
    &{headers}=     Create Dictionary            Content-Type=application/json 
    ${response}     GET On Session     api     url=${url}     headers=${headers}     expected_status=${status}
    ${resposta}     Set Variable    ${response.content}
    ${resposta}     To Json    ${resposta}
    Set Test Variable     ${resposta}

Então sistema terá o retorno de status code "${STATUSCODE}" 
    ${STATUSCODE}=    Convert To Number    ${STATUSCODE}
    Should Be Equal    ${resposta_status}    ${STATUSCODE}

E apresentará a mensagem "${msg}"
    Should Be Equal    ${msg}    ${resposta['message']}

gerar usuário para testes de login
    ${nome_login}=    First Name
    ${email_login}=    Email
    ${senha_login}=    Password    special_chars=FALSE
    Sleep    0.5
    Set Test Variable    ${email_login}
    Set Test Variable    ${senha_login}
    Set Test Variable    ${nome_login}
    criar usuário    ${nome_login}    ${email_login}    ${senha_login}    true