*** Settings ***
Resource    ../../common/base_web.resource
Library    Collections

*** Keywords ***
Quando clicar em "${btn}" para usuários
    aguardar texto: "${Texto_de_listar_usuarios}" estar visivel e printar a tela
    E clicar em "${btn}"  
    aguardar texto: "${Texto_Lista_Dos_Usuarios}" estar visivel e printar a tela 

    
Então sistema apresentará as colunas: "${list}"
    ${elementos_da_pagina}=    Get WebElements    ${Lista_Coluna_De_Lista_Dos_Usuarios}
    @{Lista_Coluna_De_Lista_Dos_Usuarios}=    create List    ${elementos_da_pagina}

    FOR    ${element}    IN    @{Lista_Coluna_De_Lista_Dos_Usuarios}
        ${element}=     Get Text    ${element} 
        List Should Contain Value    ${list}     ${element} 
        
    END
    
    
E uma lista de usuários
    Wait Until Page Contains Element    ${Elemento_Lista_Dos_Usuarios}
    ${primeiro_elemento_lista}=    transformar webelement em texto    ${Elemento_Lista_Dos_Usuarios}
    Should Not Be Empty    ${primeiro_elemento_lista}