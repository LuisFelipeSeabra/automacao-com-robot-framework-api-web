*** Settings ***
Resource    ../../common/base_web.resource

*** Keywords ***

transformar webelement em texto
    [Arguments]    ${webelement}
    ${webelement}=     Get WebElement     ${webelement}
    ${webelement}=     Get Text    ${webelement}
    RETURN    ${webelement}