*** Settings ***
Library  SeleniumLibrary
Resource  ../../resources/SuiteSetup.robot
Resource  ../../pages/loginPage.robot
Test Setup     Start Browser Test
Test Teardown  Finish Browser Test

*** Test Cases ***
Verify: user e-mail is incorrect
    [Tags]  allure.severity:minor
    Try Invalid Login  betimdoganmdfsjdsf@gmail.com  whatever

Verify: user password is incorrect and the e-mail is correct
    [Tags]  allure.severity:minor
    Try Invalid Login  betimdogan@gmail.com  whatever

Verify: user e-mail is empty and the password is not
    [Tags]  allure.severity:minor
    Try Invalid Login  ${EMPTY}  whatever

Verify: user password is empty and the e-mail is not
    [Tags]  allure.severity:minor
    Try Invalid Login  betimdogan@gmail.com  ${EMPTY}

Verify: user password and e-mail is empty
    [Tags]  allure.severity:minor
    Try Invalid Login  ${EMPTY}  ${EMPTY}

*** Keywords ***
Try Invalid Login
    [Arguments]      ${username}         ${password}
    Go To Login Page
    Input Username and Password     ${username}         ${password}
    Click Login Button
    Check The Error Message