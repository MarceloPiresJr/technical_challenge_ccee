*** Settings ***
Resource    ${ROOT}/resource/main.robot


*** Variables ***
&{enter_insurant_data}
...                                         first_name=//*[@id="firstname"]
...                                         last_name=//*[@id="lastname"]
...                                         birthdate=//*[@id="birthdate"]
...                                         gender_male=//input[@id='gendermale']/following-sibling::span
...                                         gender_female//input[@id='genderfemale']/following-sibling::span
...                                         street_address=//input[@id='streetaddress']
...                                         country=//*[@id='country']
...                                         zipcode=//input[@id='zipcode']
...                                         city=//input[@id='city']
...                                         occupation=//*[@id='occupation']
...                                         speeding=//input[@id='speeding']/following-sibling::span
...                                         bungee_jumping=//input[@id='bungeejumping']/following-sibling::span
...                                         cliffdiving=//input[@id='cliffdiving']/following-sibling::span
...                                         skydiving=//input[@id='skydiving']/following-sibling::span
...                                         website=//input[@id='website']
...                                         open=//button[@id='open']
...                                         picture=//button[@id='picture']

&{dropdown_occupation_country}
...                                         employee=//*[@value='Employee']
...                                         public_official//*[@value='Public Official']
...                                         farmer=//*[@value='Farmer']
...                                         unemployed=//*[@value='Unemployed']
...                                         selfemployed=//*[@value='Selfemployed']

&{counter_fields_enter_insurant_data}
...                                         counter=//*[@id="enterinsurantdata"]/span[@class='counter']
...                                         counter_zero=//*[@id="enterinsurantdata"]/span[@class='counter zero']

