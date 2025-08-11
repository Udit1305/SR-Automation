*** Settings ***
Library                                         Browser
Library                                         ../../../../SR_Custom_Library/SrCustomLib.py
Library                                         Collections
#Library                                         Screenshot

*** Variables ***
${Forms_Heading}                                xpath=//div[@class="container wizard-nav-container"]/child::div[@class="step active"]//div[contains(text(),'Common Information')]
${Data_Collection_Tab}                          xpath=//span[contains(@class, 'MuiStepLabel-label Mui-active') and normalize-space() = 'Data Collection']
${Select_Indication_Tab}                        xpath=//span[contains(@class, 'MuiStepLabel-label Mui-active') and normalize-space() = 'Select Indication']
${NoIndicationAdded_Text}                       No Indication Selected
${Indication_Selection_Info1}                   Select Indication to proceed further
${Indication_Selection_Info2}                   You can select multiple indications to submit for quote
${Carrier_Grid}                                 xpath=//div[contains(@class, 'MuiGrid-root MuiGrid-container MuiGrid-grid-xs')]
&{Fetching_Quote_Carriers}                      Dual=//div[contains(@data-qa, "Dual")]//p[normalize-space()='Fetching Quote']                                                                                          At-Bay=//div[contains(@data-qa, "At-Bay")]//p[normalize-space()='Fetching Quote']                                                                                      Cowbell=//div[contains(@data-qa, "Cowbell")]//p[normalize-space()='Fetching Quote']                                                                                    Poulton=//div[contains(@data-qa, "Poulton")]//p[normalize-space()='Fetching Quote']                                                                                    Neptune=//div[contains(@data-qa, "Neptune")]//p[normalize-space()='Fetching Quote']                                                                                    Argo=//div[contains(@data-qa, "Argo")]//p[normalize-space()='Fetching Quote']                                                                                          Brit=//div[contains(@data-qa, "Brit")]//p[normalize-space()='Fetching Quote']                                                                                          Chauser=//div[contains(@data-qa, "Chauser")]//p[normalize-space()='Fetching Quote']                                                                                    Chubb=//div[contains(@data-qa, "Chubb")]//p[normalize-space()='Fetching Quote']                                                                                        Hiscox=//div[contains(@data-qa, "Hiscox")]//p[normalize-space()='Fetching Quote']                                                                                      Vave=//div[contains(@data-qa, "Vave")]//p[normalize-space()='Fetching Quote']                                                                                          Amtrust=//div[contains(@data-qa, "Amtrust")]//p[normalize-space()='Fetching Quote']                                                                                    CoveRisk=//div[contains(@data-qa, "CoveRisk")]//p[normalize-space()='Fetching Quote']                                                                                  Employers=//div[contains(@data-qa, "Employers")]//p[normalize-space()='Fetching Quote']                                                                                Midwestern=//div[contains(@data-qa, "Midwestern")]//p[normalize-space()='Fetching Quote']                                                                              HighView=//div[contains(@data-qa, "HighView")]//p[normalize-space()='Fetching Quote']                                                                                  Blitz=//div[contains(@data-qa, "Blitz")]//p[normalize-space()='Fetching Quote']
&{Select_Indication_Buttons_ID}                 Dual=//div[contains(@data-qa, "DUAL")]//button[@data-qa='Select Indication']                                                                                           At-Bay=//div[contains(@data-qa, "At-Bay")]//button[@data-qa='Select Indication']                                                                                       Cowbell=//div[contains(@data-qa, "Cowbell")]//button[@data-qa='Select Indication']                                                                                     Poulton=//div[contains(@data-qa, "Poulton")]//button[@data-qa='Select Indication']                                                                                     Neptune=//div[contains(@data-qa, "Neptune")]//button[@data-qa='Select Indication']                                                                                     Argo=//div[contains(@data-qa, "Argo")]//button[@data-qa='Select Indication']                                                                                           Brit=//div[contains(@data-qa, "Brit")]//button[@data-qa='Select Indication']                                                                                           Chauser=//div[contains(@data-qa, "Chauser")]//button[@data-qa='Select Indication']                                                                                     Chubb=//div[contains(@data-qa, "Chubb")]//button[@data-qa='Select Indication']                                                                                         Hiscox=//div[contains(@data-qa, "Hiscox")]//button[@data-qa='Select Indication']                                                                                       Vave=//div[contains(@data-qa, "Vave")]//button[@data-qa='Select Indication']                                                                                           Amtrust=//div[contains(@data-qa, "Amtrust")]//button[@data-qa='Select Indication']                                                                                     CoveRisk=//div[contains(@data-qa, "CoveRisk")]//button[@data-qa='Select Indication']                                                                                   Employers=//div[contains(@data-qa, "Employers")]//button[@data-qa='Select Indication']                                                                                 Midwestern=//div[contains(@data-qa, "Midwestern")]//button[@data-qa='Select Indication']                                                                               HighView=//div[contains(@data-qa, "HighView")]//button[@data-qa='Select Indication']                                                                                   Blitz=//div[contains(@data-qa, "Blitz")]//button[@data-qa='Select Indication']
&{Not_Eligible_Quotes_ID}                       Dual=//div[contains(@data-qa, "Dual")]//p[normalize-space()='Not Eligible']                                                                                            At-Bay=//div[contains(@data-qa, "At-Bay")]//p[normalize-space()='Not Eligible']                                                                                        Cowbell=//div[contains(@data-qa, "Cowbell")]//p[normalize-space()='Not Eligible']                                                                                      Poulton=//div[contains(@data-qa, "Poulton")]//p[normalize-space()='Not Eligible']                                                                                      Neptune=//div[contains(@data-qa, "Neptune")]//p[normalize-space()='Not Eligible']                                                                                      Argo=//div[contains(@data-qa, "Argo")]//p[normalize-space()='Not Eligible']                                                                                            Brit=//div[contains(@data-qa, "Brit")]//p[normalize-space()='Not Eligible']                                                                                            Chauser=//div[contains(@data-qa, "Chauser")]//p[normalize-space()='Not Eligible']                                                                                      Chubb=//div[contains(@data-qa, "Chubb")]//p[normalize-space()='Not Eligible']                                                                                          Hiscox=//div[contains(@data-qa, "Hiscox")]//p[normalize-space()='Not Eligible']                                                                                        Vave=//div[contains(@data-qa, "Vave")]//p[normalize-space()='Not Eligible']                                                                                            Amtrust=//div[contains(@data-qa, "Amtrust")]//p[normalize-space()='Not Eligible']                                                                                      CoveRisk=//div[contains(@data-qa, "CoveRisk")]//p[normalize-space()='Not Eligible']                                                                                    Employers=//div[contains(@data-qa, "Employers")]//p[normalize-space()='Not Eligible']                                                                                  Midwestern=//div[contains(@data-qa, "Midwestern")]//p[normalize-space()='Not Eligible']                                                                                HighView=//div[contains(@data-qa, "HighView")]//p[normalize-space()='Not Eligible']                                                                                    Blitz=//div[contains(@data-qa, "Blitz")]//p[normalize-space()='Not Eligible']
&{Selected_Icons_IDs}                           Dual=//div[contains(@data-qa, "DUAL")]//p[@data-qa="Selected"]                                                                                                         Cowbell=//div[contains(@data-qa, "Cowbell")]//p[@data-qa="Selected"]                                                                                                   At-Bay=//div[contains(@data-qa, "At-Bay")]//p[@data-qa="Selected"]                                                                                                     Poulton=//div[contains(@data-qa, "Poulton")]//p[@data-qa="Selected"]                                                                                                   Neptune=//div[contains(@data-qa, "Neptune")]//p[@data-qa="Selected"]                                                                                                   Argo=//div[contains(@data-qa, "Argo")]//p[@data-qa="Selected"]                                                                                                         Brit=//div[contains(@data-qa, "Brit")]//p[@data-qa="Selected"]                                                                                                         Chauser=//div[contains(@data-qa, "Chauser")]//p[@data-qa="Selected"]                                                                                                   Chubb=//div[contains(@data-qa, "Chubb")]//p[@data-qa="Selected"]                                                                                                       Hiscox=//div[contains(@data-qa, "Hiscox")]//p[@data-qa="Selected"]                                                                                                     Vave=//div[contains(@data-qa, "Vave")]//p[@data-qa="Selected"]                                                                                                         Amtrust=//div[contains(@data-qa, "Amtrust")]//p[@data-qa="Selected"]                                                                                                   CoveRisk=//div[contains(@data-qa, "CoveRisk")]//p[@data-qa="Selected"]                                                                                                 Employers=//div[contains(@data-qa, "Employers")]//p[@data-qa="Selected"]                                                                                               Midwestern=//div[contains(@data-qa, "Midwestern")]//p[@data-qa="Selected"]                                                                                             HighView=//div[contains(@data-qa, "HighView")]//p[@data-qa="Selected"]                                                                                                 Blitz=//div[contains(@data-qa, "Blitz")]//p[@data-qa="Selected"]
&{Selected_Indications_IDs}                     Dual=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "DUAL")]                                                       Cowbell=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Cowbell")]                                                 At-Bay=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "At-Bay")]                                                   Poulton=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Poulton")]                                                 Neptune=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Neptune")]                                                 Argo=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Argo")]                                                       Brit=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Brit")]                                                       Chauser=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Chauser")]                                                 Chubb=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Chubb")]                                                     Hiscox=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Hiscox")]                                                   Vave=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Vave")]                                                       Amtrust=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Amtrust")]                                                 CoveRisk=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "CoveRisk")]                                               Employers=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Employers")]                                  Midwestern=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Midwestern")]                                 HighView=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "HighView")]                                               Blitz=//p[.='Selected Indications']/ancestor::div[@class="MuiBox-root css-v2kfba"]//p[contains(@data-qa, "Blitz")]
${Delete_Indication_ID}                         xpath=//div[contains(@data-qa, "Blitz")]//div[@data-qa="delete-button"]
#&{Select_Indication_Buttons}                    Dual=//button[@data-qa='Select Indication']
${Prepare_Application_Tab}                      xpath=//span[contains(@class, 'MuiStepLabel-label Mui-active') and normalize-space() = 'Prepare Application']
${Bind_Quote_Tab}                               xpath=//span[contains(@class, 'MuiStepLabel-label Mui-active') and normalize-space() = 'Bind Quote']
${NoQuoteSelected_Text}                         No Quote Selected
${Quote_Selection_Info1}                        Select Quote/ Click on Continue to Bind button to proceed further.
${Fetching_Quote_Message_ID}                    xpath=//p[text()='Fetching Quote']
${Not_Eligible_Message_ID}                      xpath=//div[@data-qa="Not Eligible"]
${Send_To_Customer_Button}                      xpath=//button[normalize-space()='Send to Customer']
${Get_Indication_Button}                        xpath=//button[@data-qa='Get Indication']
${Form_Next_Button_ID}                          xpath=//button[@data-qa="next-button"]
${Form_Back_Button_ID}                          xpath=//button[@data-qa="back-button"]
${Back_Button_ID}                               xpath=//button[@data-qa='back']
${Submit_to_Quote_Button}                       xpath=//button[@data-qa="Submit to Quote"]
${Proceed_to_Quote_Button}                      xpath=//button[@data-qa='Proceed to Quote']
${Submit_for_Referral_Button}                   xpath=//button[normalize-space()='Submit for Referral']
${Continue_to_bind_Button}                      xpath=//button[@data-qa='Continue to Bind']
${View_Coverage_ID}                             xpath=//p[@data-qa="View Coverages"]
${Hide_Details_ID}                              xpath=//p[@data-qa="Hide Details"]
${Product_Details_ID}                           xpath=//p[@data-qa='Product Details']
${View_Proposal_ID}                             xpath=//p[@data-qa='View Proposal']
${View_Security_Report_ID}                      xpath=//p[@data-qa='View Security Report']
${View_Quote_Document_ID}                       xpath=//p[@data-qa='View Quote Document']
${Make_Payment_Button}                          xpath=//button[normalize-space()='Make Payment']
${Data_Collection_Success_Alert}                xpath=//div[@role='alert']//div[normalize-space()='Data saved successfully']
${Prepare_Application_Success_Alert}            xpath=//div[@role='alert']//div[normalize-space()="Operation successful"]

