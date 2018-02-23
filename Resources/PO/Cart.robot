*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Keywords ***
Add to Cart
    Click Button  id=add-to-cart-button
Verify product added
    Wait Until Page Contains  Add to your order
    Sleep  1s
    Click Button  id=siAddCoverage-announce