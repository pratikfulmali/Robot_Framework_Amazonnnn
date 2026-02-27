*** Settings ***
Library           SeleniumLibrary
Resource          common_utils.robot
Resource          variables.robot


*** Keywords ***

Open Browser To Login Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s