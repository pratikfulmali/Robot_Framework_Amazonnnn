*** Settings ***
Library           SeleniumLibrary
Resource          common_utils.robot
Resource          variables.robot

*** Test Cases ***

End to End Amazon Purchase Flow
    # Open the Amazon website
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Input Text Dynamically    ${search_box_xpath}    searchbox      GymBag
    # Search for a product
   
    Click Element Dynamically    ${search_button_xpath}    Go
    capture Page Screenshot    search_results.png

    sleep    20s