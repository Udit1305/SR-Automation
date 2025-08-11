*** Settings ***
Library                                     Browser
Library                                     ../../../../../../SR_Custom_Library/SrCustomLib.py

*** Variables ***
${Cowbell_Form}                                  xpath=//div[@class="container wizard-nav-container"]/child::div[@class="step active"]//div[contains(text(),'Cowbell')]
${Extra_Additional_Question_Panel_ID}            xpath=//span[normalize-space()='Extra Additional Questions']
${Customer_Email_ID}                             xpath=//div[contains(.,'Extra Additional Questions')]//input[@name="data[sr_ic_email]"]
${Year_Business_Established_ID}                  xpath=//div[contains(.,'Extra Additional Questions')]//input[@name="data[sr_ic_year_established]"]

&{Cyber_Security_Officer_Values}                 Yes=//div[contains(.,'Extra Additional Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_security_officer]")]                                                                                                                                                                                      No=//div[contains(.,'Extra Additional Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_security_officer]")]

&{Cyber_Security_Training_Values}                Yes=//div[contains(.,'Extra Additional Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_security_training]")]                                                                                                                                                                                     No=//div[contains(.,'Extra Additional Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_security_training]")]

&{Cyber_Auth_Fund_Transfer_Values}               Yes=//div[contains(.,'Extra Additional Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_auth_fund_transfer]")]                                                                                                                                                                                    No=//div[contains(.,'Extra Additional Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_auth_fund_transfer]")]

&{Cyber_Unauthorized_Wire_Transfers_Values}      Yes=//div[contains(.,'Extra Additional Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_unauthorized_wire_transfers]")]                                                                                                                                                                           No=//div[contains(.,'Extra Additional Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_unauthorized_wire_transfers]")]

&{Cyber_Verifying_Bank_Accts_Values}             Yes=//div[contains(.,'Extra Additional Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_verifying_bank_accts]")]                                                                                                                                                                                  No=//div[contains(.,'Extra Additional Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_verifying_bank_accts]")]

*** Keywords ***
Verify the Cowbell form loaded
    Wait For Elements State                                                             ${Cowbell_Form}
    Focus                                                                               ${Cowbell_Form}

Verify the Form Contains Extra Additional Questions Panel
    Wait For Elements State                                                             ${Extra_Additional_Question_Panel_ID}

Fill Customer Email
    [Arguments]                                                                         ${Email}
    Fill Text                                                                           ${Customer_Email_ID}                                ${Email}

Fill Year Business Established
    [Arguments]                                                                         ${Year}
    Fill Text                                                                           ${Year_Business_Established_ID}                     ${Year}

Does the policyholder agree to be the Designated Information Security Contact?
    [Arguments]                                                                         ${Value}
    ${Cyber_Security_Officer_Value}                 Get From Dictionary                 ${Cyber_Security_Officer_Values}                    ${Value}
    Click                                                                               ${Cyber_Security_Officer_Value}

Does policyholder provide mandatory information security training to all employees at least annually?
    [Arguments]                                                                         ${Value}
    ${Cyber_Security_Training_Value}                Get From Dictionary                 ${Cyber_Security_Training_Values}                   ${Value}
    Click                                                                               ${Cyber_Security_Training_Value}

Do policy holder employees authenticate funds transfer requests?
    [Arguments]                                                                         ${Value}
    ${Cyber_Auth_Fund_Transfer_Value}               Get From Dictionary                 ${Cyber_Auth_Fund_Transfer_Values}                  ${Value}
    Click                                                                               ${Cyber_Auth_Fund_Transfer_Value}

Do policy holder employees prevent unauthorized employees from initiating wire transfers?
    [Arguments]                                                                         ${Value}
    ${Cyber_Unauthorized_Wire_Transfers_Value}     Get From Dictionary                  ${Cyber_Unauthorized_Wire_Transfers_Values}         ${Value}
    Click                                                                               ${Cyber_Unauthorized_Wire_Transfers_Value}

Do policy holder employees verify vendor/supplier bank accounts before adding to accounts payable systems?
    [Arguments]                                                                         ${Value}
    ${Cyber_Verifying_Bank_Accts_Value}             Get From Dictionary                 ${Cyber_Verifying_Bank_Accts_Values}                ${Value}
    Click                                                                               ${Cyber_Verifying_Bank_Accts_Value}
