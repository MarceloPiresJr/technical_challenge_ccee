*** Settings ***
Documentation       Keywords compartilhadas entre os testes

Resource            ${ROOT}/resource/main.robot


*** Keywords ***

Wait and Click Element
    [Documentation]    Aguardar o elemento estar visível e clica.
    [Arguments]    ${ELEMENT}    ${TIMEOUT}=20
    Wait until element is visible    ${ELEMENT}    timeout=${TIMEOUT}
    Capture Page Screenshot
    Click element    ${ELEMENT}

Wait and Input Text
    [Documentation]    Aguardar o elemento estar visível e digitar o texto.
    [Arguments]    ${ELEMENT}    ${TEXT}
    Wait until element is visible    ${ELEMENT}
    Capture Page Screenshot
    Input text    ${ELEMENT}    ${TEXT}
