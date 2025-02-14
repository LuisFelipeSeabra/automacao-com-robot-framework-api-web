*** Variables ***
${Texto_de_listar_usuarios}=          Funcionalidade de listagem de usuários que estão cadastrados.
${Botao_Listar}=        //h5/../a[contains(text(), 'Listar')]
${Texto_Lista_Dos_Usuarios}=          Lista dos usuários
${Lista_Coluna_De_Lista_Dos_Usuarios}     //h1[contains(text(), 'Lista dos usuários')]/..//table[@class='table table-striped']//th
${Elemento_Lista_Dos_Usuarios}     //h1[contains(text(), 'Lista dos usuários')]/..//table/tbody/tr[1]/td[1]
