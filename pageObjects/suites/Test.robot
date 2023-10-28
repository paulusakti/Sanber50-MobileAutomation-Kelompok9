*** Settings ***
Library     AppiumLibrary


*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     9
${DEVICE_NAME}          8d124be
${ACTIVITY_NAME}        com.example.myapplication.MainActivity
${PACKAGE_NAME}         com.example.myapplication


*** Keywords ***
Open APK
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=UiAutomator2
    # ...    newCommandTimeout=2500
    ...    appActivity=${ACTIVITY_NAME}
    ...    appPackage=${PACKAGE_NAME}

Close APK
    Close Application


*** Test Cases ***
Successfully Open Flight Application
    Open APK
    Close APK
