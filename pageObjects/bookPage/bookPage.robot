*** Settings ***
Resource        ../base.robot
Variables       bookpage_locator.yaml

*** Keywords ***
Select From City
    Wait Until Element Is Visible    ${fromCitySpinner}
    Click Element    ${fromCitySpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="Chicago"]
    Click Text    Chicago
    Element Should Contain Text    //android.widget.TextView[@text="Chicago"]    Chicago  

Set To City
    Wait Until Element Is Visible    ${toCitySpinner}
    Click Element    ${toCitySpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="Paris"]
    Click Text    Paris
    Element Should Contain Text    //android.widget.TextView[@text="Paris"]    Paris  


Set Class
    Wait Until Element Is Visible    ${classSpinner}
    Click Element    ${classSpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="First"]
    Click Text    First
    Element Should Contain Text    //android.widget.TextView[@text="First"]    First  

Set Start Date
    Click Element    ${startDateTextView}
    Wait Until Element Is Visible    ${datePicker}
    Click Element    ${1AugDatePicker}
    Click Element    ${okButtonDatePicker}


Set End Date
    Click Element    ${endDateTextView}
    Wait Until Element Is Visible    ${datePicker}
    Click Element    ${2AugDatePicker}
    Click Element    ${okButtonDatePicker}

Set Flight RadioButton
    Click Element    ${flightRadioButton}

Set OneDay CheckBox
    Click Element    ${oneDayCheckBox}

Click Book Confirm
    Click Element    ${bookFlightButton}

Select Price
    Wait Until Element Is Visible    ${priceButton}
    Click Element    ${priceButton}

Click Price Confirm
    Click Element    ${priceConfirmButton}

Book Successfully
    Wait Until Element Is Visible    ${yourFlightIsBooked}



