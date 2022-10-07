*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Variables  ${CURDIR}/../Page_Objects/locator.py
Resource   ${CURDIR}/commonkeywords.robot


*** Keywords ***
Clicking Register Link
    Click Link   Register


Input FirstName
    Wait Until Keyword Succeeds  4x  3  Input Text    ${firstname_loc}   ${firstname}


Input FamilyName
    Wait Until Keyword Succeeds  4x  3  Input Text    ${lastname_loc}   ${lastname}


Input Phone
    Wait Until Keyword Succeeds  4x  3  Input Text    ${phone_loc}   ${phone}

Verify Register Page Is Open
    Wait Until Keyword Succeeds  4x  3  Element Should Be Visible   //h1[contains(text(),'Register')]