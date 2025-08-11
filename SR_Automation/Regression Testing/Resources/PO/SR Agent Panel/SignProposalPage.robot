*** Settings ***
Library                                         Browser

*** Variables ***
${Signature_Tab}                                xpath=//p[@data-qa="Sign Proposal"]
${Signature_Generation_Message1}                xpath=//p[normalize-space()= "Please Wait"]
${Signature_Generation_Message2}                xpath=//p[normalize-space()= "We are generating signature package"]
${Signature_PDF_Image}                          xpath=//img[@alt='Signature']
${Customer_Signed_Package_ID}                   xpath=//p[@data-qa="Customer Signature info" and normalize-space()="Customer has signed the package"]
${Provide_Agents_Signature_Button}              xpath=//div[@data-qa="Provide Agent Signature Button"]//p

${Zoho_Sign_Agree_Term_Button_ID}               //button[@id="agree-btn"]
${Zoho_Sign_Term&Condition_pop-up_ID}           //div[@id="agreementModal"]
${Zoho_Sign_Term&Condition_Agree_Btn_ID}        //button[@id="agree"]
${Zoho_Sign_Term&Condition_Close_Btn_ID}        div[class='modal-dialog guest-modal-dialog'] a[data-dismiss='modal'] p
${Signature_Field_ID}                           //div[@id="document-container"]//div[@field_name="Signature"]
${Signature_Cancel_Button}                      //div[@class="sign-bottom-cont"]//a[normalize-space()="Cancel"]
${Signature_OK_Button}                          //div[@class="sign-bottom-cont"]//button[@id="select-sign"]
${Zoho_Sign_Finish_Btn_ID}                      //div[@id="document-container"]//button[@id="finish"]

${Both_Party_Signed_Package_ID}                 xpath=//p[@data-qa="Both Parties Signture Confirmation" and normalize-space()="Both parties have signed the package"]

${eSignature_Copy_Message_ID}                   xpath=//p[normalize-space()='Click the button below to copy the e-signature link']
${Signed_Package_Upload_Message_ID}             xpath=//p[normalize-space()='If you have Signed package you can upload it below']
${Browse_File_ID}                               xpath=//a[contains(.,'+ Browse file')]

${Download_Signed_Package_ID}                   xpath=//p[normalize-space()="Download Signed Package"]
${Continue_To_Payment_Button}                   xpath=//button[@data-qa="Continue to Payment"]


*** Keywords ***
Verify Sign Proposal Screen
    Wait For Elements State                                         ${Signature_Tab}

Verify Signature generation messages
    Wait For Elements State                                         ${Signature_Generation_Message1}
    Wait For Elements State                                         ${Signature_Generation_Message2}

Wait until the Signature PDF generated
    Wait For Elements State                                         ${Signature_PDF_Image}                                                      timeout=01:00

Highlight "Customer Has Signed the Package" Message
    Highlight Elements                                              ${Customer_Signed_Package_ID}                                               duration=5s

Download generated Signature PDF
    ${promise}                  Promise To Wait For Download        ${Sameple_File_Location}
    Click on the "Browse File" Link
    ${upload_result}            Wait For                            ${promise}
    Click    selector
#=======================================================================================================
#            Example usage:
#            | `New Context`            acceptDownloads=True
#            | `New Page`               ${LOGIN_URL}
#            | ${dl_promise}          `Promise To Wait For Download`    /path/to/download/file.name
#            | `Click`                  id=file_download
#            | ${file_obj}=           `Wait For`    ${dl_promise}
#            | File Should Exist      ${file_obj}[saveAs]
#            | Should Be True         ${file_obj.suggestedFilename}
#=======================================================================================================

#Click "Provide Agents Signature" Button
#    Wait For Elements State                                         ${Provide_Agents_Signature_Button}                                          state=enabled
#    Click With Options                                              ${Provide_Agents_Signature_Button}                                          clickCount=2

Click "Provide Agents Signature" Button
    Wait For Elements State                                         ${Provide_Agents_Signature_Button}                                          state=enabled
    Hover                                                           ${Provide_Agents_Signature_Button}
    Mouse Button                                                    action=click

Wait for Zoho Signature Container to be visible
    Wait For Elements State                                         ${Zoho_Signature_Title_ID}                                                  timeout=01:00

Click "Agree & Continue" Button
    Click                                                           ${Zoho_Signature_Title_ID} >>> ${Zoho_Sign_Agree_Term_Button_ID}

Wait for Zoho Signature Terms & Conditions pop-up to be visible
    Wait For Elements State                                         ${Zoho_Signature_Title_ID} >>> ${Zoho_Sign_Term&Condition_pop-up_ID}

Click "Agree & Continue" Button on Terms & Conditions pop-up window
    Click                                                           ${Zoho_Signature_Title_ID} >>> ${Zoho_Sign_Term&Condition_Agree_Btn_ID}

Click Signature Feild
    Click                                                           ${Zoho_Signature_Title_ID} >>> ${Signature_Field_ID}

Click "Cancel" Button
    Click                                                           ${Zoho_Signature_Title_ID} >>> ${Signature_Cancel_Button}

Click "OK" Button
    Click                                                           ${Zoho_Signature_Title_ID} >>> ${Signature_OK_Button}

Click "Finish" Button
    Click                                                           ${Zoho_Signature_Title_ID} >>> ${Zoho_Sign_Finish_Btn_ID}

Wait for Signature Process to be completed
    Wait For Elements State                                         ${Signature_PDF_Image}                                                      timeout=01:00
    Highlight Elements                                              ${Both_Party_Signed_Package_ID}                                             duration=5s

Highlight Copy e-Signature Message
    Highlight Elements                                              ${eSignature_Copy_Message_ID}                                               duration=5s

Highlight Signed Package Upload Message
    Highlight Elements                                              ${Signed_Package_Upload_Message_ID}                                         duration=5s

Click on the "Browse File" Link
    Click                                                           ${Browse_File_ID}

Upload Signature PDF File
    [Arguments]                                                     ${Sameple_File_Location}
    Highlight Copy e-Signature Message
    Highlight Signed Package Upload Message
    ${promise}                  Promise To Upload File              ${Sameple_File_Location}
    Click on the "Browse File" Link
    ${upload_result}            Wait For                            ${promise}

Click on "Continue To Payment" Button
    Wait For Elements State                                         ${Continue_To_Payment_Button}
    Click                                                           ${Continue_To_Payment_Button}