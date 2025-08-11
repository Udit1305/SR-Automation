*** Settings ***
#Cyber Resources:
#Resource                                                            ../Resources/PO/SR Agent Panel/Start-Application_Panel/Select_Industry_and_Product_Page.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Start-Application_Panel/Check_Eligibility_Page.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Start-Application_Panel/Select_Carrier_Page.robot
Resource                                                            ../Resources/PO/SR Agent Panel/CommonElements.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Cyber/Indication_Common_Form.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Cyber/Indication_Carrier_Form/Cowbell_Indication_Carrier_Form.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Cyber/Quote_Common_Form.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Cyber/Quote_Carrier_Form/At-Bay_Quote_Carrier_Form.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Cyber/Quote_Carrier_Form/Cowbell_Quote_Carrier_Form.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Cyber/Quote_Carrier_Form/Dual_Quote_Carrier_Form.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Cyber/Zoho_Signature_Process.robot

*** Variables ***
*** Comments ***
Below are the Start Application Panel Fields Keyword

*** Keywords ***
Check Eligibility.What was the business' revenue the past 12 months?:
    [Arguments]                                                                         ${Value}
    Check_Eligibility_Page.Provide Business Revenue                                     ${Value}

Check Eligibility.What is your state of primary operation?:
    [Arguments]                                                                         ${Value}
    Check_Eligibility_Page.Select State from dropdown                                   ${Value}



    
#======================================================================================================================
#**********************************************************************************************************************
#======================================================================================================================

*** Comments ***
Below are the Cyber indication Common Form Fields Keyword

*** Keywords ***
#Test Radio Button
#    [Arguments]                                                 ${Has_Website}
#    Indication_Common_Form.Select Has Website Radio Button      ${Has_Website}

Indication_Common.Verify Indication Common Information form loaded Successfully
    CommonElements.Verify Data Collection Tab Loaded
    CommonElements.Verify Common Form loaded
    Indication_Common_Form.Verify the Form Contains Basic Information Panel
    Indication_Common_Form.Verify the Form Contains General Information Panel

Indication_Common.Provide Insured Company Name
    [Arguments]                                                                         ${Insured_Comp_Name}
    Indication_Common_Form.Enter Insured Company Name                                   ${Insured_Comp_Name}

Indication_Common.Provide Coverage Effective Date
    [Arguments]                                                                         ${Coverage_Effective_Date}
    Indication_Common_Form.Enter Coverage Effective Date                                ${Coverage_Effective_Date}

Indication_Common.Provide Google Address
    [Arguments]                                                                         ${Google_Address}
    Indication_Common_Form.Enter Google Address                                         ${Google_Address}

Indication_Common.Check Don't see your address checkbox
    Indication_Common_Form.Check Don't See Your Address Checkbox

Indication_Common.Uncheck Don't see your address checkbox
    Indication_Common_Form.Uncheck Don't See Your Address Checkbox
    
Indication_Common.Check/Uncheck Don't see your address checkbox
    [Arguments]                                                                         ${Value}
    IF    ${Value} == "Check" or ${Value} == "check" or ${Value} == "Yes" or ${Value} == "yes" or ${Value} == "YES"
        Check Don't see your address checkbox
    ELSE IF     ${Value} == "Uncheck" or ${Value} == "uncheck" or ${Value} == "No" or ${Value} == "no" or or ${Value} == "NO"
        Uncheck Don't see your address checkbox
    ELSE
        Log    "You Selected Invalid Input Value, so the Default value will be selected as 'checked'"
        Check Don't See Your Address Checkbox
    END

Indication_Common.Provide Address Details
    [Arguments]                                                                         ${Address_Line1}    ${Address_Line2}    ${City}     ${County}     ${State}    ${Zip}
    Indication_Common_Form.Fill Address Details                                         ${Address_Line1}    ${Address_Line2}    ${City}     ${County}     ${State}    ${Zip}

Indication_Common.Select Coverage Deductible
    [Arguments]                                                                         ${Coverage_Deductible}
    Indication_Common_Form.Select value from Coverage Deductible dropdown               ${Coverage_Deductible}

Indication_Common.Select NAICS Code
    [Arguments]                                                                         ${NAICS_Code}
    Indication_Common_Form.Select value from NAICS Code dropdown                        ${NAICS_Code}

