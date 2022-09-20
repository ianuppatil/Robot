*** Settings ***
Resource    ../KW_Resources/Common.robot
Resource    ../Variables/HomePage.robot

*** Keywords ***
All the browser cookies are cleared
    Clear browser cookies

I am on the WestwingNow home page
    Navigate to WestwingnNow website

I search for ${SEARCH_TEXT}
    Search using ${SEARCH_TEXT}

I should see product listing page with a list of products
    List of products are returned

I click on wishlist icon of the first found product
    Click on the heart icon of the first product

I should see the login or registration overlay
    Verify login or registration overlay

I switch to login form of the overlay
    Switch to login form

I log in with credentials
    Login

the product should be added to the wishlist
    Verify added product counter is displayed on to the wishlist icon

I go to the wishlist page
    Navigate to wishlist section

I validate the added product in the wishlist page
    Validate the added product

I delete the product from my wishlist
    Delete added product from the wishlist