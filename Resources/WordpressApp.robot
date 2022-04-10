*** Settings ***
Resource    PO/WelcomeScreen.robot
Resource    PO/GetStartScreen.robot
Resource    PO/LogInScreen.robot
Resource    PO/SiteScreen.robot

*** Keywords ***

user checks to log in
    Log  Check to see whether user is able to log in

user tap loginWith option
    WelcomeScreen.Verify page loaded
    WelcomeScreen.Tap Login With

user should see login options email
    GetStartScreen.Verify page loaded

user enters valid email and password
    GetStartScreen.Enter email
    GetStartScreen.Tap Continue
    LogInScreen.Verify page loaded
    LogInScreen.Enter Password
    LogInScreen.Tap Continue

user should successfully logs In
    SiteScreen.Verify page loaded