&{Continue_To_Bind_Buttons_ID}                  Dual=//div[contains(@data-qa, "DUAL")]//button[@data-qa='Continue to Bind']                                                                                            At-Bay=//div[contains(@data-qa, "At-Bay")]//button[@data-qa='Continue to Bind']                                                                                        Cowbell=//div[contains(@data-qa, "Cowbell")]//button[@data-qa='Continue to Bind']                                                                                      Poulton=//div[contains(@data-qa, "Poulton")]//button[@data-qa='Continue to Bind']                                                                                      Neptune=//div[contains(@data-qa, "Neptune")]//button[@data-qa='Continue to Bind']                                                                                      Argo=//div[contains(@data-qa, "Argo")]//button[@data-qa='Continue to Bind']                                                                                            Brit=//div[contains(@data-qa, "Brit")]//button[@data-qa='Continue to Bind']                                                                                            Chauser=//div[contains(@data-qa, "Chauser")]//button[@data-qa='Continue to Bind']                                                                                      Chubb=//div[contains(@data-qa, "Chubb")]//button[@data-qa='Continue to Bind']                                                                                          Hiscox=//div[contains(@data-qa, "Hiscox")]//button[@data-qa='Continue to Bind']                                                                                        Vave=//div[contains(@data-qa, "Vave")]//button[@data-qa='Continue to Bind']                                                                                            Amtrust=//div[contains(@data-qa, "Amtrust")]//button[@data-qa='Continue to Bind']                                                                                      CoveRisk=//div[contains(@data-qa, "CoveRisk")]//button[@data-qa='Continue to Bind']                                                                                    Employers=//div[contains(@data-qa, "Employers")]//button[@data-qa='Continue to Bind']                                                                                  Midwestern=//div[contains(@data-qa, "Midwestern")]//button[@data-qa='Continue to Bind']                                                                                HighView=//div[contains(@data-qa, "HighView")]//button[@data-qa='Continue to Bind']                                                                                    Blitz=//div[contains(@data-qa, "Blitz")]//button[@data-qa='Continue to Bind']

