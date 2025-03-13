*** Settings ***
Resource    ../resources/variables.robot
Library     AppiumLibrary

*** Keywords ***
Search for Flight
    Input Text    xpath=//android.widget.EditText[@resource-id='com.example.app:id/search']    ${SEARCH_KEYWORD}
    Click Element    xpath=//android.widget.Button[@resource-id='com.example.app:id/search_button']
    Wait Until Page Contains    Search Results    timeout=5