Indication_Common.Click on Radio Button of Applicant Have a Website
    [Arguments]                                                                         ${Has_Website}
    Indication_Common_Form.Select Applicant Have a Website                              ${Has_Website}

Indication_Common.Enter Website Detail
    [Arguments]                                                                         ${Domain}
    Indication_Common_Form.Enter Domain                                                 ${Domain}

Indication_Common.Click on Add Domain Button
    Indication_Common_Form.Click Add Domain Button

Indication_Common.Click on Remove Domain Button
    Indication_Common_Form.Click Remove Domain Button

Indication_Common.Provide Last Year Revenue
    [Arguments]                                                                         ${Last_Year_Revenue}
    Indication_Common_Form.Enter Last Year Revenue                                      ${Last_Year_Revenue}

Indication_Common.Provide Contact Person Phone Number
    [Arguments]                                                                         ${Contact_Person_Phone}
    Indication_Common_Form.Enter Contact Person Phone Number                            ${Contact_Person_Phone}

Indication_Common.Select Coverage Limit
    [Arguments]                                                                         ${Coverage_Limit}
    Indication_Common_Form.Select value from Coverage Limit dropdown                    ${Coverage_Limit}

#======================================================================================================================
#**********************************************************************************************************************
#======================================================================================================================

*** Comments ***
Below are the Cyber Cowbell Indication Form Fields Keyword

*** Keywords ***
Cowbell_Indication_Form.Verify Cowbell form loaded successfully
    CommonElements.Verify Data Collection Tab Loaded
    Cowbell_Indication_Carrier_Form.Verify the Cowbell form loaded
    Cowbell_Indication_Carrier_Form.Verify the Form Contains Additional Information Panel

Cowbell_Indication_Form.Provide Number of Employees
    [Arguments]                                                                         ${Number_Of_Employees}
    Cowbell_Indication_Carrier_Form.Enter Number Of Employees                           ${Number_Of_Employees}

Cowbell_Indication_Form.Select Company Type as
    [Arguments]                                                                         ${Company_Type}
    Cowbell_Indication_Carrier_Form.Select value from Company Type dropdown             ${Company_Type}

#======================================================================================================================
#**********************************************************************************************************************
#======================================================================================================================

*** Comments ***
Below are the Cyber Quote Common Form Fields Keyword

*** Keywords ***
Quote_Common.Verify Quote Common Information form loaded Successfully
    CommonElements.Verify Prepare Application Tab Loaded
    CommonElements.Verify Common Form loaded
    Quote_Common_Form.Verify the Form Contains Contact Person Information Panel
    Quote_Common_Form.Verify the Form Contains Additional Information Panel

Quote_Common.Provide Contact Person First Name in the Contact Person tab
    [Arguments]                                                                         ${First_name}
    Quote_Common_Form.Fill Contact Person First Name                                    ${First_name}

Quote_Common.Provide Contact Person Last Name in the Contact Person tab
    [Arguments]                                                                         ${Last_name}
    Quote_Common_Form.Fill Contact Person First Name                                    ${Last_name}

Quote_Common.Provide Contact Person Phone Number in the Contact Person tab
    [Arguments]                                                                         ${Phone_Number}
    Quote_Common_Form.Fill Contact Person Phone Number                                  ${Phone_Number}

Quote_Common.Provide Contact Person Email in the Contact Person tab
    [Arguments]                                                                         ${Email}
    Quote_Common_Form.Fill Contact Person Email                                         ${Email}

Quote_Common.Fill Contact Person Details
    [Arguments]                                                                         ${First_name}       ${Last_name}        ${Phone_Number}     ${Email}
    Quote_Common.Provide Contact Person First Name in the Contact Person tab            ${First_name}
    Quote_Common.Provide Contact Person Last Name in the Contact Person tab             ${Last_name}
    Quote_Common.Provide Contact Person Phone Number in the Contact Person tab          ${Phone_Number}
    Quote_Common.Provide Contact Person Email in the Contact Person tab                 ${Email}

Quote_Common.Select Operating Countries
    [Arguments]                                                                         @{Countries}
    Quote_Common_Form.Open Country Dropdown and select Countries                        @{Countries}

Quote_Common.Select "Does the Applicant keep offline backups?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Quote_Common_Form.Does the Applicant keep offline backups?                          ${Value}

