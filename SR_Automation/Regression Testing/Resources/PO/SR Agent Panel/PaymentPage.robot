*** Settings ***
Library                                         Browser

*** Variables ***
${Payment_Tab}                                  xpath=//p[@data-qa="Payment"]
${Select_Payment_Method_Text}                   xpath=//p[normalize-space()='Select your preferred payment method']
${SR_Bill_To_Agent_Select_Button_ID}            xpath=//p[normalize-space()='SquareRisk Bill to Agent']/parent::div/following-sibling::button[normalize-space()='Select']
${SR_Bill_To_Insured_Select_Button_ID}          xpath=//p[normalize-space()='SquareRisk Bill to Insured']/parent::div/following-sibling::button[normalize-space()='Select']
${Payment_Type_ID}                              xpath=//p[@data-qa='Payment Type Payment Type']
${Payment_Method_ACH_ID}                        xpath=//p[normalize-space()='Ach']
${Payment_Method_CreditCard_ID}                 xpath=//p[normalize-space()='Credit Card']
${CreditCard_Number_ID}                         //input[@id='Field-numberInput' and contains(@aria-describedby, "cardBrandIconsDesc")]
${CreditCard_Expiration_ID}                     //input[@id='Field-expiryInput' and @name="expiry"]
${CreditCard_CVC_ID}                            //input[@id='Field-cvcInput' and @name="cvc"]

*** Keywords ***
Verify Payment Page should get Loaded
    Wait For Elements State                                         ${Payment_Tab}
    Highlight Elements                                              ${Select_Payment_Method_Text}                       duration=4s

Click Payment Type as "SquareRisk Bill to Agent"
    Click                                                           ${SR_Bill_To_Agent_Select_Button_ID}
    Wait For Elements State                                         ${Payment_Type_ID}

Select Payment Method as "ACH"
    Click                                                           ${Payment_Method_ACH_ID}

Select Payment Method as "Credit Card"
    Click                                                           ${Payment_Method_CreditCard_ID}

Fill Credit Card Number
    [Arguments]                                                     ${CreditCard_Number}
    Fill Text                                                       ${Payment_iframe_ID} >>> ${CreditCard_Number_ID}        ${CreditCard_Number}

Fill Credit Card Exipration Date
    [Arguments]                                                     ${CreditCard_Expiration}
    Fill Text                                                       ${Payment_iframe_ID} >>> ${CreditCard_Expiration_ID}    ${CreditCard_Expiration}

Fill Credit Card CVC
    [Arguments]                                                     ${CreditCard_CVC}
    Fill Text                                                       ${Payment_iframe_ID} >>> ${CreditCard_CVC_ID}           ${CreditCard_CVC}