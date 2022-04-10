*** Settings ***
Library    AppiumLibrary

*** Variables ***
${EMAIL}         arulami@gmail.com
${LOGIN-EMAIL-FIELD}        //android.widget.EditText[@resource-id="org.wordpress.android:id/input"]
${LOGIN-EMAIL-CONTINUE-BUTTON}      //android.widget.Button[@text="Continue"]
*** Keywords ***
Verify page loaded
    wait until page contains     Get Started

Enter email
    input text        ${LOGIN-EMAIL-FIELD}      ${EMAIL}

Tap Continue
    click element       ${LOGIN-EMAIL-CONTINUE-BUTTON}