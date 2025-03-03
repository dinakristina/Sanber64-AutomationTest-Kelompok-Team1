*** Settings ***
Library    AppiumLibrary
Resource   ../resources/variables.robot
Resource   ../pageObjects/loginPage.robot

Test Setup    Open Application
Test Teardown    Close Application

*** Keywords ***
Open Application
    Open Application    ${APPIUM_SERVER}    
    ...    platformName=${PLATFORM_NAME}    
    ...    deviceName=${DEVICE_NAME}    
    ...    appPackage=${APP_PACKAGE}    
    ...    appActivity=${APP_ACTIVITY}    
    ...    automationName=UiAutomator2

Close Application
    Close Application

*** Test Cases ***
User Should Be Able To Login with Valid Data
    Login With Valid Credentials
