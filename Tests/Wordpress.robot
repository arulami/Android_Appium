*** Settings ***
Documentation  These test cases used for checking Login Options by using WordPress Android app

Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/WordpressApp.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Mobile Test
Test Teardown  End Mobile Test

# Copy/paste the below command to Terminal to execute:
# robot -d results tests/Wordpress.robot
# to execute tags - Smoke:
# robot -d Results -i Smoke --loglevel TRACE Tests/Wordpress.robot

*** Test Cases ***
user to view Login options
    [Tags]  Smoke
    Given user checks to log in
    When user tap loginWith option
    Then user should see login options email

user to check Login is successful
    [Tags]    Smoke
    Given user checks to log in
    When user tap loginWith option
    Then user should see login options email
    And user enters valid email and password
    Then user should successfully logs In

