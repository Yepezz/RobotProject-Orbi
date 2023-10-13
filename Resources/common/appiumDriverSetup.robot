*** Settings ***
Documentation  Appium drivers setup

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   12

*** Keywords ***
Open Test Application
  Open Application  http://127.0.0.1:4723  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}  deviceName=97b7ba67
  ...  appPackage=air.SamsClubMexico  appActivity=air.sams.mx.svelte.main.MainActivity  autoGrantPermissions=true

