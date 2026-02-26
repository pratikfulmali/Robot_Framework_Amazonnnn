*** Settings ***
Library    SeleniumLibrary
Library    String              # <– needed for Replace String

*** Keywords ***

Click Element Dynamically
    [Arguments]    ${xpath}    ${value}
    ${dynamic_xpath}=    Replace String    ${xpath}    <<<>>>    ${value}
    Click Element    ${dynamic_xpath}

Input Text Dynamically
    [Arguments]    ${xpath}    ${value}    ${text}
    ${dynamic_xpath}=    Replace String    ${xpath}    <<<>>>    ${value}
    Input Text    ${dynamic_xpath}    ${text}

Highlight Element
    [Arguments]    ${xpath}
    Execute JavaScript    document.evaluate(${xpath}, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.style.border='2px solid yellow'