*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
#Resource  Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
#Resource  Resources/PO/SignIn.robot

*** Keywords ***
Search For Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product From Search Results
    SearchResults.Click Product Link


Add Product To Cart
    Cart.Add to Cart
    Cart.Verify product added
Begin Checkout
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  continue
