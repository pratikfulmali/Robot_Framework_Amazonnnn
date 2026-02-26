*** Settings ***
Library           Collections

*** Test Cases ***
# Basic operations with collections

Create and Append to List
    # Create a new list
    ${my_list}=    Create List    Apple    Banana
    Log    Initial List: ${my_list}

    # Append an item to the list
    Append To List    ${my_list}    Cherry
    Log    List after Append: ${my_list}

Expand List
    # Extend the list with multiple items
    Extend List    ${my_list}    Mango    Orange
    Log    List after Extend: ${my_list}

Access List Elements
    # Access elements by index
    ${first_item}=    Get From List    ${my_list}    0
    Log    First Item: ${first_item}

    ${last_item}=    Get From List    ${my_list}    -1
    Log    Last Item: ${last_item}

Remove from List
    # Remove an item from the list
    Remove From List    ${my_list}    Banana
    Log    List after Remove: ${my_list}

Sort List
    # Sort the list
    ${sorted_list}=    Copy List    ${my_list}
    Sort List    ${sorted_list}
    Log    Sorted List: ${sorted_list}

Dictionary Operations
    # Create a dictionary
    ${my_dict}=    Create Dictionary    Name=John    Age=30    City=New York
    Log    Dictionary: ${my_dict}

    # Access a value by key
    ${name}=    Get From Dictionary    ${my_dict}    Name
    Log    Name: ${name}

    # Add a new key-value pair
    Set To Dictionary    ${my_dict}    Country    USA
    Log    Updated Dictionary: ${my_dict}

    # Remove a key-value pair
    Remove From Dictionary    ${my_dict}    Age
    Log    Dictionary after Remove: ${my_dict}

Set Operations
    # Create a set
    ${my_set}=    Create Set    Apple    Banana    Cherry
    Log    Initial Set: ${my_set}

    # Add an item to the set
    Add To Set    ${my_set}    Mango
    Log    Set after Add: ${my_set}

    # Remove an item from the set
    Remove From Set    ${my_set}    Banana
    Log    Set after Remove: ${my_set}