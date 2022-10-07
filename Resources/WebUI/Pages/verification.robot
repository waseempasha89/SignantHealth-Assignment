*** Settings ***
Library   SeleniumLibrary
Variables  ${CURDIR}/../Page_Objects/locator.py


*** Keywords ***

Verify Username
    ${username_form}   Get Text   ${table_username}
    Should Be Equal As Strings    ${username_form}    ${username}

Verify FirstName
    ${firstname_form}   Get Text   ${table_firstname}
    Should Be Equal As Strings   ${firstname_form}   ${firstname}

Verify FamilyName
    ${lastname_form}   Get Text   ${table_lastname}
    Should Be Equal As Strings   ${lastname_form}   ${lastname}

Verify Phone
    ${phone_form}   Get Text   ${table_phone}
    Should Be Equal As Strings  ${phone_form}  ${phone}




