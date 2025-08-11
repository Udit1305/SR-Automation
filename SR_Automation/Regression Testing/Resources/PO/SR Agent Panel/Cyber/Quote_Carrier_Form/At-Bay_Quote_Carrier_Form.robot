*** Settings ***
Library                                     Browser
Library                                     ../../../../../../SR_Custom_Library/SrCustomLib.py

*** Variables ***
${At_Bay_Form}                              xpath=//div[@class="container wizard-nav-container"]/child::div[@class="step active"]//div[contains(text(),'At-Bay')]
${Additional_Information_Panel_ID}          xpath=//span[normalize-space()='Additional Information']
&{Cyber_Applicant_Info_Values}              Yes=//div[contains(.,'Additional Information')]//input[@value="yes" and contains(@name, "data[sr_cybr_applicant_info]")]                                                No=//div[contains(.,'Additional Information')]//input[@value="no" and contains(@name, "data[sr_cybr_applicant_info]")]

&{Restricted_Business_Activities_Values}    Yes=//div[contains(.,'Additional Information')]//input[@value="yes" and contains(@name, "data[sr_ic_restricted_business_activities]")]                                                                                                                                                                     No=//div[contains(.,'Additional Information')]//input[@value="no" and contains(@name, "data[sr_ic_restricted_business_activities]")]

${Business_Activity_Exceptions_ID}          xpath=//div[contains(.,'Additional Information')]//select[@name="data[sr_ic_business_activity_exceptions]"]/parent::div[contains(@class, "form-control ui fluid selection dropdown")]//input

&{Cyber_Losshistory_Events_Values}          Yes=//div[contains(.,'Additional Information')]//input[@value="yes" and contains(@name, "data[sr_cybr_losshistory_events_date_and_sr_cybr_losshistory_events_cost]")]                                                                                                                                      No=//div[contains(.,'Additional Information')]//input[@value="no" and contains(@name, "data[sr_cybr_losshistory_events_date_and_sr_cybr_losshistory_events_cost]")]

&{Cyber_Losshistory_Risks_Values}           Yes=//div[contains(.,'Additional Information')]//input[@value="yes" and contains(@name, "data[sr_cybr_losshistory_risks]")]                                             No=//div[contains(.,'Additional Information')]//input[@value="no" and contains(@name, "data[sr_cybr_losshistory_risks]")]

${Cybr_Losshistory_Risks_Description_ID}    xpath=//div[contains(.,'Additional Information')]//textarea[contains(@name, "data[sr_cybr_losshistory_risks_description]")]

*** Keywords ***
Verify the At-Bay form loaded
    Wait For Elements State                                                         ${At_Bay_Form}
    Focus                                                                           ${At_Bay_Form}

Verify the Form Contains Additional Information Panel
    Wait For Elements State                                                         ${Additional_Information_Panel_ID}

Does the Applicant store or process personal, health, or credit card information of more than 500,000 individuals?
    [Arguments]                                                                     ${Value}
    ${Cyber_Applicant_Info_Value}                   Get From Dictionary             ${Cyber_Applicant_Info_Values}                  ${Value}
    Click                                                                           ${Cyber_Applicant_Info_Value}

Is the applicant engaged in any business activities related to adult content, cannabis, cryptocurrency or blockchain, debt collection, gambling, managed IT, or payment processing?
    [Arguments]                                                                     ${Value}
    ${Restricted_Business_Activities_Value}         Get From Dictionary             ${Restricted_Business_Activities_Values}        ${Value}
    Click                                                                           ${Restricted_Business_Activities_Value}
    ${count}                                        Browser.Get Element Count       ${Business_Activity_Exceptions_ID}
    IF    ${count} != 0
       Wait For Elements State                                                      ${Business_Activity_Exceptions_ID}
    END

Please select all that apply:
    [Arguments]                                                                     @{Values}
    FOR    ${Value}    IN    @{Values}
        Clear Text                                                                  ${Business_Activity_Exceptions_ID}
        Type Text                                                                   ${Business_Activity_Exceptions_ID}              ${Value}
        Keyboard Key                                                                Press                                           Enter
    END

In the last three years, has the Applicant experienced more than 10,000 of Cyber Events, Losses, or been the subject of Claims made for Wrongful Acts that would fall within the scope of the Policy for which the Applicant is applying?
    [Arguments]                                                                     ${Value}
    ${Cyber_Losshistory_Events_Value}               Get From Dictionary             ${Cyber_Losshistory_Events_Values}              ${Value}
    Click                                                                           ${Cyber_Losshistory_Events_Value}


Is the Applicant aware of any fact, circumstance, situation, event, or Wrongful Act which reasonably could give rise to a Cyber Event, Loss?
    [Arguments]                                                                     ${Value}
    ${Cyber_Losshistory_Risks_Value}                Get From Dictionary             ${Cyber_Losshistory_Risks_Values}               ${Value}
    Click                                                                           ${Cyber_Losshistory_Risks_Value}
    ${count}                                        Browser.Get Element Count       ${Cybr_Losshistory_Risks_Description_ID}
    IF    ${count} != 0
        Wait For Elements State                                                     ${Cybr_Losshistory_Risks_Description_ID}
    END

Description of known fact, circumstance, situation, event, or Wrongful Act:
    [Arguments]                                                                     ${Value}
    Type Text                                                                       ${Cybr_Losshistory_Risks_Description_ID}        ${Value}
