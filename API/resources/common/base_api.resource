***Settings***
Documentation     Todas as bibliotecas dos testes de API
Library           RequestsLibrary
Library           OperatingSystem
Library            FakerLibrary

Resource    commons_api.resource
Resource    ../configuration/config_api.resource
Library    ../data/createPayloads.py

###login
Resource    ../../resources/feature/login/loginApiKeywords.resource
Resource    ../../resources/feature/login/loginApiSteps.resource
Resource    ../../resources/feature/login/loginApiVariables.resource

###listarUsuarios
Resource    ../../resources/feature/usuarios/usuariosApiKeywords.resource
Resource    ../../resources/feature/usuarios/usuariosApiSteps.resource
Resource    ../../resources/feature/usuarios/usuariosApiVariables.resource


