*** Settings ***
Documentation  Login tests

Library  AppiumLibrary
Resource    ../Resources/common/util.robot
Resource    ../Resources/common/appiumDriverSetup.robot
Resource    ../Resources/screens/loginScreen.robot
Resource    ../Resources/screens/homeScreen.robot

Suite Setup  Open Test Application

*** Test Cases ***

Verify footer navigation menu is displayed
	[Tags]   TC004 Home Navigation menu is displayed

	Step    1
	Tap Outside
	Step    2
	Verify Footer Navigation Menu Is Visible

Verify navigation profile option is displayed
	[Tags]   TC004 Home Navigation menu is displayed

	Step    1
	Verify Navigation profile option is displayed