${Process_Bind_Order_Button}                    xpath=//button[@data-qa="Process Bind Order"]
${Download_Policy_Tab}                          xpath=//span[contains(@class, 'MuiStepLabel-label Mui-active') and normalize-space() = 'Download Policy']


#${Add_To_Proposal_CheckBox}                    //input[@type='checkbox' and ancestor::*//*[text()='Add to Proposal']]

*** Keywords ***
Verify Common Form loaded
	Wait For Elements State                 ${Forms_Heading}
	Focus                                   ${Forms_Heading}

Verify Data Collection Tab Loaded
	Wait For Elements State                 ${Data_Collection_Tab}
	Focus                                   ${Data_Collection_Tab}

Verify Select Indication Tab Loaded
	Focus                                   ${Select_Indication_Tab}
	Highlight Elements                      ${Select_Indication_Tab}                    duration=4s
    Highlight Elements                      ${Carrier_Grid}                             duration=4s

Verify Select Indication Messages
	Get Element By                          text                                        ${NoIndicationAdded_Text}
	Get Element By                          text                                        ${Indication_Selection_Info1}
	Get Element By                          text                                        ${Indication_Selection_Info2}

Verify Prepare Application Tab Loaded
	Wait For Elements State                 ${Prepare_Application_Tab}
	Focus                                   ${Prepare_Application_Tab}
