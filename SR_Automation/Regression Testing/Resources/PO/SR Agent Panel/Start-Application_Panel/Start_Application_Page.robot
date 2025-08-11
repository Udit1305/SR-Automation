*** Settings ***
Library                                                     Browser
Library                                                     Collections

*** Variables ***

${Start_Application_Button}                                 xpath=//button[normalize-space()='Start Application']

*** Keywords ***
#Verify Select Industry Page
#    Wait For Elements State                                 ${Page_Heading}
    
Verify Page
	Wait For Condition      Url             contains        start-application?currentScreen=StartApplication

Click Continue Button
	Click                                                   ${Start_Application_Button}