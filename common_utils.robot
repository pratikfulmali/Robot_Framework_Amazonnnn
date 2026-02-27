*** Settings ***
Library    SeleniumLibrary
Library    String              # <– needed for Replace String
Library    DateTime            # <– needed for timestamps
Library    Collections         # <– needed for dictionary operations
Library    OperatingSystem     # <– needed for file operations
Library    BuiltIn

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

Capture Page Screenshot With Time
    [Arguments]    ${screenshot_name}=screenshot
    # Delete all previous screenshots
    ${files}=    List Files In Directory    .
    FOR    ${file}    IN    @{files}
        ${is_png}=    Evaluate    '${file}'.endswith('.png')
        Run Keyword If    ${is_png}    Remove File    ${file}
    END
    # Capture new screenshot with timestamp
    ${timestamp}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S
    ${filename}=    Get Current Date    result_format=${screenshot_name}_%Y%m%d_%H%M%S.png
    Capture Page Screenshot    ${filename}


