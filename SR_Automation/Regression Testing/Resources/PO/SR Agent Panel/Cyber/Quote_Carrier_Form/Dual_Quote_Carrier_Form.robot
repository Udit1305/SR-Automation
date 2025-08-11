*** Settings ***
Library                                             Browser
Library                                             ../../../../../../SR_Custom_Library/SrCustomLib.py

*** Variables ***
${Dual_Form}                                        xpath=//div[@class="container wizard-nav-container"]/child::div[@class="step active"]//div[contains(text(),'Dual')]
${Additional_Info_&_Security_Questions_Panel_ID}    xpath=//span[normalize-space()='Additional Info & Security Questions']
${Add_Subsidiaries_ID}                              xpath=//div[contains(.,'Additional Info & Security Questions')]//input[@name="data[sr_ic_subsidiariess]"]
${Remove_Row_Button}                                xpath=//div[contains(.,'Additional Info & Security Questions')]//button[@ref="removeRow"]
${Add_Another_Button}                               xpath=//div[contains(.,'Additional Info & Security Questions')]//button[@ref="addButton" and normalize-space()="Add Another"]
&{Cyber_OS_Version_Values}                          Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_os_version]")]                                                                                                                                                                                              No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_os_version]")]

&{Cyber_Antivirus_Values}                           Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_antivirus]")]                                                                                                                                                                                               No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_antivirus]")]

&{Cyber_Email_Scan_Values}                          Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_email_scan]")]                                                                                                                                                                                              No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_email_scan]")]

&{Cyber_Remoteaccess_Values}                        Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_remoteaccess]")]                                                                                                                                                                                            No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_remoteaccess]")]

&{Cyber_Remoteaccess_2fa_Values}                    Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_remoteaccess_2fa]")]                                                                                                                                                                                        No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_remoteaccess_2fa]")]

&{Cyber_Privacy_Compliance_Values}                  Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_privacy_compliance]")]                                                                                                                                                                                      No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_privacy_compliance]")]

&{Cyber_Firewall_Values}                            Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_firewall]")]                                                                                                                                                                                                No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_firewall]")]

&{Cyber_Rdp_Values}                                 Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_rdp]")]                                                                                                                                                                                                     No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_rdp]")]

&{Cyber_Copyright_Values}                           Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_copyright]")]                                                                                                                                                                                               No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_copyright]")]

&{Cyber_Accesscontrol_Values}                       Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_accesscontrol]")]                                                                                                                                                                                           No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_accesscontrol]")]

&{Cyber_Recovery_Values}                            Yes=//div[contains(.,'Additional Info & Security Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_recovery")]                                                                                                                                                                                                 No=//div[contains(.,'Additional Info & Security Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_recovery")]

${Cyber_commentary_ID}                              xpath=//div[contains(.,'Additional Info & Security Questions')]//textarea[contains(@name, "data[sr_cybr_commentary]")]

${Historical_Questions_Panel_ID}                    xpath=//span[normalize-space()='Historical Questions']
&{Cyber_losshistory_questions6_Values}              Yes=//div[contains(.,'Historical Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_losshistory_questions6]")]                                                                                                                                                                                  No=//div[contains(.,'Historical Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_losshistory_questions6]")]

${Add_Claim_Details_Edit_Grid_questions6_ID}        xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim5")]