Quote_Common.Select "Does the Applicant encrypt all sensitive information at rest?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Quote_Common_Form.Does the Applicant encrypt all sensitive information at rest?     ${Value}

Quote_Common.Select "Does the Applicant have multi-factor authentication?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Quote_Common_Form.Does the Applicant have multi-factor authentication?              ${Value}

Quote_Common.Select "Do you use cloud-based email services?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Quote_Common_Form.Do you use cloud-based email services?                            ${Value}

Quote_Common.Select "Received a claim or complaint regarding privacy, data protection or network security?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Quote_Common_Form.Received a claim or complaint regarding privacy, data protection or network security?    ${Value}

Quote_Common.Provide Claim Details when Question: "Received a claim or complaint regarding privacy, data protection or network security?" is selected as "Yes":
    [Arguments]                                                                         ${Date}    ${Financial_Costs}    ${Description}
    Quote_Common_Form.Add Claim Details for Question: "Received a claim or complaint regarding privacy, data protection or network security?"    ${Date}    ${Financial_Costs}    ${Description}

Quote_Common.Click on "Cancel" Button of Claim Details Grid of Quoestion: "Received a claim or complaint regarding privacy, data protection or network security?":
    Quote_Common_Form.Cancel Claim Detail for Question: "Received a claim or complaint regarding privacy, data protection or network security?"

Quote_Common.Click on "Add Another" Button of Claim Details Grid of Question: "Received a claim or complaint regarding privacy, data protection or network security?":
    Quote_Common_Form.Add Another Claim Detail for Question: "Received a claim or complaint regarding privacy, data protection or network security?"

#======================================================================================================================
#**********************************************************************************************************************
#======================================================================================================================

*** Comments ***
Below are the Cyber At-Bay Quote Form Fields Keyword

*** Keywords ***
At-Bay_Quote_Form.Verify At-Bay Quote Carrier form loaded Successfully
    CommonElements.Verify Prepare Application Tab Loaded
    At-Bay_Quote_Carrier_Form.Verify the At-Bay form loaded
    At-Bay_Quote_Carrier_Form.Verify the Form Contains Additional Information Panel

At-Bay_Quote_Form.Select "Does the Applicant store or process personal, health, or credit card information of more than 500,000 individuals?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    At-Bay_Quote_Carrier_Form.Does the Applicant store or process personal, health, or credit card information of more than 500,000 individuals?    ${Value}

At-Bay_Quote_Form.Select "Is the applicant engaged in any business activities related to adult content, cannabis, cryptocurrency or blockchain, debt collection, gambling, managed IT, or payment processing?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    At-Bay_Quote_Carrier_Form.Is the applicant engaged in any business activities related to adult content, cannabis, cryptocurrency or blockchain, debt collection, gambling, managed IT, or payment processing?                                       ${Value}

At-Bay_Quote_Form.Select "Please select all that apply:" As:
    [Arguments]                                                                         @{Values}
    At-Bay_Quote_Carrier_Form.Please select all that apply:                             @{Values}

At-Bay_Quote_Form.Select "In the last three years, has the Applicant experienced more than $10,000 of Cyber Events, Losses, or been the subject of Claims made for Wrongful Acts that would fall within the scope of the Policy for which the Applicant is applying?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    At-Bay_Quote_Carrier_Form.In the last three years, has the Applicant experienced more than 10,000 of Cyber Events, Losses, or been the subject of Claims made for Wrongful Acts that would fall within the scope of the Policy for which the Applicant is applying?    ${Value}

At-Bay_Quote_Form.Select "Is the Applicant aware of any fact, circumstance, situation, event, or Wrongful Act which reasonably could give rise to a Cyber Event, Loss?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    At-Bay_Quote_Carrier_Form.Is the Applicant aware of any fact, circumstance, situation, event, or Wrongful Act which reasonably could give rise to a Cyber Event, Loss?                                                                              ${Value}

At-Bay_Quote_Form.Provide "Description of known fact, circumstance, situation, event, or Wrongful Act:" As:
    [Arguments]                                                                         ${Value}
    At-Bay_Quote_Carrier_Form.Description of known fact, circumstance, situation, event, or Wrongful Act:    ${Value}

#======================================================================================================================
#**********************************************************************************************************************
#======================================================================================================================

*** Comments ***
Below are the Cyber Cowbell Quote Form Fields Keyword

