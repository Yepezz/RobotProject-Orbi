*** Settings ***
Documentation  Login tests

Library  AppiumLibrary
Resource    ../Resources/common/util.robot
Resource    ../Resources/common/appiumDriverSetup.robot
Resource    ../Resources/screens/loginScreen.robot
Resource    ../Resources/screens/homeScreen.robot

Suite Setup  Open Test Application

*** Variables ***
${USERNAME}=  ypz.omar@gmail.com
${PASSWORD}=  oayc007buy

*** Test Cases ***
Verify login with invalid username
	[Tags]   TC001 login Invalid username

	Step  1
	Verify Welcome modal is displayed
	Step  2
    Click on Welcome Inicia Sesion button
    Step  3
    Enter Username  ypz.omar@gmail.co
    Step  4
    Enter password  ${PASSWORD}
    Step  5
    Click on Iniciar Sesion button
    Step  6
    Verify login error is displayed

Verify login with invalid password
	[Tags]   TC002 login Invalid password

    Step  1
    Enter Username  ${USERNAME}
    Step  2
    Enter password  123456
    Step  3
    Click on Iniciar Sesion button


Verify login with valid credentials
	[Tags]   TC001 login valid username and password

    Step  1
    Enter Username  ${USERNAME}
    Step  2
    Enter password  ${PASSWORD}
    Step  3
    Click on Iniciar Sesion button
    Step  4
    Verify footer navigation menu is visible






