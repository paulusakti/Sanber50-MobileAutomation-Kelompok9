*** Settings ***
Resource    ../base.robot
Resource    ../homePage/homePage.robot
Library    AppiumLibrary

*** Keywords ***

*** Test Cases ***
Successfully Open Flight Application
    Open Flight Application
    Verify Homepage Appears
    Close Application