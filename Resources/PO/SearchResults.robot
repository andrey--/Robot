*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  "${SEARCH_TERM}"
Click Product Link
    Click Link  css=#result_0 a.s-access-detail-page