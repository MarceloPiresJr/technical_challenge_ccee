Language: pt-br
*** Settings ***
Resource            ${ROOT}/resource/main.robot

Suite Setup         Open Session Web
Suite Teardown      Close Session
Test Teardown       After Test


*** Test Cases ***
Preenche o formulario da aplicação
    [Documentação]    Teste responsável por preencher com sucesso os formularios e em seguida enviar o formulario e validar se a mensagem de sucesso e exibido.
    [Tags]    teste01
    Dado que preencho o formulario "Enter Vehicle Data"
    E preencho o formulario "Enter Insurant Data"
    E preencho o formulario "Enter Product Data"
    E preencho o formulario "Select Price Option"
    E preencho o formulario "Send Quote"
    E envio o formulario
    Então deve apresentar a mensagem de sucesso "Sending e-mail success!"