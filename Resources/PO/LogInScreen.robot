*** Settings ***
Library    AppiumLibrary
Resource    .././../Resources/password.robot

*** Variables ***
&{USER_DETAILS}     password=${PASSWORD}
${LOGIN-PASSWORD-FIELD}     //android.widget.EditText[@text="Password"]
${LOGIN-PASSWORD-CONTINUE-BUTTON}       //android.widget.Button[@text="Continue"]

*** Keywords ***
Verify page loaded
    wait until page contains        Log In

Enter Password
    input text    ${LOGIN-PASSWORD-FIELD}     ${USER_DETAILS}[password]

Tap Continue
    click element    ${LOGIN-PASSWORD-CONTINUE-BUTTON}


