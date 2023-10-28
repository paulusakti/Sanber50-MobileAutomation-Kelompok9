*** Settings ***
Library     AppiumLibrary


*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     9
${DEVICE_NAME}          8d124be
${Activity_NAME}        com.example.myapplication
${PACKAGE_NAME}         com.example.myapplication.MainActivity


*** Keywords ***
Open APK
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=2500
    ...    appActivity=${Activity_NAME}
    ...    appPackage=${PACKAGE_NAME}

Close APK
    Close Application

# Login User
#     Input Text    ${Form.Login.EmailAddress.Txt}    ${i_email}   
#     Input Text    ${Form.Login.Password.Txt}    ${i_pw}
#     Click Element    ${Form.Login.Login.Btn}

*** Test Cases ***
Test 1
    Open APK