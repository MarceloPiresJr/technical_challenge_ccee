*** Settings ***
Resource    ${ROOT}/resource/main.robot


*** Variables ***
&{send_quote}
...                 email=//*[@id='email']
...                 phone=//*[@id='phone']
...                 username=//*[@id='username']
...                 password=//*[@id='password']
...                 confirm_password=//*[@id='confirmpassword']
...                 comments=//*[@id='Comments']
...                 pop_up_email_confirm=//*[text()='Sending e-mail success!']
...                 confirm=//*[@class='confirm']
