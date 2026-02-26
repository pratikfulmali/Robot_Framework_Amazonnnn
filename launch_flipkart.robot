*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Launch Flipkart
    Open Browser    https://www.flipkart.com    chrome
    Wait Until Page Contains Element    //div[contains(text(), 'Login')]
    Log    Flipkart launched successfully!
    Click Button    ...    //button[contains(text(), '✕')]
    
    

    FOR    ${index}    IN RANGE    1    5
        Log    Iteration: ${index}
        IF    ${index} == 3
            Log    This is the third iteration
        ELSE
            Log    This is not the third iteration
        END
    END

    [Teardown]    Close Browser

*** Keywords ***
Reverse String
    [Arguments]    ${string}
    ${reversed}=    Evaluate    ''.join(reversed(${string}))
    [Return]    ${reversed}

Click Element Dynamically
    [Arguments]    ${xpath}    ${value}
    ${dynamic_xpath}=    Replace String    ${xpath}    <<<>>>    ${value}
    Click Element    ${dynamic_xpath}

*** Test Cases ***
Reverse a String
    ${string}=    Set Variable    Hello World
    ${reversed}=    Reverse String    ${string}
    Log    Reversed String: ${reversed}

Check Palindrome
    ${string}=    Set Variable    madam
    ${reversed}=    Evaluate    ${string}[::-1]
    Run Keyword If    '${string}' == '${reversed}'    Log    Palindrome
    ...    ELSE    Log    Not a Palindrome

Find Factorial
    ${number}=    Set Variable    5
    ${factorial}=    Evaluate    1 if ${number} == 0 else ${number} * __import__('math').factorial(${number} - 1)
    Log    Factorial: ${factorial}

Fibonacci Series
    ${n}=    Set Variable    10
    ${a}=    Set Variable    0
    ${b}=    Set Variable    1
    Log    Fibonacci Series:
    FOR    ${i}    IN RANGE    ${n}
        Log    ${a}
        ${temp}=    Set Variable    ${a}
        ${a}=    Set Variable    ${b}
        ${b}=    Evaluate    ${temp} + ${b}
    END

Check Prime Number
    ${number}=    Set Variable    7
    ${is_prime}=    Evaluate    all(${number} % i != 0 for i in range(2, int(${number}**0.5) + 1)) and ${number} > 1
    Run Keyword If    ${is_prime}    Log    Prime Number
    ...    ELSE    Log    Not a Prime Number

Find Largest Number
    ${numbers}=    Create List    10    20    30    40    50
    ${largest}=    Evaluate    max(${numbers})
    Log    Largest Number: ${largest}

Sort a List
    ${numbers}=    Create List    50    40    30    20    10
    ${sorted_list}=    Evaluate    sorted(${numbers})
    Log    Sorted List: ${sorted_list}

Check Armstrong Number
    ${number}=    Set Variable    153
    ${sum}=    Evaluate    sum(int(digit)**len(str(${number})) for digit in str(${number}))
    Run Keyword If    ${sum} == ${number}    Log    Armstrong Number
    ...    ELSE    Log    Not an Armstrong Number

Find GCD
    ${a}=    Set Variable    54
    ${b}=    Set Variable    24
    ${gcd}=    Evaluate    __import__('math').gcd(${a}, ${b})
    Log    GCD: ${gcd}

Find LCM
    ${a}=    Set Variable    54
    ${b}=    Set Variable    24
    ${lcm}=    Evaluate    (${a} * ${b}) // __import__('math').gcd(${a}, ${b})
    Log    LCM: ${lcm}