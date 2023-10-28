*** Settings ***
Resource         ../base.robot
Variables        homepage_locator.yaml

*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible    ${appLogo}
    Wait Until Element Is Visible    ${signInButton}
    Wait Until Element Is Visible    ${searchButton}
    Wait Until Element Is Visible    ${checkinButton}

Click Button Sign In Home Page
    Click Element    ${signInButton}

Click Button Check In
    Click Element    ${checkinButton}

Click Button Search
    Click Element    ${searchButton}

Click Button Book
    Click Element    ${bookButton}

Verify Signed In
    Wait Until Element Is Visible    ${ngendigitText}