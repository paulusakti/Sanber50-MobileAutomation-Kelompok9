*** Settings ***
Resource                ../base.robot
Variables               homepage_locator.yaml

*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible    ${appLogo}
    Wait Until Element Is Visible    ${signInButton}
    Wait Until Element Is Visible    ${searchButton}
    Wait Until Element Is Visible    ${checkinButton}

Click Button Sign In Home Page
    Click Element    ${signInButton}

Verify Signed In
    Wait Until Element Is Visible    ${ngendigitText}