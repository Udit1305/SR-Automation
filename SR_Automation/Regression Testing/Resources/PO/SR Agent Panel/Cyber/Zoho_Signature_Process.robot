*** Settings ***
Library                                                 Browser

*** Comments ***
Below are the At-Bay Signature Fields Variables & Keywords

*** Variables ***
${At-Bay_Zoho_Signature_Fields_ID}                      //div[@id="document-container"]//div[@field-category="textfield"]


*** Keywords ***
At-Bay_Signature.Fill Producer Name
    [Arguments]                                         ${Value}
    Fill Text                                           ${Zoho_Signature_Title_ID} >>> ${At-Bay_Zoho_Signature_Fields_ID}[1]              ${Value}
    Keyboard Key                                        ${Zoho_Signature_Title_ID} >>> ${At-Bay_Zoho_Signature_Fields_ID}                 Tab

At-Bay_Signature.Fill License Number
    [Arguments]                                         ${Value}
    Fill Text                                           ${Zoho_Signature_Title_ID} >>> ${At-Bay_Zoho_Signature_Fields_ID}[2]              ${Value}
    Keyboard Key                                        ${Zoho_Signature_Title_ID} >>> ${At-Bay_Zoho_Signature_Fields_ID}                 Tab

At-Bay_Signature.Fill Agency
    [Arguments]                                         ${Value}
    Fill Text                                           ${Zoho_Signature_Title_ID} >>> ${At-Bay_Zoho_Signature_Fields_ID}[3]              ${Value}
    Keyboard Key                                        ${Zoho_Signature_Title_ID} >>> ${At-Bay_Zoho_Signature_Fields_ID}                 Tab

At-Bay_Signature.Fill Email
    [Arguments]                                         ${Value}
    Fill Text                                           ${Zoho_Signature_Title_ID} >>> ${At-Bay_Zoho_Signature_Fields_ID}[4]              ${Value}
    Keyboard Key                                        ${Zoho_Signature_Title_ID} >>> ${At-Bay_Zoho_Signature_Fields_ID}                 Tab

At-Bay_Signature.Fill Phone
    [Arguments]                                         ${Value}
    Fill Text                                           ${Zoho_Signature_Title_ID} >>> ${At-Bay_Zoho_Signature_Fields_ID}[5]              ${Value}
    Keyboard Key                                        ${Zoho_Signature_Title_ID} >>> ${At-Bay_Zoho_Signature_Fields_ID}                 Tab
