*** Settings ***
Library    SeleniumLibrary
Library    String              # <– needed for Replace String
Library    DateTime            # <– needed for timestamps
Library    Collections         # <– needed for dictionary operations
Library    OperatingSystem     # <– needed for file operations
Library    BuiltIn

*** Keywords ***
wait until element is visible dynamically
    [Arguments]    ${xpath}    ${value}
    ${dynamic_xpath}=    Replace String    ${xpath}    <<<>>>    ${value}
    Wait Until Element Is Visible    ${dynamic_xpath}
    
Click Element Dynamically
    [Arguments]    ${xpath}    ${value}
    ${dynamic_xpath}=    Replace String    ${xpath}    <<<>>>    ${value}
    Click Element    ${dynamic_xpath}

Input Text Dynamically
    [Arguments]    ${xpath}    ${value}    ${text}
    ${dynamic_xpath}=    Replace String    ${xpath}    <<<>>>    ${value}
    Input Text    ${dynamic_xpath}    ${text}

Capture Page Screenshot With Time
    [Arguments]    ${screenshot_name}=screenshot
    ${screenshot_dir}=    Set Variable    screennsshot
    Create Directory    ${screenshot_dir}
    # Delete all previous screenshots in the screenshots directory
    ${files}=    List Files In Directory    ${screenshot_dir}
    FOR    ${file}    IN    @{files}
        ${is_png}=    Evaluate    '${file}'.endswith('.png')
        Run Keyword If    ${is_png}    Remove File    ${screenshot_dir}/${file}
    END
    # Capture new screenshot with timestamp into the screenshots directory
    ${timestamp}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S
    ${filename}=    Get Current Date    result_format=${screenshot_name}_%Y%m%d_%H%M%S.png
    Capture Page Screenshot    ${screenshot_dir}/${filename}