*** Keywords ***
Cowbell_Quote_Form.Verify Cowbell Quote Carrier form loaded Successfully
    CommonElements.Verify Prepare Application Tab Loaded
    Cowbell_Quote_Carrier_Form.Verify the Cowbell form loaded
    Cowbell_Quote_Carrier_Form.Verify the Form Contains Extra Additional Questions Panel

Cowbell_Quote_Form.Provide Customer Email:
    [Arguments]                                                                         ${Email}
    Cowbell_Quote_Carrier_Form.Fill Customer Email                                      ${Email}

Cowbell_Quote_Form.Provide Year Business Established:
    [Arguments]                                                                         ${Year}
    Cowbell_Quote_Carrier_Form.Fill Year Business Established                           ${Year}

Cowbell_Quote_Form.Select "Does the policyholder agree to be the Designated Information Security Contact?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Cowbell_Quote_Carrier_Form.Does the policyholder agree to be the Designated Information Security Contact?       ${Value}

Cowbell_Quote_Form.Select "Does policyholder provide mandatory information security training to all employees at least annually?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Cowbell_Quote_Carrier_Form.Does policyholder provide mandatory information security training to all employees at least annually?    ${Value}

Cowbell_Quote_Form.Select "Do policy holder employees authenticate funds transfer requests?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Cowbell_Quote_Carrier_Form.Do policy holder employees authenticate funds transfer requests?     ${Value}

Cowbell_Quote_Form.Select "Do policy holder employees prevent unauthorized employees from initiating wire transfers?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Cowbell_Quote_Carrier_Form.Do policy holder employees prevent unauthorized employees from initiating wire transfers?    ${Value}

Cowbell_Quote_Form.Select "Do policy holder employees verify vendor/supplier bank accounts before adding to accounts payable systems?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Cowbell_Quote_Carrier_Form.Do policy holder employees verify vendor/supplier bank accounts before adding to accounts payable systems?   ${Value}

#======================================================================================================================
#**********************************************************************************************************************
#======================================================================================================================

*** Comments ***
Below are the Cyber Dual Quote Form Fields Keyword

*** Keywords ***

Dual_Quote_Form.Verify Dual Quote Carrier form loaded Successfully
    CommonElements.Verify Prepare Application Tab Loaded
    Dual_Quote_Carrier_Form.Verify the Dual form loaded
    Dual_Quote_Carrier_Form.Verify the Form Contains Additional Info & Security Questions Panel
    Dual_Quote_Carrier_Form.Verify the Form Contains Historical Questions Panel
    Dual_Quote_Carrier_Form.Verify the Form Contains Discounts Credits and Coverages Panel

Dual_Quote_Form.Provide Subsidiaries
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Add Subsidiaries                                            ${Value}

Dual_Quote_Form.Remove Subsidiaries
    Dual_Quote_Carrier_Form.Remove Subsidaries

Dual_Quote_Form.Select "Are all your systems running the most up to date Operating System?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Are all your systems running the most up to date Operating System?      ${Value}

Dual_Quote_Form.Select "Do you protect all of your devices with anti-virus?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Do you protect all of your devices with anti-virus?         ${Value}

Dual_Quote_Form.Select "Do you scan all incoming emails for malicious attachments and/or links?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Do you scan all incoming emails for malicious attachments and/or links?     ${Value}

Dual_Quote_Form.Select "Do you allow remote access to your network?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Do you allow remote access to your network?                 ${Value}

Dual_Quote_Form.Select "Do you require multi-factor authentication (MFA) for all remote connections?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Do you require multi-factor authentication (MFA) for all remote connections?    ${Value}

Dual_Quote_Form.Select "Have you taken measures to ensure that you comply with all privacy and data protection laws and regulations that apply to your organisation?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Have you taken measures to ensure that you comply with all privacy and data protection laws and regulations that apply to your organisation?    ${Value}

Dual_Quote_Form.Select "Are firewalls installed at all gateways and configured to block inbound connections by default?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Are firewalls installed at all gateways and configured to block inbound connections by default?     ${Value}

Dual_Quote_Form.Select "Have you disabled all Remote Desktop Protocol (RDP) ports?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Have you disabled all Remote Desktop Protocol (RDP) ports?      ${Value}

