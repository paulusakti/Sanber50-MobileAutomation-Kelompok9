*** Settings ***
Library     AppiumLibrary


*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     9
${DEVICE_NAME}          192.168.1.199:5555
${PACKAGE_NAME}         com.example.myapplication
${ACTIVIY_NAME}         com.example.myapplication.MainActivity


*** Keywords ***
Open Flight Application
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appActivity=${ACTIVIY_NAME}
    ...    appPackage=${PACKAGE_NAME}

Close Flight Application
    Close Application
