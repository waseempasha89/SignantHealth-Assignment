*** Settings ***
Library   SeleniumLibrary
Variables  ${CURDIR}/../Page_Objects/locator.py
Resource   ${CURDIR}/commonkeywords.robot

*** Keywords ***

Click On LogIn Link
    Click Link   Log In

Input UserName
    Wait Until Keyword Succeeds  4x  3  Input Text    ${username_loc}    ${username}

Input Password
    Wait Until Keyword Succeeds  4x  3  Input Text    ${password_loc}    ${password}


Click Submit Button
    Wait Until Keyword Succeeds  4x  3  Click Element   ${submit_loc}
    Sleep   3

Verify Demo app Is Launced
    Wait Until Keyword Succeeds  4x  3  Element Should Be Visible   //a[contains(text(),'Demo app')]


Verify Login Page Is Open
    Wait Until Keyword Succeeds  4x  3  Element Should Be Visible   //h1[contains(text(),'Log In')]

Click Log Out Link
    Click Link   Log Out

Verify Log Out Successful
    Wait Until Keyword Succeeds  4x  3  Element Should Not Be Visible    //a[contains(text(),'Log Out')]