Verify Review Quote Tab Loaded
	Wait For Elements State                 ${Bind_Quote_Tab}

#Verify Signature Tab Loaded
#	Wait For Elements State                  ${Signature_Tab}
#
#Verify Payment Tab Loaded
#	Wait For Elements State                  ${Payment_Tab}
#
#Verify Download Policy Tab Loaded
#	Wait For Elements State                  ${Download_Policy_Tab}

Click Send to Customer Button
	Click                                   ${Send_To_Customer_Button}

Click Get Indication Button
	Click                                   ${Get_Indication_Button}

Click Form Back Button
	Click                                   ${Form_Back_Button_ID}

Click Form Next Button
	Click                                   ${Form_Next_Button_ID}

Wait for Success Alert on Data Collection
	Browser.Wait For Elements State         ${Data_Collection_Success_Alert}

Click Back Button
	Click                                   ${Back_Button_ID}

Clcik Submit to Quote Button
	Click                                   ${Submit_to_Quote_Button}

Wait for Success Alert on Prepare Application
	Browser.Wait For Elements State         ${Prepare_Application_Success_Alert}

Verify Data Collection or Prepare Application Screen
	${Data_Collection_Value}                Browser.Get Element Count                   ${Data_Collection_Tab}
	Set Global Variable                                                                 ${Data_Collection_Value}
	${Prepare_Application_Value}            Browser.Get Element Count                   ${Prepare_Application_Tab}
    Set Global Variable                                                                 ${Prepare_Application_Value}
    RETURN                                  ${Data_Collection_Value}                    ${Prepare_Application_Value}


