*** Settings ***
Library                                         Browser

*** Variables ***
${Profile_Page_IMG}                             xpath=//li[@data-qa='squarerisk-user-profile']
${AddNew_Button}                                xpath=//button[@data-qa="application-add-new"]
${Quote_Request_Id}                             xpath=//li[@data-qa="Quote Request"]
${Network_Updates_Id}                           xpath=//li[@data-qa="Network Updates"]
${User_Access_Id}                               xpath=//li[@data-qa="User Access"]
#${Logout_button_Id}                             xpath=//li[@data-qa="sidebar-logout-button"]
${Logout_button_Id}                             xpath=//div[@role='button'][.//p[text()='Logout']]

*** Keywords ***
Verify Home Page
	Wait For Elements State                     ${Profile_Page_IMG}

Click on Add New Button
	Wait For Elements State                     ${AddNew_Button}            state=enabled
	Click                                       ${AddNew_Button}

Click on Logout
	Click                                       ${Logout_button_Id}