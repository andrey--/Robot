*** Settings ***
Documentation  This is some basic info about test suite
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  gc
    SeleniumLibrary.Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  1/10 XB Series No.155 XB Ferrari 458 Challenge (TT-02 chassis)
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  "1/10 XB Series No.155 XB Ferrari 458 Challenge (TT-02 chassis)"
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Add to your order
    Sleep  1s
    Click Button  id=siAddCoverage-announce
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  continue
    Close Browser

*** Keywords ***
