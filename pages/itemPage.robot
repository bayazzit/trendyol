*** Settings ***
Library  SeleniumLibrary
Library  String
Variables  ../locators/TrendyolLocators.py

*** Variables ***

*** Keywords ***
Verify name of the item is
    [Documentation]  This keyword checks if the name of the item includes given
    ...              parameter.
    ...              * It should be given in lowercase
    [Arguments]  ${control_name}
    wait until element is visible  ${item_name}  5 s
    ${name}  get text  ${item_name}
    ${name}  convert to lower case  ${name}
    should contain  ${name}  ${control_name}