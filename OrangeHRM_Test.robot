*** Settings ***

Resource          OrangeHRM_Resource.robot

*** Test Cases ***


TC01_OrangeHRM Login Validation
    Open Browser And Login to Orange HRM home page
    Close Browser

TC02_OrangeHRM Admin Search Record
    Open Browser And Login to Orange HRM home page
    Admin Search Record   
