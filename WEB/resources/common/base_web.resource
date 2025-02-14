***Settings***
Documentation     Todas as bibliotecas aqui e open session e close session
Library           SeleniumLibrary
Library           OperatingSystem

Resource    commons_web.resource
Resource    ../configuration/config.resource
Library    ../aplication/webdriverManager.py
Resource    ../../../API/resources/common/commons_api.resource

###login
Resource    ../../resources/feature/login/loginKeywords.resource
Resource    ../../resources/feature/login/loginSteps.resource
Resource    ../../resources/feature/login/loginVariables.resource

###listarUsuarios
Resource    ../../resources/feature/listarUsuarios/listarUsuariosKeywords.resource
Resource    ../../resources/feature/listarUsuarios/listarUsuariosSteps.resource
Resource    ../../resources/feature/listarUsuarios/listarUsuariosVariables.resource

