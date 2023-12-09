*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Library     String
Library     XML
Library     FakerLibrary
Library     ${ROOT}/resource/python/root.py
# PAGE OBJECT
Resource    ${ROOT}/resource/pages/elements/kws_shared_elements.robot
Resource    ${ROOT}/resource/pages/elements/enter_vehicle_data.robot
Resource    ${ROOT}/resource/pages/elements/enter_insurant_data.robot
Resource    ${ROOT}/resource/pages/elements/enter_product_data.robot
Resource    ${ROOT}/resource/pages/elements/select_price_option.robot
Resource    ${ROOT}/resource/pages/elements/send_quote.robot
# PAGE OBJECT - KEYWORDS
Resource    ${ROOT}/resource/pages/keywords/enter_vehicle_data.robot
Resource    ${ROOT}/resource/pages/keywords/enter_vehicle_data.robot
# KEYWORDS COMPARTILHADAS
Resource    ${ROOT}/resource/pages/keywords/shared/kws_shared.robot
Resource    ${ROOT}/resource/pages/keywords/shared/setups_and_teardowns.robot
