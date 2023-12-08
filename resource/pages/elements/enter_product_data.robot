*** Settings ***
Resource    ${ROOT}/resource/main.robot


*** Variables ***
&{enter_product_data}
...                             startdate=//*[@id="startdate"]
...                             insurance_sum=//*[@id="insurancesum"]
...                             merit_rating=//*[@id="meritrating"]
...                             damage_insurance=//*[@id="damageinsurance"]
...                             euro_protection=//input[@id='EuroProtection']/following-sibling::span
...                             legal_defense_insurance=//input[@id='LegalDefenseInsurance']/following-sibling::span
...                             courtesy_car=//*[@id='courtesycar']

&{dropdown_insurance_sum}
...                             insurance_sum_opt_1=//option[@value='3000000']
...                             insurance_sum_opt_2=//option[@value='5000000']
...                             insurance_sum_opt_3=//option[@value='7000000']
...                             insurance_sum_opt_4=//option[@value='10000000']
...                             insurance_sum_opt_5=//option[@value='15000000']
...                             insurance_sum_opt_6=//option[@value='20000000']
...                             insurance_sum_opt_7=//option[@value='25000000']
...                             insurance_sum_opt_8=//option[@value='30000000']
...                             insurance_sum_opt_9=//option[@value='35000000']

&{dropdown_merit_rating}
...                             super_bonus=//option[@value='Super Bonus']
...                             bonus_1=//option[@value='Bonus 1']
...                             bonus_2=//option[@value='Bonus 2']
...                             bonus_3=//option[@value='Bonus 3']
...                             bonus_4=//option[@value='Bonus 4']
...                             bonus_5=//option[@value='Bonus 5']
...                             bonus_6=//option[@value='Bonus 6']
...                             bonus_7=//option[@value='Bonus 7']
...                             bonus_8=//option[@value='Bonus 8']
...                             bonus_9=//option[@value='Bonus 9']
...                             Malus-10=//option[@value='Malus 10']
...                             Malus-11=//option[@value='Malus 11']
...                             Malus-12=//option[@value='Malus 12']
...                             Malus-13=//option[@value='Malus 13']
...                             Malus-14=//option[@value='Malus 14']
...                             Malus-15=//option[@value='Malus 15']
...                             Malus-16=//option[@value='Malus 16']
...                             Malus-17=//option[@value='Malus 17']

&{dropdown_damage_insurance}
...                             no_coverage=//option[@value='No Coverage']
...                             partial_coverage=//option[@value='Partial Coverage']
...                             full_coverage=//option[@value='Full Coverage']

&{dropdown_courtesy_car}
...                             courtesy_car_no=//option[@value='No']
...                             courtesy_car_yes=//option[@value='Yes']
