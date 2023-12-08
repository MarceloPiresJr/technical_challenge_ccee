*** Settings ***
Resource    ${ROOT}/resource/main.robot


*** Variables ***
&{next_buttons}
...                                     button_next_enter_vehicle_data=//button[@id="nextenterinsurantdata"]
...                                     button_next_enter_insurant_data=//*[@id="nextenterproductdata"]
...                                     button_next_select_price_option=//*[@id="nextselectpriceoption"]
...                                     button_next_send_quote=//*[@id="nextsendquote"]
...                                     button_next_send_email=//*[@id='sendemail']

&{counter_fields_enter_vehicle_data}
...                                     entervehicledata_counter=//*[@id="entervehicledata"]/span[@class='counter']
...                                     entervehicledata_counter_zero=//*[@id="entervehicledata"]/span[@class='counter zero']
...                                     enterinsurantdata_counter=//*[@id="enterinsurantdata"]/span[@class='counter']
...                                     enterinsurantdata_counter_zero=//*[@id="enterinsurantdata"]/span[@class='counter zero']
