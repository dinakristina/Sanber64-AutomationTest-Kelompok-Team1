*** Settings ***
Library    AppiumLibrary
Resource   ../pageObjects/base.robot
Resource   ../pageObjects/homePage/homePage.robot
Resource   ../pageObjects/loginPage/loginPage.robot

*** Test Cases ***
User Should Be Login With With Valid Data
    Open Flight Application
    Verify Home Screen Appears
    Sleep    3s
    Click Sign In Button On Home Screen
    Sleep    3s
    Input Username    username=${VALID_USERNAME}
    Input Password    password=${VALID_PASSWORD}
    Click Sign In Button On Sign In Screen
    Sleep    3s
    Close Flight Application

User Should Not Be Login With Invalid Data
    Open Flight Application
    Verify Home Screen Appears
    Sleep    3s
    Click Sign In Button On Home Screen
    Sleep    3s
    Input Username    username=${INVALID_USERNAME}
    Input Password    password=${INVALID_PASSWORD}
    Click Sign In Button On Sign In Screen
    Show Failed Sign In Message
    Sleep    3s
    Close Flight Application