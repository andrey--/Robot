*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
#Resource  Resources/PO/LandingPage.robot
#Resource  Resources/PO/TopNav.robot
#Resource  Resources/PO/SearchResults.robot
#Resource  Resources/PO/Product.robot
#Resource  Resources/PO/Cart.robot
#Resource  Resources/PO/SignIn.robot

*** Keywords ***
Search For Products
    Go To  http://www.amazon.com
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  1/10 XB Series No.155 XB Ferrari 458 Challenge (TT-02 chassis)
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  "1/10 XB Series No.155 XB Ferrari 458 Challenge (TT-02 chassis)"

Select Product From Search Results
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results

Add Product To Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Add to your order
    Sleep  1s
    Click Button  id=siAddCoverage-announce
Begin Checkout
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  continue
