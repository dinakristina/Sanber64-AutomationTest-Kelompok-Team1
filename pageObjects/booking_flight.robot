*** Settings ***
Library    AppiumLibrary
Resource   ../pageObjects/loginPage/loginPage.robot
Suite Teardown    Close Application

*** Variables ***
${URL}                 http://127.0.0.1:4723
${PLATFORM}            Android
${DEVICE_NAME}         rc65rgbm8laapv4h
${APP_PACKAGE}         com.example.flightapp
${APP_ACTIVITY}        com.example.myapplication.MainActivity

${USERNAME}            support@ngendigital.com
${PASSWORD}            abc123


*** Test Cases ***
Booking Flight Successfully
    [Tags]    Booking
    # Pre-condition: Sudah login
    Click Element    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]
    
    Wait Until Element Is Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

    # Select flight type
    Click Element        locator=//android.widget.TextView[@text="ONE WAY"]

    # Select from city
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="New York"]

    # Select to city
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="London"]

    # Select class
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Economy"]

    # Select start date
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    Click Element    locator=//android.view.View[@content-desc="20 Agustus 2019"]

    # Select end date (kalau round trip)
    # Run Keyword If    '${flight_type}' == 'Round Trip'    Click Element    xpath=//android.widget.EditText[@content-desc="end_date"]
    # Run Keyword If    '${flight_type}' == 'Round Trip'    Click Element    xpath=//android.view.View[@content-desc="20"]   # Pilih tanggal 25 (Contoh)

    # Select flight options
    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

    # Click button book
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

    # Verifikasi hasil booking
    Wait Until Page Contains Element    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]    timeout=5
    Log    Booking flight berhasil!