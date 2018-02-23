*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  "1/10 XB Series No.155 XB Ferrari 458 Challenge (TT-02 chassis)"
Click Product Link
    Click Link  css=#result_0 a.s-access-detail-page