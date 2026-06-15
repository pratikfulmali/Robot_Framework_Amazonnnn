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

Admin Search Record
    wait until element is visible dynamically    ${span_text}    Admin
    Click Element Dynamically    ${span_text}    Admin
    wait until element is visible dynamically    ${h5_text}    System Users
    Capture Page Screenshot With Time    OrangeHRM_Admin_Page
    ${FirstEmpName}    Get Text    (//div[@class='oxd-table-card']/div/div)[2]/div
    Input Text    //label[text()='Username']/following::input[@class='oxd-input oxd-input--active']   ${FirstEmpName}
    Click Element Dynamically    ${button_type}    submit
    Capture Page Screenshot
    ${RecordCount}    Get Text    //div[@class='orangehrm-container']/parent::div/div/div/span
    Log To Console    Total Records Found: ${RecordCount}
    Should Not Be Equal As Strings    No Records Found    ${RecordCount}
    Sleep    2s
    Capture Page Screenshot
    Close Browser


