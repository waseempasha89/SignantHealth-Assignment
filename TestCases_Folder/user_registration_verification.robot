*** Settings ***
Library   SeleniumLibrary
Resource  ${CURDIR}/../Resources/WebUI/Pages/commonkeywords.robot
Resource  ${CURDIR}/../Resources/WebUI/Pages/verification.robot

*** Test Cases ***
Register User In Demo App
    [Documentation]  This test case is used to Register User In Demo App
    Launch Demo App
    Verify Demo app Is Launced
    Generate userdetails
    Clicking Register Link
    Verify Register Page Is Open
    Input UserName
    Input Password
    Input FirstName
    Input FamilyName
    Input Phone
    Click Submit Button
    Verify Login Page Is Open
    [Teardown]   Close Browser


Verifying User After Registering In Demo App
    [Documentation]   This Test case is to verify User has been successfully registered
    Launch Demo App
    Verify Demo app Is Launced
    Click On LogIn Link
    Verify Login Page Is Open
    Input UserName
    Input Password
    Click Submit Button
    Verify Username
    Verify FirstName
    Verify FamilyName
    Verify Phone
    Click Log Out Link
    Verify Log Out Successful
    [Teardown]   Close Browser


