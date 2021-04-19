*** Settings ***
Library    Selenium2Library
Resource    ../Variables/HomePage.robot
Resource    ../Variables/ConfigPage.robot
Resource    ../Variables/ProductListingPage.robot
Resource    ../Variables/WishListPage.robot
Library    mylib

*** Keywords ***
Clear browser cookies
    Open Browser    ${GOOGLE_HOMEPAGE_URL_CONFIGPAGE}    ${BROWSER_CONFIGPAGE}
    Delete All Cookies
    close browser

Navigate to WestwingnNow website
    Open Browser    ${WESTWINGNOW_HOMEPAGE_URL_CONFIGPAGE}    ${BROWSER_CONFIGPAGE}
    Maximize Browser Window
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${ACCEPT_COOKIES_BUTTON_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Click button    ${ACCEPT_COOKIES_BUTTON_HOMEPAGE}
    Wait until element is not visible    ${ACCEPT_COOKIES_BUTTON_HOMEPAGE}

Search using ${SEARCH_TEXT}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Input Text    ${SEARCH_TEXTBOX_HOMEPAGE}    ${SEARCH_TEXT}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Page Should Contain Element    ${SUGGESTION_DROPDOWN_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Element Should Be Visible    ${SUGGESTION_DROPDOWN_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Click element    ${MOEBEL_SUGGESTION_IN_SUGGESTIONBOX_HOMEPAGE}

List of products are returned
    Location Should Contain    ${URL_TEXT}
    Reload Page
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${LIST_OF_RETURNED_PRODUCTS_PRODUCTLISTINGPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Page should contain element    ${LIST_OF_RETURNED_PRODUCTS_PRODUCTLISTINGPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Element should be visible    ${LIST_OF_RETURNED_PRODUCTS_PRODUCTLISTINGPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${HEART_ICON_PRODUCTLISTINGPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Page should contain element    ${HEART_ICON_PRODUCTLISTINGPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Element should be visible    ${HEART_ICON_PRODUCTLISTINGPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${SORT_ICON_PRODUCTLISTINGPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Page should contain element    ${SORT_ICON_PRODUCTLISTINGPAGE}
    Sleep    5s
    capture page screenshot

Click on the heart icon of the first product
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${HEART_ICON_PRODUCTLISTINGPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Click element    ${HEART_ICON_PRODUCTLISTINGPAGE}

Verify login or registration overlay
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${LOGIN_REGISTRATION_OVERLAY_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Page should contain element    ${LOGIN_REGISTRATION_OVERLAY_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Element should be visible    ${LOGIN_REGISTRATION_OVERLAY_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Page should contain element    ${LOGIN_NAVIGATION_BUTTON_FOOTER_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Element should be visible    ${LOGIN_NAVIGATION_BUTTON_FOOTER_HOMEPAGE}

Switch to login form
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${LOGIN_NAVIGATION_BUTTON_FOOTER_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Click button    ${LOGIN_NAVIGATION_BUTTON_FOOTER_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${LOGIN_SUBMIT_BUTTON_HOMEPAGE}

Login
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Page Should Contain    ${LOGIN_POPUP_HEADER_TEXT}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${LOGIN_SUBMIT_BUTTON_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Input Text    ${EMAIL_TEXTBOX_HOMEPAGE}    ${EMAILADDRESS_TEXT}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Input Text       ${PASSWORD_TEXTBOX_HOMEPAGE}    ${PASSWORD_TEXT}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Click button    ${LOGIN_SUBMIT_BUTTON_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait until page does not contain element    ${LOGIN_SUBMIT_BUTTON_HOMEPAGE}

Verify added product counter is displayed on to the wishlist icon
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${WISHLIST_ICON_WITH_COUNTER_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Page Should Contain Element    ${WISHLIST_ICON_WITH_COUNTER_HOMEPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Element should be visible    ${WISHLIST_ICON_WITH_COUNTER_HOMEPAGE}

Navigate to wishlist section
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Click element    ${WISHLIST_ICON_HOMEPAGE}

Validate the added product
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Wait Until Page Contains Element    ${WISHLIST_WISHLISTPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Element should be visible    ${WISHLIST_WISHLISTPAGE}
    Page Should Contain Element    ${WISHLIST_WISHLISTPAGE}    limit=1
    Sleep    5s
    capture page screenshot

Delete added product from the wishlist
    Sleep    2s
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Click element    ${DELETE_ICON_WISHLISTPAGE}
    Wait Until Keyword Succeeds    ${RETRY_TIMES_CONFIGPAGE}      ${WAIT_TIME_CONFIGPAGE}    Element should not be visible    ${WISHLIST_ICON_WITH_COUNTER_HOMEPAGE}
    Page Should Contain Element    ${WISHLIST_WISHLISTPAGE}    limit=0

Sign out