Wait for Success Alert
    ${Data_Collection_Value}    ${Prepare_Application_Value}=                           Verify Data Collection or Prepare Application Screen
    IF    ${Data_Collection_Value} != 0
        Wait for Success Alert on Data Collection
    ELSE
        Wait for Success Alert on Prepare Application
    END

Clcik Proceed To Quote Button
	Click                                   ${Proceed_to_Quote_Button}

Clcik Submit for Referral Button
	Click                                   ${Submit_for_Referral_Button}

Click on View Coverage
    Click                                   ${View_Coverage_ID}

Click on Hide Details
    Click                                   ${Hide_Details_ID}

Wait until the Fetching Quote Message disappears
    [Arguments]                             ${quoteCarrier}
    ${Fetching_Quote_Carrier_Count}     ${select_Indication_count}  ${selected_Icon_count}  ${not_Eligible_Count}   ${continue_To_Bind_count}       Get "Fetching Quote", "Select Indication", "Selected", "Not Eligible" & "Continue To Bind" Quotes Count    ${quoteCarrier}
    IF    ${Fetching_Quote_Carrier_Count} == 0
        ${Fetching_Quote_carrier}               Get From Dictionary                     ${Fetching_Quote_Carriers}                              ${quoteCarrier}
        TRY
            Browser.Wait For Condition          Element States                          ${Fetching_Quote_carrier}   ==  detached                timeout=30s
        EXCEPT    TimeoutError: *       type=GLOB       AS  ${Error}
            Log    ${Error}
        EXCEPT    *AssertionError:*     type=GLOB       AS  ${Error}
            Log    ${Error}
        END
        Wait For Load State                     state=domcontentloaded
        ${Select_Indication_Tab_Count}          Browser.Get Element Count               ${Select_Indication_Tab}
        IF    ${Select_Indication_Tab_Count} != 0
            Verify Select Indication Tab Loaded
        ELSE
            Verify Bind Quote Tab Loaded
        END
        #   Screenshot.Take Screenshot
    END

Wait For Not Eligible Quotes
    [Arguments]                             ${quoteCarrier}
    ${Fetching_Quote_Carrier_Count}     ${select_Indication_count}  ${selected_Icon_count}  ${not_Eligible_Count}   ${continue_To_Bind_count}       Get "Fetching Quote", "Select Indication", "Selected", "Not Eligible" & "Continue To Bind" Quotes Count    ${quoteCarrier}
    IF    ${select_Indication_count} == 0 and ${continue_To_Bind_count} == 0 and ${selected_Icon_count} == 0
            TRY
                ${Not_Eligible_Quote}                    Get From Dictionary            ${Not_Eligible_Quotes_ID}                                ${quoteCarrier}
                Wait For Elements State                                                 ${Not_Eligible_Quote}                                    timeout=30s
            EXCEPT    TimeoutError: *       type=GLOB       AS  ${Error}
                Log    ${Error}
            END
    END

Wait For Select Indication Quotes
    [Arguments]                             ${quoteCarrier}
    ${Fetching_Quote_Carrier_Count}     ${select_Indication_count}  ${selected_Icon_count}  ${not_Eligible_Count}   ${continue_To_Bind_count}       Get "Fetching Quote", "Select Indication", "Selected", "Not Eligible" & "Continue To Bind" Quotes Count    ${quoteCarrier}
    IF    ${not_Eligible_Count} == 0 and ${selected_Icon_count} == 0
            TRY
                ${Select_Indication_Button_ID}          Get From Dictionary             ${Select_Indication_Buttons_ID}                          ${quoteCarrier}
                Wait For Elements State                                                 ${Select_Indication_Button_ID}                           timeout=01:00
            EXCEPT    TimeoutError: *       type=GLOB       AS  ${Error}
                Log    ${Error}
            END
    END

