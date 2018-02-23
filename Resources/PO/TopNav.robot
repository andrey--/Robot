*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Keywords ***
Search For Products
    Enter Search Term
    Submit Search
Enter Search Term
    Input Text  id=twotabsearchtextbox  1/10 XB Series No.155 XB Ferrari 458 Challenge (TT-02 chassis)
Submit Search
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input