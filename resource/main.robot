*** Settings ***
Library          SeleniumLibrary
Library          DateTime
Library          OperatingSystem
Library         ${ROOT}/resource/python/root.py
# PAGE OBJECT
Resource        ${ROOT}/resource/pages/elements/enter_vehicle_data.robot
Resource        ${ROOT}/resource/pages/elements/enter_insurant_data.robot
# PAGE OBJECT - KEYWORDS
Resource        ${ROOT}/resource/pages/keywords/enter_vehicle_data.robot
# KEYWORDS COMPARTILHADAS
Resource        ${ROOT}/resource/pages/keywords/shared/kws_shared.robot
Resource        ${ROOT}/resource/pages/keywords/shared/setups_and_teardowns.robot