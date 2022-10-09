*** Settings ***
Library   SeleniumLibrary
Library   String
Variables  ${CURDIR}/../Page_Objects/locator.py
Resource   ${CURDIR}/Register_keywords.robot
Resource   ${CURDIR}/Login_keywords.robot
Library   ${CURDIR}/getdriverpath.py


*** *** Variables ***
${server_url}   http://127.0.0.1:8080/

*** Keywords ***

Launch Demo App
    ${driver_path}   get_driver_path_with_browser   ${browser_name}
    Create Webdriver    ${browser_name}    executable_path=${driver_path}
    Go To  ${server_url}


Generate userdetails
    ${username}  Generate Random String
    ${password}  Generate Random String
    ${firstname}  Generate Random String
    ${lastname}  Generate Random String
    ${phone}  Generate Random String   10  [NUMBERS]
#    Setting variables so they can be used in other test case to verify
    Set Suite Variable    ${username}
    Set Suite Variable    ${password}
    Set Suite Variable    ${firstname}
    Set Suite Variable    ${lastname}
    Set Suite Variable    ${phone}