Dual_Quote_Form.Select "Have you taken measures to ensure that your organisation’s website and print content do not infringe on any trademarks or copyrights?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Have you taken measures to ensure that your organisation’s website and print content do not infringe on any trademarks or copyrights?   ${Value}

Dual_Quote_Form.Select "Are access controls employed using the principle of least privilege?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Are access controls employed using the principle of least privilege?    ${Value}

Dual_Quote_Form.Select "Have you tested the successful restoration and recovery of key server configurations and data from backups in the last 6 months?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Have you tested the successful restoration and recovery of key server configurations and data from backups in the last 6 months?    ${Value}

Dual_Quote_Form.Provide "Please add any additional commentary/clarifications to answers provided here" As:
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Please add any additional commentary/clarifications to answers provided here:   ${Value}

Dual_Quote_Form.Select "Experienced a network outage that resulted in a significant disruption to your operations?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Experienced a network outage that resulted in a significant disruption to your operations?      ${Value}

Dual_Quote_Form.Provide Claim Details when Question: "Experienced a network outage that resulted in a significant disruption to your operations?" is selected as "Yes":
    [Arguments]                                                                         ${Date}    ${Financial_Costs}    ${Description}
    Dual_Quote_Carrier_Form.Add Claim Details for Question: "Experienced a network outage that resulted in a significant disruption to your operations?"    ${Date}    ${Financial_Costs}    ${Description}

Dual_Quote_Form.Click on "Cancel" Button of Claim Details Grid of Quoestion: "Experienced a network outage that resulted in a significant disruption to your operations?":
    Dual_Quote_Carrier_Form.Cancel Claim Detail for Question: "Experienced a network outage that resulted in a significant disruption to your operations?"

Dual_Quote_Form.Click on "Add Another" Button of Claim Details Grid of Question: "Experienced a network outage that resulted in a significant disruption to your operations?":
    Dual_Quote_Carrier_Form.Add Another Claim Detail for Question: "Experienced a network outage that resulted in a significant disruption to your operations?"

Dual_Quote_Form.Select "Received an extortion demand relating to your data and/or computer systems?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Received an extortion demand relating to your data and/or computer systems?      ${Value}

Dual_Quote_Form.Provide Claim Details when Question: "Received an extortion demand relating to your data and/or computer systems?" is selected as "Yes":
    [Arguments]                                                                         ${Date}    ${Financial_Costs}    ${Description}
    Dual_Quote_Carrier_Form.Add Claim Details for Question: "Received an extortion demand relating to your data and/or computer systems?"    ${Date}    ${Financial_Costs}    ${Description}

Dual_Quote_Form.Click on "Cancel" Button of Claim Details Grid of Quoestion: "Received an extortion demand relating to your data and/or computer systems?":
    Dual_Quote_Carrier_Form.Cancel Claim Detail for Question: "Received an extortion demand relating to your data and/or computer systems?"

Dual_Quote_Form.Click on "Add Another" Button of Claim Details Grid of Question: "Received an extortion demand relating to your data and/or computer systems?":
    Dual_Quote_Carrier_Form.Add Another Claim Detail for Question: "Received an extortion demand relating to your data and/or computer systems?"

Dual_Quote_Form.Select "Notified any persons of a privacy violation and/or data breach incident?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Notified any persons of a privacy violation and/or data breach incident?        ${Value}

Dual_Quote_Form.Provide Claim Details when Question: "Notified any persons of a privacy violation and/or data breach incident?" is selected as "Yes":
    [Arguments]                                                                         ${Date}    ${Financial_Costs}    ${Description}
    Dual_Quote_Carrier_Form.Add Claim Details for Question: "Notified any persons of a privacy violation and/or data breach incident?"    ${Date}    ${Financial_Costs}    ${Description}

Dual_Quote_Form.Click on "Cancel" Button of Claim Details Grid of Quoestion: "Notified any persons of a privacy violation and/or data breach incident?":
    Dual_Quote_Carrier_Form.Cancel Claim Detail for Question: "Notified any persons of a privacy violation and/or data breach incident?"

Dual_Quote_Form.Click on "Add Another" Button of Claim Details Grid of Question: "Notified any persons of a privacy violation and/or data breach incident?":
    Dual_Quote_Carrier_Form.Add Another Claim Detail for Question: "Notified any persons of a privacy violation and/or data breach incident?"

