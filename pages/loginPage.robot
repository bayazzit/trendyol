*** Settings ***
Library  SeleniumLibrary
Library                String
Library                Collections
Resource    ../pages/homePage.robot
Variables  ../locators/TrendyolLocators.py

*** Variables ***

*** Keywords ***
Valid Login
    [Arguments]      ${username}         ${password}
    Input Username and Password     ${username}         ${password}
    Click Login Button
    Check The Successful Login

Input Username and Password
    [Arguments]      ${username}         ${password}
    Input Username      ${username}
    Input Password      ${password}

Input Username
    [Arguments]     ${username}
    Wait Until Element is Visible       ${username_input}
    Input Text      ${username_input}   ${username}

Input Password
    [Arguments]     ${password}
    Wait Until Element is Visible       ${password_input}
    Input Text      ${password_input}   ${password}

Click Login Button
    Wait Until Element is Enabled  ${login_button3}
    Click Element  ${login_button3}

Check The Successful Login
    Wait Until Element is Visible       ${my_account_button}

Check The Error Message
    Wait Until Element is Visible       ${error_message}
