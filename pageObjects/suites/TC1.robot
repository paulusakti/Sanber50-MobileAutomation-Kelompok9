*** Settings ***
Resource    ../base.robot
Resource    ../homePage/homePage.robot
Resource    ../loginPage/loginPage.robot

*** Test Cases ***
Successfully Open Flight Application
    Open Flight Application
    Verify Homepage Appears
    Click Button Sign In Home Page

Login Scenario 1 
    Clear Username Password
    Input Username Special-Char
    Input Password Valid
    Click Button Sign In Login Page
    Invalid Notification
Login Scenario 2
    Clear Username Password
    Input Username Without Domain
    Input Password Valid 
    Click Button Sign In Login Page
    Invalid Notification
Login Scenario 3
    Clear Username Password
    Input Username Invalid
    Input Password Valid 
    Click Button Sign In Login Page
    Invalid Notification
Login Scenario 4   
    Clear Username Password
    Input Username Valid
    Input Password Special
    Click Button Sign In Login Page
    Invalid Notification
Login Scenario 5  
    Clear Username Password
    Input Username Valid
    Input Password Invalid
    Click Button Sign In Login Page
    Invalid Notification
Login Scenario 6 
    Clear Username Password
    Input Username Valid
    Input Password Valid
    Click Button Sign In Login Page
    Login Successfully