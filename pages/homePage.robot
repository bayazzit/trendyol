*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/TrendyolLocators.py

*** Variables ***

*** Keywords ***
Go To Login Page
    Wait Until Element is Visible       ${close_popup}
    Click Element       ${close_popup}
    Wait Until Element is Visible       ${login_button}
    Mouse over       ${login_button}
    Wait Until Element is Visible       ${login_button2}
    Click Element       ${login_button2}