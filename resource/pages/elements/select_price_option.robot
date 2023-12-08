*** Settings ***
Resource    ${ROOT}/resource/main.robot


*** Variables ***
&{select_price_option}
...                         price_per_year=//*[text()='Price per Year ($)']
...                         silver=//input[@id='selectsilver']/following-sibling::span
...                         gold=//input[@id='selectgold']/following-sibling::span
...                         platinum=//input[@id='selectplatinum']/following-sibling::span
...                         ultimate=//input[@id='selectultimate']/following-sibling::span
