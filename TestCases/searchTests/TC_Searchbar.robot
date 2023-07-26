*** Settings ***
Library  SeleniumLibrary
Resource  ../../resources/SuiteSetup.robot
Resource  ../../pages/homePage.robot
Resource  ../../pages/loginPage.robot
Resource  ../../pages/searchPage.robot
Resource  ../../pages/itemPage.robot
Suite Setup     Start Browser Test
Suite Teardown  Finish Browser Test

*** Variables ***

*** Test Cases ***
Search Bar Test
    [Documentation]  This is a test case for validation of searchbar
    [Tags]  allure.severity:critical

    # Preconditions: Close Popup
    Close Popup

    #Actual Test
    Search from searchbar that  kırmızı pazartesi
    Select the first item
    Switch the new tab
    Verify name of the item is  kırmızı pazartesi

*** Keywords ***
Switch the new tab
    wait until keyword succeeds  5 s  1 s  switch window  new

Close Popup
    wait until element is visible       ${close_popup}
    Click Element       ${close_popup}