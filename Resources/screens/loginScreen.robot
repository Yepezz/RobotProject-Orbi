*** Settings ***
Library     AppiumLibrary


*** Variables ***
${LBL_WELCOME}    id=air.SamsClubMexico:id/upfront_pincode_title
${BTN_WELCOME_INICIA_SESION}    id=air.SamsClubMexico:id/upfront_pincode_login
${TXT_USUARIO}     id=air.SamsClubMexico:id/email
${TXT_PASSWORD}    id=air.SamsClubMexico:id/password
${BTN_INICIAR_SESION}  id=air.SamsClubMexico:id/sign_in_btn
${LBL_ERROR_MESSAGE}  id=air.SamsClubMexico:id/alert_icon

*** Keywords ***


Enter username
    [Arguments]   ${user}
    wait until element is visible   ${TXT_USUARIO}    30s
    Input Text    ${TXT_USUARIO}  ${User}

Enter password
    [Arguments]  ${password}
    Input Text    ${TXT_PASSWORD}  ${Password}

Click on Iniciar Sesion button
    Click Element    ${BTN_INICIAR_SESION}

Click on Welcome Inicia Sesion button
	wait until element is visible   ${BTN_WELCOME_INICIA_SESION}  10s
    Click Element    ${BTN_WELCOME_INICIA_SESION}

Verify Welcome modal is displayed
	Run Keyword And Continue On Failure  element should be visible  ${LBL_WELCOME}

Verify login error is displayed
	Run Keyword And Continue On Failure  element should be visible  ${LBL_ERROR_MESSAGE}

