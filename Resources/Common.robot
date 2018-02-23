*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Keywords ***
End Web Test
    Close Browser
Begin Web Test
    Open Browser  about:blank  gc