*** Settings ***
Library           SeleniumLibrary
Resource          common_utils.robot
Resource          variables.robot
resource          common_keyward.robot

*** Test Cases ***

Amazon Search Product validation
    Open Browser To Login Page
    Input Text Dynamically    ${search_box_xpath}    searchbox      GymBag
    # Search for a product
   
    Click Element Dynamically    ${search_button_xpath}    Go

    Capture Page Screenshot With Time
    run keyword if    ${True}    element should be visible    //span[contains(text(),'Gym Bag')]
    sleep    2s
    # close browser
    