Dual_Quote_Form.Select "Received a complaint or cease and desist demand alleging intellectual property infringement?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Received a complaint or cease and desist demand alleging intellectual property infringement?    ${Value}

Dual_Quote_Form.Provide Claim Details when Question: "Received a complaint or cease and desist demand alleging intellectual property infringement?" is selected as "Yes":
    [Arguments]                                                                         ${Date}    ${Financial_Costs}    ${Description}
    Dual_Quote_Carrier_Form.Add Claim Details for Question: "Received a complaint or cease and desist demand alleging intellectual property infringement?"    ${Date}    ${Financial_Costs}    ${Description}

Dual_Quote_Form.Click on "Cancel" Button of Claim Details Grid of Quoestion: "Received a complaint or cease and desist demand alleging intellectual property infringement?":
    Dual_Quote_Carrier_Form.Cancel Claim Detail for Question: "Received a complaint or cease and desist demand alleging intellectual property infringement?"

Dual_Quote_Form.Click on "Add Another" Button of Claim Details Grid of Question: "Received a complaint or cease and desist demand alleging intellectual property infringement?":
    Dual_Quote_Carrier_Form.Add Another Claim Detail for Question: "Received a complaint or cease and desist demand alleging intellectual property infringement?"

Dual_Quote_Form.Select "Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?     ${Value}

Dual_Quote_Form.Provide Claim Details when Question: "Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?" is selected as "Yes":
    [Arguments]                                                                         ${Date}    ${Financial_Costs}    ${Description}
    Dual_Quote_Carrier_Form.Add Claim Details for Question: "Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?"    ${Date}    ${Financial_Costs}    ${Description}

Dual_Quote_Form.Click on "Cancel" Button of Claim Details Grid of Quoestion: "Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?":
    Dual_Quote_Carrier_Form.Cancel Claim Detail for Question: "Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?"

Dual_Quote_Form.Click on "Add Another" Button of Claim Details Grid of Question: "Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?":
    Dual_Quote_Carrier_Form.Add Another Claim Detail for Question: "Been subject to any government or regulatory investigation regarding an alleged violation of privacy and/or data protection legislation/regulation?"

Dual_Quote_Form.Select "Does the Insured have any Advanced Security (EDR, MDR, XDR, etc.) tools?" As(Yes/No):
    [Arguments]                                                                         ${Value}
    Dual_Quote_Carrier_Form.Does the Insured have any Advanced Security (EDR, MDR, XDR, etc.) tools?        ${Value}

Dual_Quote_Form.Provide "If yes, please describe the Advanced Security tools utilized:" As:
    [Arguments]                                                                         ${Value}
    If yes, please describe the Advanced Security tools utilized:                       ${Value}

#======================================================================================================================
#**********************************************************************************************************************
#======================================================================================================================
*** Comments ***
Below are the Cyber At-Bay Signature Fields Keyword

*** Keywords ***
At-Bay.Signature.Provide Producer Name
    [Arguments]                                                                         ${Value}
    At-Bay_Signature.Fill Producer Name                                                 ${Value}

At-Bay.Signature.Provide License Number
    [Arguments]                                                                         ${Value}
    At-Bay_Signature.Fill License Number                                                ${Value}

At-Bay.Signature.Provide Agency Name
    [Arguments]                                                                         ${Value}
    At-Bay_Signature.Fill Agency                                                        ${Value}

At-Bay.Signature.Provide Email
    [Arguments]                                                                         ${Value}
    At-Bay_Signature.Fill Email                                                         ${Value}

At-Bay.Signature.Provide Phone
    [Arguments]                                                                         ${Value}
    At-Bay_Signature.Fill Phone                                                         ${Value}

At-Bay.Signature.Provide Producer name, License Number, Agency Name, Email & Phone Number:
    [Arguments]                                                                         ${Producer_Name}    ${License_Number}   ${Agency_Name}  ${Email}    ${Phone_Number}
    At-Bay.Signature.Provide Producer Name                                              ${Producer_Name}
    At-Bay.Signature.Provide License Number                                             ${License_Number}
    At-Bay.Signature.Provide Agency Name                                                ${Agency_Name}
    At-Bay.Signature.Provide Email                                                      ${Email}
    At-Bay.Signature.Provide Phone                                                      ${Phone_Number}

#======================================================================================================================
#**********************************************************************************************************************
#======================================================================================================================