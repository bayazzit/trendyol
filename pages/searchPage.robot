*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/TrendyolLocators.py

*** Variables ***

*** Keywords ***
Search from searchbar that
    [Documentation]  This keyword searches the given word(s) on Trendyol
    [Arguments]  ${key}
    wait until element is visible  ${search_bar}  5 s
    input text  ${search_bar}  ${key}
    wait until element is visible  ${search_button}  5 s
    click element  ${search_button}

Select the first item
    [Documentation]  This keyword selects the first ordered item from the
    ...              searched items
    wait until element is visible  ${first_item}  5 s
    click element  ${first_item}