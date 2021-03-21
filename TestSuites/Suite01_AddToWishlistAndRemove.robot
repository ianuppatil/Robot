*** Settings ***
Documentation    Automation of Westwingnow Application
Resource         ../Resources/BDD_KWResources/Common_BDD.robot
Suite Teardown    Selenium2Library.Close All Browsers


*** Test Cases ***
TC01_Validation of addition of product to wishlist and remove it.
    #[Arguments]    ${SEARCH_TEXT}=möbel
    [Documentation]    TC01-Validate the wishlist functionality
    [Tags]    Sanity
    Set screenshot directory    ./Results/Evidences

    Given All the browser cookies are cleared
    And I am on the WestwingNow home page
    When I search for ${SEARCH_TEXT}
    Then I should see product listing page with a list of products
    When I click on wishlist icon of the first found product
    Then I should see the login or registration overlay
    When I switch to login form of the overlay
    And I log in with credentials
    Then the product should be added to the wishlist
    And I go to the wishlist page
    And I validate the added product in the wishlist page
    And I delete the product from my wishlist