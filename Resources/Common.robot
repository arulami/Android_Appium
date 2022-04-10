*** Settings ***
Library  AppiumLibrary

*** Variables ***

*** Keywords ***
Begin Mobile Test

   open application    http://localhost:4723/wd/hub
       ...    deviceName=emulator-5554
       ...    appPackage=org.wordpress.android
       ...    appActivity=org.wordpress.android.ui.WPLaunchActivity
       ...    platformName=Android
       ...    automationName=UIAutomator2



End Mobile Test
   close application
