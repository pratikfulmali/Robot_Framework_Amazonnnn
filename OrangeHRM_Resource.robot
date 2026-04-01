*** Settings ***

Library           SeleniumLibrary
Resource          common_utils.robot
Resource          variables.robot
Resource          common_keyward.robot


*** Keywords ***


Open Browser And Login to Orange HRM home page
    Open Browser    ${Orange_HRM_URL}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Input Text Dynamically    ${input_name}    username    Admin
    Input Text Dynamically    ${input_name}    password    admin123
    Capture Page Screenshot
    Click Element Dynamically    ${button_type}     submit
    wait until element is visible dynamically    ${h6_text}    Dashboard
    Capture Page Screenshot With Time    OrangeHRM_Login_Success

