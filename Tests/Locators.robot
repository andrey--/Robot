*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
*** Test Cases ***
Should be able to search for product
    [Tags]    Smoke
    Open Browser  http://www.amazon.com  gc
    Sleep  3s
    Input Text   id=twotabsearchtextbox  Ferrari 458
    Sleep  3s
    Click Button  css=#nav-search > form > div.nav-right > div > input
*** Keywords ***