Wait For Selected Indication Quotes
    [Arguments]                             ${quoteCarrier}
    ${Fetching_Quote_Carrier_Count}     ${select_Indication_count}  ${selected_Icon_count}  ${not_Eligible_Count}   ${continue_To_Bind_count}       Get "Fetching Quote", "Select Indication", "Selected", "Not Eligible" & "Continue To Bind" Quotes Count    ${quoteCarrier}
    IF    ${select_Indication_count} == 0 and ${not_Eligible_Count} == 0 and ${selected_Icon_count} == 0
        TRY
            ${Selected_Icon_ID}                     Get From Dictionary                 ${Selected_Icons_IDs}                                   ${quoteCarrier}
            Wait For Elements State                                                     ${Selected_Icon_ID}                                     timeout=01:00
        EXCEPT    TimeoutError: *       type=GLOB       AS  ${Error}
            Log    ${Error}
        END
    END

Wait until all quotes get fetched on Select Indicatoin Screen
    [Arguments]                             @{quoteCarriers}
    FOR                                     ${quoteCarrier}     IN                      @{quoteCarriers}
        Run Keyword And Continue On Failure        Wait until the Fetching Quote Message disappears                            ${quoteCarrier}
        Wait For Not Eligible Quotes                                                ${quoteCarrier}
        Wait For Select Indication Quotes                                           ${quoteCarrier}
        Wait For Selected Indication Quotes                                         ${quoteCarrier}
    END

Click "Select Indication" Button and check Selected Indications
    [Arguments]                             @{quoteCarriers}
    FOR     ${quoteCarrier}    IN       @{quoteCarriers}
        ${Fetching_Quote_Carrier_Count}     ${select_Indication_count}  ${selected_Icon_count}  ${not_Eligible_Count}   ${continue_To_Bind_count}       Get "Fetching Quote", "Select Indication", "Selected", "Not Eligible" & "Continue To Bind" Quotes Count    ${quoteCarrier}
        IF  ${select_Indication_count} != 0 and ${not_Eligible_Count} == 0
            ${select_Indication_Button}     Get "Select Indication" Quote ID            ${quoteCarrier}
            Click                           ${select_Indication_Button}
            Verify "Selected" Icon          ${quoteCarrier}
            Verify "Selected Indications"   ${quoteCarrier}
        ELSE IF     ${select_Indication_count} == 0 and ${not_Eligible_Count} != 0
            ${not_Eligible_Quote}           Get "Not Eligible" Quote ID                 ${quoteCarrier}
            Highlight Elements              ${not_Eligible_Quote}                       duration=2s
        ELSE
             CONTINUE
        END
    END

Get "Fetching Quote", "Select Indication", "Selected", "Not Eligible" & "Continue To Bind" Quotes Count
    [Arguments]                                                                         ${quoteCarrier}
    ${Fetching_Quote_Carrier_ID}            Get "Fetching" Quote ID                     ${quoteCarrier}
    ${Fetching_Quote_Carrier_Count}         Browser.Get Element Count                   ${Fetching_Quote_Carrier_ID}
    ${select_Indication_Button}             Get "Select Indication" Quote ID            ${quoteCarrier}
    ${select_Indication_count}              Browser.Get Element Count                   ${select_Indication_Button}
    ${selected_Icon_ID}                     Get "Selected" Quote ID                     ${quoteCarrier}
    ${selected_Icon_count}                  Browser.Get Element Count                   ${selected_Icon_ID}
    ${not_Eligible_Quote}                   Get "Not Eligible" Quote ID                 ${quoteCarrier}
    ${not_Eligible_Count}                   Browser.Get Element Count                   ${Not_Eligible_Quote}
    ${continue_To_Bind_Button}              Get "Continue To Bind" Quote ID             ${quoteCarrier}
    ${continue_To_Bind_count}               Browser.Get Element Count                   ${continue_To_Bind_Button}
    RETURN                                  ${Fetching_Quote_Carrier_Count}             ${select_Indication_count}                              ${selected_Icon_count}  ${not_Eligible_Count}   ${continue_To_Bind_count}

