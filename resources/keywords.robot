*** Settings ***
Library    AppiumLibrary

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