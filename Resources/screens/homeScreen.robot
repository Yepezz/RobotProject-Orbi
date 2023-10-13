*** Settings ***
Library     AppiumLibrary


*** Variables ***
${BTN_NAVIGATION_PROFILE}    id=air.SamsClubMexico:id/navigation_profil
${FOOTER_NAVIGATION_MENU}    id=air.SamsClubMexico:id/navigationView
${TOUCH_OUTSIDE_ACTION}  id=air.SamsClubMexico:id/touch_outside


*** Keywords ***
Tap outside
    Tap  ${TOUCH_OUTSIDE_ACTION}

Verify Navigation profile option is displayed
    Run Keyword And Continue On Failure  element should be visible  ${BTN_NAVIGATION_PROFILE}

Verify footer navigation menu is visible
    wait until element is visible   ${FOOTER_NAVIGATION_MENU}    30s
	Run Keyword And Continue On Failure  element should be visible  ${FOOTER_NAVIGATION_MENU}