Get "Fetching" Quote ID
    [Arguments]                             ${quoteCarrier}
    ${Fetching_Quote_Carrier_ID}            Get From Dictionary                         ${Fetching_Quote_Carriers}                              ${quoteCarrier}
    RETURN                                  ${Fetching_Quote_Carrier_ID}

Get "Not Eligible" Quote ID
    [Arguments]                             ${quoteCarrier}
    ${Not_Eligible_Quote}                   Get From Dictionary                         ${Not_Eligible_Quotes_ID}                               ${quoteCarrier}
    RETURN                                  ${Not_Eligible_Quote}

Get "Select Indication" Quote ID
    [Arguments]                             ${quoteCarrier}
    ${Select_Indication_Button}             Get From Dictionary                         ${Select_Indication_Buttons_ID}                         ${quoteCarrier}
    RETURN                                  ${Select_Indication_Button}

Get "Selected" Quote ID
    [Arguments]                             ${quoteCarrier}
    ${Selected_Icons_ID}                    Get From Dictionary                         ${Selected_Icons_IDs}                                   ${quoteCarrier}
    RETURN                                  ${Selected_Icons_ID}

Verify "Selected" Icon
    [Arguments]                             ${quoteCarrier}
    ${Selected_Icon}                        Get From Dictionary                         ${Selected_Icons_IDs}                                   ${quoteCarrier}
    Highlight Elements                      ${Selected_Icon}                            duration=2s

Verify "Selected Indications"
    [Arguments]                             ${quoteCarrier}
    ${Selected_Indication}                  Get From Dictionary                         ${Selected_Indications_IDs}                             ${quoteCarrier}
    Highlight Elements                      ${Selected_Indication}                      duration=2s

Click "Submit To Quote" Button
    Click                                   ${Submit_to_Quote_Button}

Click "Proceed To Quote" Button
    Click                                   ${Proceed_to_Quote_Button}

Verify Bind Quote Tab Loaded
	Focus                                   ${Bind_Quote_Tab}
	Highlight Elements                      ${Bind_Quote_Tab}                           duration=4s
	Get Element By                          text                                        ${NoQuoteSelected_Text}
	Get Element By                          text                                        ${Quote_Selection_Info1}
    Highlight Elements                      ${Carrier_Grid}                             duration=4s

Wait For Continue To Bind Quotes
    [Arguments]                             ${quoteCarrier}
    ${Fetching_Quote_Carrier_Count}     ${select_Indication_count}  ${selected_Icon_count}  ${not_Eligible_Count}   ${continue_To_Bind_count}       Get "Fetching Quote", "Select Indication", "Selected", "Not Eligible" & "Continue To Bind" Quotes Count    ${quoteCarrier}
    IF    ${not_Eligible_Count} == 0
        TRY
            ${Continue_To_Bind_Button_ID}       Get From Dictionary                         ${Continue_To_Bind_Buttons_ID}                         ${quoteCarrier}
            Wait For Elements State                                                         ${Continue_To_Bind_Button_ID}                          timeout=30s
        EXCEPT    TimeoutError: *       type=GLOB       AS  ${Error}
            Log    ${Error}
        END
    END

Wait until all quotes get fetched on Bind Quote Screen
    [Arguments]                                                                         @{quoteCarriers}
    FOR     ${quoteCarrier}     IN      @{quoteCarriers}
        Run Keyword And Continue On Failure        Wait until the Fetching Quote Message disappears                            ${quoteCarrier}
        Wait For Not Eligible Quotes                                                ${quoteCarrier}
        Wait For Continue To Bind Quotes                                            ${quoteCarrier}
    END

Get "Continue To Bind" Quote ID
    [Arguments]                             ${quoteCarrier}
    ${Continue_To_Bind_Button_ID}           Get From Dictionary                         ${Continue_To_Bind_Buttons_ID}                         ${quoteCarrier}
    RETURN                                  ${Continue_To_Bind_Button_ID}

