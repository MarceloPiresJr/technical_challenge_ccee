Language: pt-br

*** Settings ***
Resource    ${ROOT}/resource/main.robot


*** Keywords ***
que preencho o formulario "Enter Vehicle Data"
    [Documentação]    Keyword responsável por preencher o formulário "Enter Vehicle Data".
    ...    E verifica se o contador correspondente é decrementado corretamente.
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    12

    Wait Until Element Is Visible    ${enter_vehicle_data.make}
    Wait and Click Element    ${enter_vehicle_data.make}
    Wait and Click Element    ${dropdown_make.audi}
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    11

    Wait and Click Element    ${enter_vehicle_data.model}
    Wait and Click Element    ${dropdown_model.motorcycle}
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    10

    Wait and Input Text    ${enter_vehicle_data.cylinder_capacity}    2
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    9

    Wait and Input Text    ${enter_vehicle_data.engine_performance}    2
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    8

    ${date_of_manufacture}    Get Current Date    result_format=%m/%d/%Y
    Wait and Input Text    ${enter_vehicle_data.date_of_manufacture}    ${date_of_manufacture}
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    7

    Wait and Click Element    ${enter_vehicle_data.number_of_seats}
    ${format_dropdown_number_of_seats}    Format String
    ...    ${dropdown_number_of_seats.number_of_seats}
    ...    number_of_seats=4
    Click Element    ${format_dropdown_number_of_seats}
    Wait and Click Element    ${enter_vehicle_data.number_of_seats}
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    6

    Wait Until Element Is Visible    ${enter_vehicle_data.right_hand_drive_yes}
    Click Element    ${enter_vehicle_data.right_hand_drive_yes}

    Wait and Click Element    ${enter_vehicle_data.number_of_seats_motorcycle}
    ${format_number_of_seats_motorcycle}    Format String
    ...    ${dropdown_number_of_seats_motorcycle.number_of_seats}
    ...    number_of_seats_motorcycle=3
    Click Element    ${format_number_of_seats_motorcycle}
    Wait and Click Element    ${enter_vehicle_data.number_of_seats}
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    5

    Wait and Click Element    ${enter_vehicle_data.fuel_type}
    Wait and Click Element    ${dropdown_fuel_type.diesel}
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    4

    Wait and Input Text    ${enter_vehicle_data.payload}    110
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    3

    Wait and Input Text    ${enter_vehicle_data.total_weight}    1100
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    2

    Wait and Input Text    ${enter_vehicle_data.list_price}    501
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter}    1

    Wait and Input Text    ${enter_vehicle_data.license_plate_number}    123456

    Wait and Input Text    ${enter_vehicle_data.annual_mileage}    101
    Element Should Contain    ${counter_fields_enter_vehicle_data.entervehicledata_counter_zero}    0

    Click Button    ${next_buttons.button_next_enter_vehicle_data}

preencho o formulario "Enter Insurant Data"
    [Documentação]    Keyword responsável por preencher o formulário "Enter Insurant Data".
    ...    E verifica se o contador correspondente é decrementado corretamente.
    Element Should Contain    ${counter_fields_enter_vehicle_data.enterinsurantdata_counter}    7

    Wait and Input Text    ${enter_insurant_data.first_name}    Teste
    Element Should Contain    ${counter_fields_enter_vehicle_data.enterinsurantdata_counter}    6

    Wait and Input Text    ${enter_insurant_data.last_name}    teste
    Element Should Contain    ${counter_fields_enter_vehicle_data.enterinsurantdata_counter}    5

    Wait and Input Text    ${enter_insurant_data.birthdate}    05/22/1992
    Element Should Contain    ${counter_fields_enter_vehicle_data.enterinsurantdata_counter}    4

    Click Element    ${enter_insurant_data.gender_male}

    Wait and Input Text    ${enter_insurant_data.street_address}    Teste

    Wait and Click Element    ${enter_insurant_data.country}
    Click ELement    ${dropdown_country.brazil}
    Element Should Contain    ${counter_fields_enter_vehicle_data.enterinsurantdata_counter}    3

    Wait and Input Text    ${enter_insurant_data.zipcode}    12345
    Element Should Contain    ${counter_fields_enter_vehicle_data.enterinsurantdata_counter}    2

    Wait and Input Text    ${enter_insurant_data.city}    city of tests

    Wait and Click Element    ${enter_insurant_data.occupation}
    Click Element    ${dropdown_occupation_country.unemployed}
    Element Should Contain    ${counter_fields_enter_vehicle_data.enterinsurantdata_counter}    1

    Wait and Click Element    ${enter_insurant_data.speeding}
    Element Should Contain    ${counter_fields_enter_vehicle_data.enterinsurantdata_counter_zero}    0

    Wait and Input Text    ${enter_insurant_data.website}    www.teste.com.br

    Execute JavaScript    document.getElementById('picture').value = 'img_test.jpg';

    Click Button    ${next_buttons.button_next_enter_insurant_data}

preencho o formulario "Enter Product Data"
    [Documentação]    Keyword responsável por preencher o formulário "Enter Product Data".
    ${start_date}    Get Current Date    result_format=%m/%d/%Y    increment=60 days
    Wait and Input Text    ${enter_product_data.startdate}    ${start_date}

    Wait and Click Element    ${enter_product_data.insurance_sum}
    Click Element    ${dropdown_insurance_sum.insurance_sum_opt_3}

    Wait and Click Element    ${enter_product_data.merit_rating}
    Click Element    ${dropdown_merit_rating.bonus_6}

    Wait and Click Element    ${enter_product_data.damage_insurance}
    Click Element    ${dropdown_damage_insurance.partial_coverage}

    Click Element    ${enter_product_data.euro_protection}

    Wait and Click Element    ${enter_product_data.courtesy_car}
    Click Element    ${dropdown_courtesy_car.courtesy_car_yes}

    Click Button    ${next_buttons.button_next_select_price_option}

preencho o formulario "Select Price Option"
    [Documentação]    Keyword responsável por selecionar a opção "Silver" e aguarda até que o texto "Next - Send Quote" seja visível.
    Wait and Click Element    ${select_price_option.silver}

    Wait Until Element Is Visible    ${next_buttons.button_next_send_quote}

    Wait and Click Element    ${next_buttons.button_next_send_quote}

preencho o formulario "Send Quote"
    [Documentação]    Keyword responsável por preencher formulário "Send Quote" com dados específicos para testes.
    ...    Fornecendo um e-mail, número de telefone, nome de usuário, senha, confirmação de senha e comentários.
    Wait and Input Text    ${send_quote.email}    teste@teste.com

    Wait and Input Text    ${send_quote.phone}    11999999999

    Wait and Input Text    ${send_quote.username}    Teste

    ${random_generate_password}    Generate Random String    length=8    chars=[LETTTERS][NUMBERS][UPPER][LOWER]
    Wait and Input Text    ${send_quote.password}    ${random_generate_password}

    Wait and Input Text    ${send_quote.confirm_password}    ${random_generate_password}

    Wait and Input Text    ${send_quote.comments}    Test comments

envio o formulario
    [Documentação]    Keyword responsável por clicar no botão send email.
    Click Button    ${next_buttons.button_next_send_email}

deve apresentar a mensagem de sucesso "Sending E-mail sucess"
    [Documentação]    Verifica se a mensagem "Sending e-mail success!" é exibida corretamente após preencher o formulário "Send Quote".
    ...    Aguarda até que a janela pop-up de confirmação seja visível e então clica no botão de confirmação.
    Wait Until Element Is Visible    ${send_quote.pop_up_email_confirm}
    Wait and Click Element    ${send_quote.confirm}
