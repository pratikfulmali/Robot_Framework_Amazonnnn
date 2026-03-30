*** Settings ***
Library           SeleniumLibrary
Resource          common_utils.robot
Resource          variables.robot


*** Keywords ***

Open Browser To Login Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    # run keyward if   ${True}    Click Element Dynamically    ${button_contain_text}    Continue shopping
    
Search For Product
    [Arguments]    ${product_name}
    Input Text Dynamically    ${search_box_xpath}    searchbox      ${product_name}
    Click Element Dynamically    ${search_button_xpath}    Go    

Add Product To Cart
    wait until element is visible dynamically    ${a_contains_text}    Go to Cart
    Click Element Dynamically    ${a_contains_text}    Go to Cart

Scroll To Element Dynamically
    [Arguments]    ${locator}    ${text}
    ${dynamic_locator}=    Replace String    ${locator}    <<<>>>    ${text}
    Scroll Element Into View    ${dynamic_locator}

Get WebElement Dynamically
    [Arguments]    ${locator}    ${text}
    ${dynamic_locator}=    Replace String    ${locator}    <<<>>>    ${text}
    ${element}=    Get WebElement    ${dynamic_locator}
    RETURN    ${element}