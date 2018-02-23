*** Settings ***
Documentation  This is some basic info about the whole suite

Resource  ../Resources/Common.robot
Resource  ../Resources/Amazon.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  gc
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  1/10 XB Series No.155 XB Ferrari 458 Challenge (TT-02 chassis)

*** Test Cases ***
User can search for product
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search For Products
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search For Products
    Amazon.Select Product From Search Results
    Amazon.Add Product To Cart
    Amazon.Begin Checkout
