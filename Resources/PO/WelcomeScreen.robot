*** Settings ***
Library    AppiumLibrary

*** Variables ***
${LOGIN-WITH}   //android.widget.Button[@text="Log in or sign up with WordPress.com"]
*** Keywords ***
Verify page loaded
    wait until page contains     Welcome

Tap Login With
    click element    ${LOGIN-WITH}