${Losshistory_Events_Date_questions6_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim5")]//input[contains(@name, "[sr_cybr_losshistory_events_date5]")]/following-sibling::input

${Losshistory_Events_Cost_questions6_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim5")]//input[contains(@name, "[sr_cybr_losshistory_events_cost5]")]

${Losshistory_Events_Description_questions6_ID}     xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim5")]//textarea[contains(@name, "[sr_cybr_losshistory_events_description5]")]

${Losshistory_Save_Button_questions6_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim5")]//button[contains(@ref,'editgrid-claim5-saveRow')]

${Losshistory_Cancel_Button_questions6_ID}          xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim5")]//button[contains(@ref,'editgrid-claim5-cancelRow')]

${Losshistory_Add_Another_Button_questions6_ID}     xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim5")]//button[contains(@ref,'editgrid-claim5-addRow')]

&{Cyber_losshistory_questions5_Values}              Yes=//div[contains(.,'Historical Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_losshistory_questions5]")]                                                                                                                                                                                  No=//div[contains(.,'Historical Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_losshistory_questions5]")]

${Add_Claim_Details_Edit_Grid_questions5_ID}        xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim4")]

${Losshistory_Events_Date_questions5_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim4")]//input[contains(@name, "[sr_cybr_losshistory_events_date4]")]/following-sibling::input

${Losshistory_Events_Cost_questions5_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim4")]//input[contains(@name, "[sr_cybr_losshistory_events_cost4]")]

${Losshistory_Events_Description_questions5_ID}     xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim4")]//textarea[contains(@name, "[sr_cybr_losshistory_events_description4]")]

${Losshistory_Save_Button_questions5_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim4")]//button[contains(@ref,'editgrid-claim4-saveRow')]

${Losshistory_Cancel_Button_questions5_ID}          xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim4")]//button[contains(@ref,'editgrid-claim4-cancelRow')]

${Losshistory_Add_Another_Button_questions5_ID}     xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim4")]//button[contains(@ref,'editgrid-claim4-addRow')]

&{Cyber_losshistory_questions4_Values}              Yes=//div[contains(.,'Historical Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_losshistory_questions4]")]                                                                                                                                                                                  No=//div[contains(.,'Historical Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_losshistory_questions4]")]

${Add_Claim_Details_Edit_Grid_questions4_ID}        xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim3")]

${Losshistory_Events_Date_questions4_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim3")]//input[contains(@name, "[sr_cybr_losshistory_events_date3]")]/following-sibling::input

${Losshistory_Events_Cost_questions4_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim3")]//input[contains(@name, "[sr_cybr_losshistory_events_cost3]")]

${Losshistory_Events_Description_questions4_ID}     xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim3")]//textarea[contains(@name, "[sr_cybr_losshistory_events_description3]")]

${Losshistory_Save_Button_questions4_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim3")]//button[contains(@ref,'editgrid-claim3-saveRow')]

${Losshistory_Cancel_Button_questions4_ID}          xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim3")]//button[contains(@ref,'editgrid-claim3-cancelRow')]

${Losshistory_Add_Another_Button_questions4_ID}     xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim3")]//button[contains(@ref,'editgrid-claim3-addRow')]

&{Cyber_losshistory_questions3_Values}              Yes=//div[contains(.,'Historical Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_losshistory_questions3]")]                                                                                                                                                                                  No=//div[contains(.,'Historical Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_losshistory_questions3]")]

${Add_Claim_Details_Edit_Grid_questions3_ID}        xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim2")]

${Losshistory_Events_Date_questions3_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim2")]//input[contains(@name, "[sr_cybr_losshistory_events_date2]")]/following-sibling::input

${Losshistory_Events_Cost_questions3_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim2")]//input[contains(@name, "[sr_cybr_losshistory_events_cost2]")]

${Losshistory_Events_Description_questions3_ID}     xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim2")]//textarea[contains(@name, "[sr_cybr_losshistory_events_description2]")]

${Losshistory_Save_Button_questions3_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim2")]//button[contains(@ref,'editgrid-claim2-saveRow')]

${Losshistory_Cancel_Button_questions3_ID}          xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim2")]//button[contains(@ref,'editgrid-claim2-cancelRow')]

${Losshistory_Add_Another_Button_questions3_ID}     xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim2")]//button[contains(@ref,'editgrid-claim2-addRow')]

&{Cyber_losshistory_questions2_Values}              Yes=//div[contains(.,'Historical Questions')]//input[@value="yes" and contains(@name, "data[sr_cybr_losshistory_questions2]")]                                                                                                                                                                                  No=//div[contains(.,'Historical Questions')]//input[@value="no" and contains(@name, "data[sr_cybr_losshistory_questions2]")]

${Add_Claim_Details_Edit_Grid_questions2_ID}        xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim1")]

${Losshistory_Events_Date_questions2_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim1")]//input[contains(@name, "[sr_cybr_losshistory_events_date1]")]/following-sibling::input

${Losshistory_Events_Cost_questions2_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim1")]//input[contains(@name, "[sr_cybr_losshistory_events_cost1]")]

${Losshistory_Events_Description_questions2_ID}     xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim1")]//textarea[contains(@name, "[sr_cybr_losshistory_events_description1]")]

${Losshistory_Save_Button_questions2_ID}            xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim1")]//button[contains(@ref,'editgrid-claim1-saveRow')]

${Losshistory_Cancel_Button_questions2_ID}          xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim1")]//button[contains(@ref,'editgrid-claim1-cancelRow')]

${Losshistory_Add_Another_Button_questions2_ID}     xpath=//div[normalize-space()='Add Claims Details']/ancestor::div[contains(@class, "formio-component-editgrid formio-component-claim1")]//button[contains(@ref,'editgrid-claim1-addRow')]

${Discounts_Credits_and_Coverages_Panel_ID}         xpath=//span[normalize-space()='Discounts Credits and Coverages']

&{Cyber_Advanced_Security_Tools_Values}             Yes=//div[contains(.,'Discounts Credits and Coverages')]//input[@value="yes" and contains(@name, "data[sr_cyber_advanced_security_tools]")]                                                                                                                                                                                No=//div[contains(.,'Discounts Credits and Coverages')]//input[@value="no" and contains(@name, "data[sr_cyber_advanced_security_tools]")]

${Cyber_advanced_security_tools_describe_ID}        xpath=//div[contains(.,'Discounts Credits and Coverages')]//input[contains(@name, "data[sr_cyber_advanced_security_tools_describe]")]

*** Keywords ***
Verify the Dual form loaded
    Wait For Elements State                                                             ${Dual_Form}
    Focus                                                                               ${Dual_Form}

Verify the Form Contains Additional Info & Security Questions Panel
    Wait For Elements State                                                             ${Additional_Info_&_Security_Questions_Panel_ID}

Add Subsidiaries
    [Arguments]                                                                         ${Value}
    Click                                                                               ${Add_Another_Button}
    Type Text                                                                           ${Add_Subsidiaries_ID}                              ${Value}

Remove Subsidaries
    ${count}                                        Get Element Count                   ${Remove_Row_Button}
    FOR    ${counter}    IN RANGE    ${count}
        ${count} += 1
        Click                                                                           ${Remove_Row_Button}[${count}]
    END

Are all your systems running the most up to date Operating System?
    [Arguments]                                                                         ${Value}
    ${Cyber_OS_Version_Value}                       Get From Dictionary                 ${Cyber_OS_Version_Values}                          ${Value}
    Click                                                                               ${Cyber_OS_Version_Value}

Do you protect all of your devices with anti-virus?
    [Arguments]                                                                         ${Value}
    ${Cyber_Antivirus_Value}                        Get From Dictionary                 ${Cyber_Antivirus_Values}                           ${Value}
    Click                                                                               ${Cyber_Antivirus_Value}

Do you scan all incoming emails for malicious attachments and/or links?
    [Arguments]                                                                         ${Value}
    ${Cyber_Email_Scan_Value}                       Get From Dictionary                 ${Cyber_Email_Scan_Values}                          ${Value}
    Click                                                                               ${Cyber_Email_Scan_Value}

Do you allow remote access to your network?
    [Arguments]                                                                         ${Value}
    ${Cyber_Remoteaccess_Value}                     Get From Dictionary                 ${Cyber_Remoteaccess_Values}                        ${Value}
    Click                                                                               ${Cyber_Remoteaccess_Value}

Do you require multi-factor authentication (MFA) for all remote connections?
    [Arguments]                                                                         ${Value}
    ${Cyber_Remoteaccess_2fa_Value}                 Get From Dictionary                 ${Cyber_Remoteaccess_2fa_Values}                    ${Value}
    Click                                                                               ${Cyber_Remoteaccess_2fa_Value}

Have you taken measures to ensure that you comply with all privacy and data protection laws and regulations that apply to your organisation?
    [Arguments]                                                                         ${Value}
    ${Cyber_Privacy_Compliance_Value}               Get From Dictionary                 ${Cyber_Privacy_Compliance_Values}                  ${Value}
    Click                                                                               ${Cyber_Privacy_Compliance_Value}

Are firewalls installed at all gateways and configured to block inbound connections by default?
    [Arguments]                                                                         ${Value}
    ${Cyber_OS_Version_Value}                       Get From Dictionary                 ${Cyber_OS_Version_Values}                          ${Value}
    Click                                                                               ${Cyber_OS_Version_Value}

Have you disabled all Remote Desktop Protocol (RDP) ports?
    [Arguments]                                                                         ${Value}
    ${Cyber_Rdp_Value}                              Get From Dictionary                 ${Cyber_Rdp_Values}                                 ${Value}
    Click                                                                               ${Cyber_Rdp_Value}

Have you taken measures to ensure that your organisation’s website and print content do not infringe on any trademarks or copyrights?
    [Arguments]                                                                         ${Value}
    ${Cyber_Copyright_Value}                        Get From Dictionary                 ${Cyber_Copyright_Values}                           ${Value}
    Click                                                                               ${Cyber_Copyright_Value}

Are access controls employed using the principle of least privilege?
    [Arguments]                                                                         ${Value}
    ${Cyber_Accesscontrol_Value}                    Get From Dictionary                 ${Cyber_Accesscontrol_Values}                       ${Value}
    Click                                                                               ${Cyber_Accesscontrol_Value}

Have you tested the successful restoration and recovery of key server configurations and data from backups in the last 6 months?
    [Arguments]                                                                         ${Value}
    ${Cyber_Recovery_Value}                         Get From Dictionary                 ${Cyber_Recovery_Values}                            ${Value}
    Click                                                                               ${Cyber_Recovery_Value}

Please add any additional commentary/clarifications to answers provided here:
    [Arguments]                                                                         ${Value}
    Type Text                                                                           ${Cyber_commentary_ID}                              ${Value}

Verify the Form Contains Historical Questions Panel
    Wait For Elements State                                                             ${Historical_Questions_Panel_ID}

Experienced a network outage that resulted in a significant disruption to your operations?
    [Arguments]                                                                         ${Value}
    ${Cyber_losshistory_questions6_Value}           Get From Dictionary                 ${Cyber_losshistory_questions6_Values}              ${Value}
    Click                                                                               ${Cyber_losshistory_questions6_Value}
    IF    "${Value}" == "Yes"
        Wait For Elements State                                                         ${Add_Claim_Details_Edit_Grid_questions6_ID}        state=attached
        Focus                                                                           ${Add_Claim_Details_Edit_Grid_questions6_ID}
    END

Add Claim Details for Question: "Experienced a network outage that resulted in a significant disruption to your operations?"
    [Arguments]                                                                         ${Date}             ${Financial_Costs}              ${Description}
    Type Text                                                                           ${Losshistory_Events_Date_questions6_ID}            ${Date}
    Type Text                                                                           ${Losshistory_Events_Cost_questions6_ID}            ${Financial_Costs}
    Type Text                                                                           ${Losshistory_Events_Description_questions6_ID}     ${Description}
    Click                                                                               ${Losshistory_Save_Button_questions6_ID}

Cancel Claim Detail for Question: "Experienced a network outage that resulted in a significant disruption to your operations?"
    Click                                                                               ${Losshistory_Cancel_Button_questions6_ID}

Add Another Claim Detail for Question: "Experienced a network outage that resulted in a significant disruption to your operations?"
    Click                                                                               ${Losshistory_Add_Another_Button_questions6_ID}

Received an extortion demand relating to your data and/or computer systems?
    [Arguments]                                                                         ${Value}
    ${Cyber_losshistory_questions5_Value}           Get From Dictionary                 ${Cyber_losshistory_questions5_Values}              ${Value}
    Click                                                                               ${Cyber_losshistory_questions5_Value}
    IF    "${Value}" == "Yes"
        Wait For Elements State                                                         ${Add_Claim_Details_Edit_Grid_questions5_ID}        state=attached
        Focus                                                                           ${Add_Claim_Details_Edit_Grid_questions5_ID}
    END

Add Claim Details for Question: "Received an extortion demand relating to your data and/or computer systems?"
    [Arguments]                                                                         ${Date}             ${Financial_Costs}              ${Description}
    Type Text                                                                           ${Losshistory_Events_Date_questions5_ID}            ${Date}
    Type Text                                                                           ${Losshistory_Events_Cost_questions5_ID}            ${Financial_Costs}
    Type Text                                                                           ${Losshistory_Events_Description_questions5_ID}     ${Description}
    Click                                                                               ${Losshistory_Save_Button_questions5_ID}

Cancel Claim Detail for Question: "Received an extortion demand relating to your data and/or computer systems?"
    Click                                                                               ${Losshistory_Cancel_Button_questions5_ID}

Add Another Claim Detail for Question: "Received an extortion demand relating to your data and/or computer systems?"
    Click                                                                               ${Losshistory_Add_Another_Button_questions5_ID}

Notified any persons of a privacy violation and/or data breach incident?
    [Arguments]                                                                         ${Value}
    ${Cyber_losshistory_questions4_Value}           Get From Dictionary                 ${Cyber_losshistory_questions4_Values}              ${Value}
    Click                                                                               ${Cyber_losshistory_questions4_Value}
    IF    "${Value}" == "Yes"
        Wait For Elements State                                                         ${Add_Claim_Details_Edit_Grid_questions4_ID}        state=attached
        Focus                                                                           ${Add_Claim_Details_Edit_Grid_questions4_ID}
    END

Add Claim Details for Question: "Notified any persons of a privacy violation and/or data breach incident?"
    [Arguments]                                                                         ${Date}             ${Financial_Costs}              ${Description}
    Type Text                                                                           ${Losshistory_Events_Date_questions4_ID}            ${Date}
    Type Text                                                                           ${Losshistory_Events_Cost_questions4_ID}            ${Financial_Costs}
    Type Text                                                                           ${Losshistory_Events_Description_questions4_ID}     ${Description}
    Click                                                                               ${Losshistory_Save_Button_questions4_ID}

Cancel Claim Detail for Question: "Notified any persons of a privacy violation and/or data breach incident?"
    Click                                                                               ${Losshistory_Cancel_Button_questions4_ID}

Add Another Claim Detail for Question: "Notified any persons of a privacy violation and/or data breach incident?"
    Click                                                                               ${Losshistory_Add_Another_Button_questions4_ID}

Received a complaint or cease and desist demand alleging intellectual property infringement?
    [Arguments]                                                                         ${Value}
    ${Cyber_losshistory_questions3_Value}           Get From Dictionary                 ${Cyber_losshistory_questions3_Values}              ${Value}
    Click                                                                               ${Cyber_losshistory_questions3_Value}
    IF    "${Value}" == "Yes"
        Wait For Elements State                                                         ${Add_Claim_Details_Edit_Grid_questions3_ID}        state=attached
        Focus                                                                           ${Add_Claim_Details_Edit_Grid_questions3_ID}
    END

Add Claim Details for Question: "Received a complaint or cease and desist demand alleging intellectual property infringement?"
    [Arguments]                                                                         ${Date}             ${Financial_Costs}              ${Description}
    Type Text                                                                           ${Losshistory_Events_Date_questions3_ID}            ${Date}
    Type Text                                                                           ${Losshistory_Events_Cost_questions3_ID}            ${Financial_Costs}
    Type Text                                                                           ${Losshistory_Events_Description_questions3_ID}     ${Description}
    Click                                                                               ${Losshistory_Save_Button_questions3_ID}

Cancel Claim Detail for Question: "Received a complaint or cease and desist demand alleging intellectual property infringement?"
    Click                                                                               ${Losshistory_Cancel_Button_questions3_ID}

Add Another Claim Detail for Question: "Received a complaint or cease and desist demand alleging intellectual property infringement?"
    Click                                                                               ${Losshistory_Add_Another_Button_questions3_ID}

Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?
    [Arguments]                                                                         ${Value}
    ${Cyber_losshistory_questions2_Value}           Get From Dictionary                 ${Cyber_losshistory_questions2_Values}              ${Value}
    Click                                                                               ${Cyber_losshistory_questions2_Value}
    IF    "${Value}" == "Yes"
        Wait For Elements State                                                         ${Add_Claim_Details_Edit_Grid_questions2_ID}        state=attached
        Focus                                                                           ${Add_Claim_Details_Edit_Grid_questions2_ID}
    END

Add Claim Details for Question: "Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?"
    [Arguments]                                                                         ${Date}             ${Financial_Costs}              ${Description}
    Type Text                                                                           ${Losshistory_Events_Date_questions2_ID}            ${Date}
    Type Text                                                                           ${Losshistory_Events_Cost_questions2_ID}            ${Financial_Costs}
    Type Text                                                                           ${Losshistory_Events_Description_questions2_ID}     ${Description}
    Click                                                                               ${Losshistory_Save_Button_questions2_ID}

Cancel Claim Detail for Question: "Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?"
    Click                                                                               ${Losshistory_Cancel_Button_questions2_ID}

Add Another Claim Detail for Question: "Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?"
    Click                                                                               ${Losshistory_Add_Another_Button_questions2_ID}

Verify the Form Contains Discounts Credits and Coverages Panel
    Wait For Elements State                                                             ${Discounts_Credits_and_Coverages_Panel_ID}

Does the Insured have any Advanced Security (EDR, MDR, XDR, etc.) tools?
    [Arguments]                                                                         ${Value}
    ${Cyber_Advanced_Security_Tools_Value}          Get From Dictionary                 ${Cyber_Advanced_Security_Tools_Values}             ${Value}
    Click                                                                               ${Cyber_Advanced_Security_Tools_Value}
    IF    "${Value}" == "Yes"
        Wait For Elements State                                                         ${Cyber_advanced_security_tools_describe_ID}        state=attached
        Focus                                                                           ${Cyber_advanced_security_tools_describe_ID}
    END

If yes, please describe the Advanced Security tools utilized:
    [Arguments]                                                                         ${Value}
    Type Text                                                                           ${Cyber_advanced_security_tools_describe_ID}        ${Value}

