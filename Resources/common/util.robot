*** Settings ***
Documentation  This util includes generic keywords

*** Keywords ***

Step
    [Arguments]     ${step_no}
    ${step_log}=     Catenate        SEPARATOR=      ---------STEP    ${step_no}     ---------
    Log to console      ${step_log}