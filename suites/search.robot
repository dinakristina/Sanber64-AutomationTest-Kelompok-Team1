*** Settings ***
Library    AppiumLibrary
Resource   ../pageObjects/base.robot
Resource   ../pageObjects/homePage/homePage.robot
Resource   ../pageObjects/loginPage/loginPage.robot
Resource   ../pageObjects/searchPage/searchPage.robot

*** Test Cases ***
User Should Be Able To Search With Valid Flight Number
    [Setup]    Open Flight Application
    Verify Home Screen Appears
    Sleep    3s
    Click Sign In Button On Home Screen
    Sleep    3s
    Input Username    username=${VALID_USERNAME}
    Input Password    password=${VALID_PASSWORD}
    Click Sign In Button On Sign In Screen
    Sleep    3s
    Tap With Positions    367    400
    Sleep    3s
    Search Flight By Number    ${VALID_FLIGHT_NUMBER}
    Verify Search Results Displayed
    [Teardown]    Close Flight Application