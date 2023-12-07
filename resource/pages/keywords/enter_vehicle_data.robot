Language: pt-br

*** Settings ***
Documentation  
Resource            ${ROOT}/resource/main.robot
Library    String

*** Keywords ***

que preencho o formulario
    [Documentação]
    Wait Until Element Is Visible    ${enter_vehicle_data.make}
    Element Should Contain    xpath=//span[@class="counter"]    12
    Wait and Click Element    ${enter_vehicle_data.make}
    Wait and Click Element    ${dropdown_make.audi}

    Wait and Click Element    ${enter_vehicle_data.model}
    Wait and Click Element    ${dropdown_model.motorcycle}

    Wait and Input Text    ${enter_vehicle_data.cylinder_capacity}    2

    Wait and Input Text    ${enter_vehicle_data.engine_performance}    2

    ${date_of_manufacture}    Get Current Date    result_format=%m/%d/%Y
    Wait and Input Text    ${enter_vehicle_data.date_of_manufacture}  ${date_of_manufacture}

    Wait and Click Element    ${enter_vehicle_data.number_of_seats}
    ${format_dropdown_number_of_seats}    Format String    ${dropdown_number_of_seats.number_of_seats}    number_of_seats=4
    Click Element    ${format_dropdown_number_of_seats}
    Wait and Click Element    ${enter_vehicle_data.number_of_seats}
 

    Wait Until Element Is Visible    ${enter_vehicle_data.right_hand_drive_yes}
    Click Element   ${enter_vehicle_data.right_hand_drive_yes}

    Wait and Click Element    ${enter_vehicle_data.number_of_seats_motorcycle}
    ${format_number_of_seats_motorcycle}    Format String    ${dropdown_number_of_seats_motorcycle.number_of_seats}    number_of_seats_motorcycle=3
    Click Element    ${format_number_of_seats_motorcycle}
    Wait and Click Element    ${enter_vehicle_data.number_of_seats}

    Wait and Click Element    ${enter_vehicle_data.fuel_type}
    Wait and Click Element    ${dropdown_fuel_type.diesel}

    Wait and Input Text    ${enter_vehicle_data.payload}    110

    Wait and Input Text    ${enter_vehicle_data.total_weight}    1100

    Wait and Input Text    ${enter_vehicle_data.list_price}    501

    Wait and Input Text    ${enter_vehicle_data.license_plate_number}    123456

    Wait and Input Text    ${enter_vehicle_data.annual_mileage}    101
clico em next
    [Documentação]
    Wait and Click Element    ${enter_vehicle_data.next_enter_insurant_data}
deve apresentar a tela de "Enter Insurant Data"
    [Documentação]
    Wait Until Page Contains Element    ${enter_insurant_data.first_name}