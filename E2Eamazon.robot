*** Settings ***
Library           SeleniumLibrary
Resource          common_utils.robot
Resource          variables.robot
resource          common_keyward.robot

*** Test Cases ***

TC01_Amazon Search Product validation
    Open Browser To Login Page
    search For Product    Gym Bag

    Capture Page Screenshot With Time
    run keyword if    ${True}    element should be visible    //span[contains(text(),'Gym Bag')]
    sleep    2s
    # close browser
    
TC02_Amazon Search Product Add to cart validation
    Open Browser To Login Page
    search For Product    PlayStation 5
    wait until element is visible    //a[contains(text(),'PlayStation 5')]
    ${count}=    Get Element Count    //a[contains(text(),'PlayStation 5')]
    log to console    Total search results for PlayStation 5: ${count}
    capture page screenshot with time    PlayStation5_search_results


    
