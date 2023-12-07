*** Settings ***
Resource    ${ROOT}/resource/main.robot

*** Variables ***

&{enter_vehicle_data}
...    make=//*[@id="make"]
...    model=//*[@id="model"]
...    cylinder_capacity=//*[@id='cylindercapacity']
...    engine_performance=//*[@id='engineperformance']
...    date_of_manufacture=//*[@id='dateofmanufacture']
...    number_of_seats=//*[@id='numberofseats']
...    right_hand_drive_yes=//input[@id='righthanddriveyes']/following-sibling::span
...    right_hand_drive_no=//input[@id='righthanddriveno']/following-sibling::span
...    number_of_seats_motorcycle=//*[@id='numberofseatsmotorcycle']
...    fuel_type=//*[@name='Fuel Type']
...    payload=/*[@id="payload"]
...    total_weight=//*[@id="totalweight"]
...    list_price=//*[@id="listprice"]
...    license_plate_number=//*[@id="licenseplatenumber"]
...    annual_mileage=//*[@id="annualmileage"]
...    next_enter_insurant_data=//*[@id="nextenterinsurantdata"]
...    cylinder_capacity=//*[@id="cylindercapacity"]
...    payload=//*[@id="payload"]
...    total_weight=//*[@id="totalweight"]


### shared elements
&{shared_elements_vehicle_data}
...    default=//option[@value='default']

### dropdowns
&{dropdown_make}
...    default=//option[@value='default']
...    audi=//option[@value='Audi']
...    bmw=//option[@value='BMW']
...    ford=//option[@value='Ford']
...    honda=//option[@value='Honda']
...    mazda=//option[@value='Mazda']
...    mercedes_benz=//option[@value='Mercedes Benz']
...    nissan=//option[@value='Nissan']
...    opel=//option[@value='Opel']
...    porsche=//option[@value='Porsche']
...    renault=//option[@value='Renault']
...    skoda=//option[@value='Skoda']
...    toyota=//option[@value='Toyota']
...    volkswagen=//option[@value='Volkswagen']
...    volvo=//option[@value='Volvo']

&{dropdown_model}
...    scooter=//option[@value='Scooter']
...    three_wheeler=//option[@value='Three-Wheeler']
...    moped=//option[@value='Moped']
...    motorcycle=//option[@value='Motorcycle']

&{dropdown_number_of_seats}
...    number_of_seats=//select[@id='numberofseats']/option[@value='{number_of_seats}']

&{dropdown_number_of_seats_motorcycle}
...    number_of_seats=//select[@id='numberofseatsmotorcycle']/option[@value='{number_of_seats_motorcycle}']

&{dropdown_fuel_type}
...    petrol=//option[@value='Petrol']
...    diesel=//option[@value='Diesel']
...    electric_power=//option[@value='Electric Power']
...    gas=//option[@value='Gas']
...    other=//option[@value='Other']