*** Settings ***
Resource    ../resources/variables.robot
Library     AppiumLibrary

*** Keywords ***
Login With Valid Credentials
    Input Text    xpath=//android.widget.EditText[@resource-id='com.example.app:id/username']    ${USERNAME}
    Input Text    xpath=//android.widget.EditText[@resource-id='com.example.app:id/password']    ${PASSWORD}
    Click Element    xpath=//android.widget.Button[@resource-id='com.example.app:id/login']
    Wait Until Page Contains    Welcome    timeout=5