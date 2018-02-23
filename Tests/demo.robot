*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test case 1
    [Tags]    DEBUG
    Do Something
    Do Something Else
Test case 2
    [Tags]    DEBUG
    Do Another Thing
    Do Something Else
*** Keywords ***
Do Something
    Log  I am doing something
Do Something Else
    Log  I am doing something else
Do Another Thing
    Log  I am doing another thing