Click "Continue To Bind" Button
    [Arguments]                                                                         ${quoteCarrier}
    ${Continue_To_Bind_Button_ID}           Get "Continue To Bind" Quote ID             ${quoteCarrier}
    Click                                   ${Continue_To_Bind_Button_ID}

Click "Process Bind Order" Button
    Click                                   ${Process_Bind_Order_Button}

#Wait until all quotes get fetched
#    [Arguments]                                             @{quoteCarriers}
#    ${Not_Eligible_Count}=      Browser.Get Element Count   ${Not_Eligible_Message_ID}
#    FOR    ${quoteCarrier}    IN    @{quoteCarriers}
#        IF    ${Not_Eligible_Count} != 0
#            Focus                                       //div[contains(@data-qa, "${quoteCarrier}")]//p[normalize-space()='Not Eligible']
#            CONTINUE
#        ELSE
#           Wait until the quote is getting fetched      ${quoteCarrier}
#        END
#    END

#Wait Until the Quotes are getting fetched
#    ${number_of_elements}=  Browser.Get Element Count   ${Fetching_Quote_Message_ID}
#    ${Select_Indication_Count}=       Set Variable      0
#    FOR    ${Select_Indication_Count}    IN RANGE    ${number_of_elements}
#        IF    ${Select_Indication_Count} < ${number_of_elements}
#            Browser.Wait For Condition      Element States              ${Fetching_Quote_Message_ID}    ==                  detached    timeout=02:00
#            Verify Select Indication Tab Loaded
#        END
#        ${Select_Indication_Count}=     Browser.Get Element Count   ${Select_Indication_Button_ID}
#    END

#Wait Until the Quotes are getting fetched
#    ${Fetching_Quote_Message_Count}=    Browser.Get Element Count       ${Fetching_Quote_Message_ID}
#    ${Select_Indication_Count}=         Browser.Get Element Count       ${Select_Indication_Button_ID}
#    ${Not_Eligible_Count}=              Browser.Get Element Count       ${Not_Eligible_Message_ID}
#    ${number_of_elements}=              Get Total Of Element Count      ${Fetching_Quote_Message_Count}     ${Select_Indication_Count}      ${Not_Eligible_Count}
#    FOR    ${total_element}    IN RANGE    ${number_of_elements}+1
#        ${total_element}=                   Get Total Of Element Count      ${Select_Indication_Count}          ${Not_Eligible_Count}
#        IF  ${Fetching_Quote_Message_Count} != 0
#            Browser.Wait For Condition          Element States                  ${Fetching_Quote_Message_ID}    !=  enabled
#            Verify Select Indication Tab Loaded
#            ${Select_Indication_Count}=         Browser.Get Element Count       ${Select_Indication_Button_ID}
#            ${Not_Eligible_Count}=              Browser.Get Element Count       ${Not_Eligible_Message_ID}
#            ${Fetching_Quote_Message_Count}=    Browser.Get Element Count       ${Fetching_Quote_Message_ID}
#        ELSE
#            BREAK
#        END
#    END

#Wait Until the Quotes are getting fetched
#    ${Fetching_Quote_Message_Count}=    Browser.Get Element Count       ${Fetching_Quote_Message_ID}
#    ${Select_Indication_Count}=         Browser.Get Element Count       ${Select_Indication_Button_ID}
#    ${Not_Eligible_Count}=              Browser.Get Element Count       ${Not_Eligible_Message_ID}
#    ${number_of_elements}=              Get Total Of Element Count      ${Fetching_Quote_Message_Count}    ${Not_Eligible_Count}
#    ${total_element}=                   Get Total Of Element Count      ${Select_Indication_Count}      ${Not_Eligible_Count}
#    WHILE    ${total_element} <= ${number_of_elements}
#        Browser.Wait For Condition      Element States              ${Fetching_Quote_Message_ID}    !=                  attached
#        Verify Select Indication Tab Loaded
#        ${Select_Indication_Count}=     Browser.Get Element Count   ${Select_Indication_Button_ID}
#        ${Not_Eligible_Count}=          Browser.Get Element Count   ${Not_Eligible_Message_ID}
#        ${total_element}=               Get Total Of Element Count  ${Select_Indication_Count}      ${Not_Eligible_Count}
#    END

