Language: pt-br
*** Settings ***
Resource            ${ROOT}/resource/main.robot

Test Setup          Open Session Web
Test Teardown       Run Keywords    Close Session    After Test

*** Test Cases ***

Preenche formulario "Enter Vehicle Data"
    [Documentação]
    [Tags]
    Dado que preencho o formulario
    Quando clico em next
    Então deve apresentar a tela de "Enter Insurant Data"