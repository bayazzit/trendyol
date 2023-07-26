*** Settings ***
Library  SeleniumLibrary
Resource    ../../resources/SuiteSetup.robot
Resource    ../../pages/homePage.robot
Resource    ../../pages/loginPage.robot
Suite Setup     Start Browser Test
Suite Teardown  Finish Browser Test

*** Variables ***
${VALID_USERNAME}  betim.dogan@accenture.com
${VALID_PASSWORD}  TrendyolSifrem1.

*** Test Cases ***
Verify that the user logs in successfully if the user e-mail and password are correct.
    [Tags]  allure.severity:blocker
    Go To Login Page
    Input Username   ${VALID_USERNAME}
    Input Password   ${VALID_PASSWORD}
    Click Login Button
    Check The Successful Login