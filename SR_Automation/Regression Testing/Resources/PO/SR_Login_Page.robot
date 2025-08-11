*** Settings ***
Library                                         Browser

*** Variables ***
${SR_img}                                       xpath=//*[name()='svg'][@alt='Square Risk Logo']
${Email_CSSID}                                  css=input[name="email"]
${Email_Id}                                     xpath=//input[@name='email']
${password_Id}                                  xpath=//input[@name='password']
#${loginButtonId}                               submit
${signIn_Button_Id}                             xpath=//button[normalize-space()='Sign In']

*** Keywords ***
Navigate to SquareRisk Admin Login page
	New Page                                    url=${URLs.${ENV}_Admin}

Navigate to SquareRisk Agent Login page
	New Page                                    url=${URLs.${ENV}_Agent}

Verify Page loaded
	Wait For Elements State                     ${SR_img}

Input Email into the Email field
	[arguments]                                 ${email}
    Wait For Elements State                     ${Email_CSSID}
	Fill Text                                   ${Email_Id}                 ${email}

Input Password into the Password field
	[arguments]                                 ${password}
	Fill Secret                                 ${password_Id}              $password

Click on Sign In Button
#	Execute Javascript    document.querySelector('button[type="${loginButtonId}"]').click()
	Click                                       ${signIn_Button_Id}