&{dropdown_country}
...                                         afghanistan=//*[@value='Afghanistan']
...                                         albania=//*[@value='Albania']
...                                         algeria=//*[@value='Algeria']
...                                         american_samoa=//*[@value='American Samoa']
...                                         andorra=//*[@value='Andorra']
...                                         angola=//*[@value='Angola']
...                                         anguilla=//*[@value='Anguilla']
...                                         antarctica=//*[@value='Antarctica']
...                                         antigua_and_barbuda=//*[@value='Antigua and Barbuda']
...                                         argentina=//*[@value='Argentina']
...                                         armenia=//*[@value='Armenia']
...                                         aruba=//*[@value='Aruba']
...                                         australia=//*[@value='Australia']
...                                         austria=//*[@value='Austria']
...                                         azerbaijan=//*[@value='Azerbaijan']
...                                         bahamas=//*[@value='Bahamas']
...                                         bahrain=//*[@value='Bahrain']
...                                         bangladesh=//*[@value='Bangladesh']
...                                         barbados=//*[@value='Barbados']
...                                         belarus=//*[@value='Belarus']
...                                         belgium=//*[@value='Belgium']
...                                         belize=//*[@value='Belize']
...                                         benin=//*[@value='Benin']
...                                         bermuda=//*[@value='Bermuda']
...                                         bhutan=//*[@value='Bhutan']
...                                         bolivia_plurinational_state_of=//*[@value='Bolivia - Plurinational State of']
...                                         bonaire_sint_eustatius_and_saba=//*[@value='Bonaire - Sint Eustatius and Saba']
...                                         bosnia_and_herzegovina=//*[@value='Bosnia and Herzegovina']
...                                         botswana=//*[@value='Botswana']
...                                         bouvet_island=//*[@value='Bouvet Island']
...                                         brazil=//*[@value='Brazil']
...                                         british_indian_ocean_territory=//*[@value='British Indian Ocean Territory']
...                                         brunei_darussalam=//*[@value='Brunei Darussalam']
...                                         bulgaria=//*[@value='Bulgaria']
...                                         burkina_faso=//*[@value='Burkina Faso']
...                                         burundi=//*[@value='Burundi']
...                                         cabo_verde=//*[@value='Cabo Verde']
...                                         cambodia=//*[@value='Cambodia']
...                                         cameroon=//*[@value='Cameroon']
...                                         canada=//*[@value='Canada']
...                                         cayman_islands=//*[@value='Cayman Islands']
...                                         central_african_republic=//*[@value='Central African Republic']
...                                         chad=//*[@value='Chad']
...                                         chile=//*[@value='Chile']
...                                         china=//*[@value='China']
...                                         christmas_island=//*[@value='Christmas Island']
...                                         cocos_keeling_islands=//*[@value='Cocos (Keeling) Islands']
...                                         colombia=//*[@value='Colombia']
...                                         comoros=//*[@value='Comoros']
...                                         congo=//*[@value='Congo']
...                                         congo_the_democratic_republic_of_the=//*[@value='Congo - the Democratic Republic of the']
...                                         cook_islands=//*[@value='Cook Islands']
...                                         costa_rica=//*[@value='Costa Rica']
...                                         croatia=//*[@value='Croatia']
...                                         cuba=//*[@value='Cuba']
...                                         curacao=//*[@value='Curaçao']
...                                         cyprus=//*[@value='Cyprus']
...                                         czech_republic=//*[@value='Czech Republic']
...                                         cote_divoire=//*[@value='Côte d'Ivoire']
...                                         denmark=//*[@value='Denmark']
...                                         djibouti=//*[@value='Djibouti']
...                                         dominica=//*[@value='Dominica']
...                                         dominican_republic=//*[@value='Dominican Republic']
...                                         ecuador=//*[@value='Ecuador']
...                                         egypt=//*[@value='Egypt']
...                                         el_salvador=//*[@value='El Salvador']
...                                         equatorial_guinea=//*[@value='Equatorial Guinea']
...                                         eritrea=//*[@value='Eritrea']
...                                         estonia=//*[@value='Estonia']
...                                         ethiopia=//*[@value='Ethiopia']
...                                         falkland_islands_malvinas=//*[@value='Falkland Islands (Malvinas)']
...                                         faroe_islands=//*[@value='Faroe Islands']
...                                         fiji=//*[@value='Fiji']
...                                         finland=//*[@value='Finland']
...                                         france=//*[@value='France']
...                                         french_guiana=//*[@value='French Guiana']
...                                         french_polynesia=//*[@value='French Polynesia']
...                                         french_southern_territories=//*[@value='French Southern Territories']
...                                         gabon=//*[@value='Gabon']
...                                         gambia=//*[@value='Gambia']
...                                         georgia=//*[@value='Georgia']
...                                         germany=//*[@value='Germany']
...                                         ghana=//*[@value='Ghana']
...                                         gibraltar=//*[@value='Gibraltar']
...                                         greece=//*[@value='Greece']
...                                         greenland=//*[@value='Greenland']
...                                         grenada=//*[@value='Grenada']
...                                         guadeloupe=//*[@value='Guadeloupe']
...                                         guam=//*[@value='Guam']
...                                         guatemala=//*[@value='Guatemala']
...                                         guernsey=//*[@value='Guernsey']
...                                         guinea=//*[@value='Guinea']
...                                         guinea_bissau=//*[@value='Guinea-Bissau']
...                                         guyana=//*[@value='Guyana']
...                                         haiti=//*[@value='Haiti']
...                                         heard_island_and_mcdonald_islands=//*[@value='Heard Island and McDonald Islands']
...                                         holy_see_vatican_city_state=//*[@value='Holy See (Vatican City State)']
...                                         honduras=//*[@value='Honduras']
...                                         hong_kong=//*[@value='Hong Kong']
...                                         hungary=//*[@value='Hungary']
...                                         iceland=//*[@value='Iceland']
...                                         india=//*[@value='India']
...                                         indonesia=//*[@value='Indonesia']
...                                         iran_islamic_republic_of=//*[@value='Iran - Islamic Republic of']
...                                         iraq=//*[@value='Iraq']
...                                         ireland=//*[@value='Ireland']
...                                         isle_of_man=//*[@value='Isle of Man']
...                                         israel=//*[@value='Israel']
...                                         italy=//*[@value='Italy']
...                                         jamaica=//*[@value='Jamaica']
...                                         japan=//*[@value='Japan']
...                                         jersey=//*[@value='Jersey']
...                                         jordan=//*[@value='Jordan']
...                                         kazakhstan=//*[@value='Kazakhstan']
...                                         kenya=//*[@value='Kenya']
...                                         kiribati=//*[@value='Kiribati']
...                                         korea_democratic_peoples_republic_of=//*[@value='Korea - Democratic People's Republic of']
...                                         korea_republic_of=//*[@value='Korea - Republic of']
...                                         kuwait=//*[@value='Kuwait']
...                                         kyrgyzstan=//*[@value='Kyrgyzstan']
...                                         lao_peoples_democratic_republic=//*[@value='Lao People's Democratic Republic']
...                                         latvia=//*[@value='Latvia']
...                                         lebanon=//*[@value='Lebanon']
...                                         lesotho=//*[@value='Lesotho']
...                                         liberia=//*[@value='Liberia']
...                                         libya=//*[@value='Libya']
...                                         liechtenstein=//*[@value='Liechtenstein']
...                                         lithuania=//*[@value='Lithuania']
...                                         luxembourg=//*[@value='Luxembourg']
...                                         macao=//*[@value='Macao']
...                                         macedonia_the_former_yugoslav_republic_of=//*[@value='Macedonia - the former Yugoslav Republic of']
...                                         madagascar=//*[@value='Madagascar']
...                                         malawi=//*[@value='Malawi']
...                                         malaysia=//*[@value='Malaysia']
...                                         maldives=//*[@value='Maldives']
...                                         mali=//*[@value='Mali']
...                                         malta=//*[@value='Malta']
...                                         marshall_islands=//*[@value='Marshall Islands']
...                                         martinique=//*[@value='Martinique']
...                                         mauritania=//*[@value='Mauritania']
...                                         mauritius=//*[@value='Mauritius']
...                                         mayotte=//*[@value='Mayotte']
...                                         mexico=//*[@value='Mexico']
...                                         micronesia_federated_states_of=//*[@value='Micronesia - Federated States of']
...                                         moldova_republic_of=//*[@value='Moldova - Republic of']
...                                         monaco=//*[@value='Monaco']
...                                         mongolia=//*[@value='Mongolia']
...                                         montenegro=//*[@value='Montenegro']
...                                         montserrat=//*[@value='Montserrat']
...                                         morocco=//*[@value='Morocco']
...                                         mozambique=//*[@value='Mozambique']
...                                         myanmar=//*[@value='Myanmar']
...                                         namibia=//*[@value='Namibia']
...                                         nauru=//*[@value='Nauru']
...                                         nepal=//*[@value='Nepal']
...                                         netherlands=//*[@value='Netherlands']
...                                         new_caledonia=//*[@value='New Caledonia']
...                                         new_zealand=//*[@value='New Zealand']
...                                         nicaragua=//*[@value='Nicaragua']
...                                         niger=//*[@value='Niger']
...                                         nigeria=//*[@value='Nigeria']
...                                         niue=//*[@value='Niue']
...                                         norfolk_island=//*[@value='Norfolk Island']
...                                         northern_mariana_islands=//*[@value='Northern Mariana Islands']
...                                         norway=//*[@value='Norway']
...                                         oman=//*[@value='Oman']
...                                         pakistan=//*[@value='Pakistan']
...                                         palau=//*[@value='Palau']
...                                         palestine_state_of=//*[@value='Palestine - State of']
...                                         panama=//*[@value='Panama']
...                                         papua_new_guinea=//*[@value='Papua New Guinea']
...                                         paraguay=//*[@value='Paraguay']
...                                         peru=//*[@value='Peru']
...                                         philippines=//*[@value='Philippines']
...                                         pitcairn=//*[@value='Pitcairn']
...                                         poland=//*[@value='Poland']
...                                         portugal=//*[@value='Portugal']
...                                         puerto_rico=//*[@value='Puerto Rico']
...                                         qatar=//*[@value='Qatar']
...                                         romania=//*[@value='Romania']
...                                         russian_federation=//*[@value='Russian Federation']
...                                         rwanda=//*[@value='Rwanda']
...                                         reunion=//*[@value='Réunion']
...                                         saint_barthelemy=//*[@value='Saint Barthélemy']
...                                         saint_helena_ascension_and_tristan_da_cunha=//*[@value='Saint Helena - Ascension and Tristan da Cunha']
...                                         saint_kitts_and_nevis=//*[@value='Saint Kitts and Nevis']
...                                         saint_lucia=//*[@value='Saint Lucia']
...                                         saint_martin_french_part=//*[@value='Saint Martin (French part)']
...                                         saint_pierre_and_miquelon=//*[@value='Saint Pierre and Miquelon']
...                                         saint_vincent_and_the_grenadines=//*[@value='Saint Vincent and the Grenadines']
...                                         samoa=//*[@value='Samoa']
...                                         san_marino=//*[@value='San Marino']
...                                         sao_tome_and_principe=//*[@value='Sao Tome and Principe']
...                                         saudi_arabia=//*[@value='Saudi Arabia']
...                                         senegal=//*[@value='Senegal']
...                                         serbia=//*[@value='Serbia']
...                                         seychelles=//*[@value='Seychelles']
...                                         sierra_leone=//*[@value='Sierra Leone']
...                                         singapore=//*[@value='Singapore']
...                                         sint_maarten_dutch_part=//*[@value='Sint Maarten (Dutch part)']
...                                         slovakia=//*[@value='Slovakia']
...                                         slovenia=//*[@value='Slovenia']
...                                         solomon_islands=//*[@value='Solomon Islands']
...                                         somalia=//*[@value='Somalia']
...                                         south_africa=//*[@value='South Africa']
...                                         south_georgia_and_the_south_sandwich_islands=//*[@value='South Georgia and the South Sandwich Islands']
...                                         south_sudan=//*[@value='South Sudan']
...                                         spain=//*[@value='Spain']
...                                         sri_lanka=//*[@value='Sri Lanka']
...                                         sudan=//*[@value='Sudan']
...                                         suriname=//*[@value='Suriname']
...                                         svalbard_and_jan_mayen=//*[@value='Svalbard and Jan Mayen']
...                                         swaziland=//*[@value='Swaziland']
...                                         sweden=//*[@value='Sweden']
...                                         switzerland=//*[@value='Switzerland']
...                                         syrian_arab_republic=//*[@value='Syrian Arab Republic']
...                                         taiwan_province_of_china=//*[@value='Taiwan - Province of China']
...                                         tajikistan=//*[@value='Tajikistan']
...                                         tanzania_united_republic_of=//*[@value='Tanzania - United Republic of']
...                                         thailand=//*[@value='Thailand']
...                                         timor_leste=//*[@value='Timor-Leste']
...                                         togo=//*[@value='Togo']
...                                         tokelau=//*[@value='Tokelau']
...                                         tonga=//*[@value='Tonga']
...                                         trinidad_and_tobago=//*[@value='Trinidad and Tobago']
