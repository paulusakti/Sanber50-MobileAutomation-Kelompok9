*** Settings ***
Resource        ../base.robot
Variables       loginpage-locator.yaml

*** Keywords ***
Login User
    Wait Until Element Is Visible    ${username}
    Input Text    ${username}    support@ngendigital.com
    Input Password    ${password}    abc123

Input Username Valid
    Wait Until Element Is Visible    ${username}
    Input Text    ${username}    support@ngendigital.com

Input Username Special-Char
    Wait Until Element Is Visible    ${username}
    Input Text    ${username}    ?¿!¡*%#@^";,.@ngendigital.com

Input Username Without Domain
    Wait Until Element Is Visible    ${username}
    Input Text    ${username}    support@ngendigital

Input Username Invalid
    Wait Until Element Is Visible    ${username}
    Input Text    ${username}    trfsd8fy8@ngendigital.com

Input Password Valid
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}    abc123

Input Password Special
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}    ?¿!¡*%#@^";,.

Input Password Invalid
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}    123qw2w

Click Button Sign In Login Page
    Click Element    ${loginPageButton}

Clear Username Password
    Wait Until Element Is Visible    ${username}
    Wait Until Element Is Visible    ${password}
    Clear Text    ${username}
    Clear Text    ${password}

Invalid Notification
    Wait Until Page Contains    Invalid username/password

Login Successfully 
    Wait Until Page Does Not Contain Element    ${username}
    Wait Until Page Does Not Contain Element    ${password}