*** Settings ***
Resource    ../base.robot
Variables   homepage_locator.yaml

*** Test Cases ***
Verify Homepage Element
    Open APK
    # Wait Until Element Is Visible    //andoid.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]
    # Wait Until Element Is Visible    //andoid.widget.ImageView[@resource-id="com.example.myapplication:id/login"]
    # Wait Until Element Is Visible    //andoid.widget.ImageView[@resource-id="com.example.myapplication:id/button6" and @text="Search"] 
    # Wait Until Element Is Visible    //andoid.widget.ImageView[@resource-id="com.example.myapplication:id/button6" and @text="Check in"] 
    Wait Until Element Is Visible    ${appLogo}