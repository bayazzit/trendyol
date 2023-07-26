*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${link}  https://www.trendyol.com/

*** Keywords ***
Start Browser Test
    Open Browser  ${link}  Chrome  executable_path="C:\Program Files\Google\Chrome\Application"
    Set Selenium Implicit Wait  10 seconds
    Set Selenium Timeout  10 seconds
    Maximize Browser Window

Finish Browser Test
    Close All Browsers