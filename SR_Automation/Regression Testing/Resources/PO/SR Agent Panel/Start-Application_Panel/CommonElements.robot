*** Settings ***
Library                                                     Browser

*** Variables ***
${Exit_Button}                                              xpath=//div[contains(text(),'Exit')]
${Back_Button}                                              xpath=//p[normalize-space()='Back']
#${Continue_Button}                                          xpath=//button[normalize-space()='Continue']


*** Keywords ***
Click on the "Exit" Button
    Click                                                   ${Exit_Button}

Click on the "Back" Button
    Click                                                   ${Back_Button}

#Click on the "Continue" Button
#    Click                                                   ${Continue_Button}