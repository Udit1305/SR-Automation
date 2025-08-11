*** Settings ***
Library             Browser
Library             String
Documentation       Midwestern Partner API test Cases
Test Setup          Open the browser

*** Variables ***
${Api_Key}                      475043d0-e1ea-4b8a-9b37-11eae18abd76
${URL}                          https://uat-api.squarerisk.net
${Get_Token_API}                api/v2/partner/auth/token
${Initiate_Application_API}     api/v2/partner/application/initiate
${Update_Application_API}       api/v2/partner/application/update
${Get_Application_API}          api/v2/partner/application/get

#robot -d results/API-Results -v ENV:DEV tests/test2-1.robot
#robot -d results/API-Results -v ENV:DEV -i Happy_Path_Flow tests/test2-1.robot

*** Keywords ***
Open the browser
    New Browser     headless=true
    New Page        ${URL}

Generate Token
    ${Get_Token_Response}=    Http      ${Get_Token_API}       POST    {"apiKey":"${Api_Key}", "slug":"PARTNERAPI_REFERRAL", "partnerEmail":"abc@partnertestagency1.com", "partnerName": "Partner Test Agency1"}
    Log    ${Get_Token_Response.status}
    Log    ${Get_Token_Response.body}
    ${token}=     Set Variable      ${Get_Token_Response.body.result.token}

Validate Initate/Update Application Response
    [Arguments]                         ${Intiate_Application_Response}
    Should Be Equal As Integers         ${Intiate_Application_Response.body.statusCode}                                     200
    Should Not Be Empty                 ${Intiate_Application_Response.body.message}
    Should Not Be Empty                 ${Intiate_Application_Response.body.result.applicationLink}
    Should Not Be Empty                 ${Intiate_Application_Response.body.result.indicationQuotes[0].premiumAmount}
    Should Be Equal                     ${Intiate_Application_Response.body.result.indicationQuotes[0].status}              Success
    Should Be Equal                     ${Intiate_Application_Response.body.result.indicationQuotes[0].carrierName}         SquareRisk
    Should Be Equal As Strings          ${Intiate_Application_Response.body.result.indicationQuotes[0].errorResponse}       None
    Should Be Equal As Strings          ${Intiate_Application_Response.body.result.indicationQuotes[1].premiumAmount}       None
    Should Be Equal As Strings          ${Intiate_Application_Response.body.result.indicationQuotes[1].status}              Fail
    Should Be Equal                     ${Intiate_Application_Response.body.result.indicationQuotes[1].carrierName}         SquareRisk
    Should Be Equal As Strings          ${Intiate_Application_Response.body.result.indicationQuotes[1].errorResponse}       ['Industry is not available with selected product']

Validate Get Application Response
    [Arguments]                         ${Get_Application_Response}
    Should Be Equal As Integers         ${Get_Application_Response.body.statusCode}                                         200
    Should Not Be Empty                 ${Get_Application_Response.body.message}
    Should Not Be Empty                 ${Get_Application_Response.body.result.applicationLink}
    Should Not Be Empty                 ${Get_Application_Response.body.result.initialQuotes[0].premiumAmount}
    Should Be Equal                     ${Get_Application_Response.body.result.initialQuotes[0].status}                     Success
    Should Be Equal                     ${Get_Application_Response.body.result.initialQuotes[0].carrierName}                SquareRisk
    Should Be Equal As Strings          ${Get_Application_Response.body.result.initialQuotes[0].errorResponse}              None
    Should Be Equal As Strings          ${Get_Application_Response.body.result.initialQuotes[1].premiumAmount}              None
    Should Be Equal As Strings          ${Get_Application_Response.body.result.initialQuotes[1].status}                     Fail
    Should Be Equal                     ${Get_Application_Response.body.result.initialQuotes[1].carrierName}                SquareRisk
    Should Be Equal As Strings          ${Get_Application_Response.body.result.initialQuotes[1].errorResponse}              ['Industry is not available with selected product']

*** Test Cases ***
#Perform Login
#	Open Browser                https://dev.squarerisk.net/                         chromium
#	Wait For Elements State     xpath=//img[@alt='Square Risk Logo']
#	${credentials}=    Create Dictionary    username=uditbhati1305+789@gmail.com    password=SquareRisk#12
#    Fill Text                   xpath=//input[@name='email']                        uditbhati1305+789@gmail.com
#    Fill Secret                 xpath=//input[@name='password']                     $password
#    Click                       xpath=//button[normalize-space()='Sign In']
#    Wait For Elements State     xpath=//li[@data-qa='squarerisk-user-profile']
#    Click                       xpath=//button[@data-qa="application-add-new"]
#    Wait For Elements State     xpath=//div[@data-qa="Initiate Application"]


Happy Path Flow
    [Tags]          Test1
    Generate Token
    ${Intiate_Application_Response}=    Http    ${Initiate_Application_API}     POST     {"agentEmail": "abc@partnertestagency1.com","agencyName": "Partner Test Agency1","productName": "WORKERS_COMPENSATION","state": "MA","naicsCode": "457210","addressLine1": "179 Tremont St","zip": "02769","city": "Rehoboth","county": "CA","businessName": "agaro","payrollInformation": [{"classCodeWC": "7219","payrollAmount": "5000"},{"classCodeWC": "8350","payrollAmount": "5000"}],"limits": "100/100/1000"}      headers={"Authorization": "Bearer ${token}", "x-api-key": "${Api_Key}"}
    Log    ${Intiate_Application_Response.status}
    Log    ${Intiate_Application_Response.body}
    TRY
            Validate Initate/Update Application Response    ${Intiate_Application_Response}
    EXCEPT    
            Log    API Response is not matchingmessage
    END

    
    ${Application_ID}=      Set Variable    ${Intiate_Application_Response.body.result.applicationId}

    ${Get_Application_Response}=        Http    ${Get_Application_API}?applicationId=${ApplicationID}     GET     headers={"Authorization": "Bearer ${token}", "x-api-key": "${Api_Key}"}
    Log    ${Get_Application_Response.status}
    Log    ${Get_Application_Response.body}
    Validate Get Application Response    ${Get_Application_Response}

    ${Update_Application_Response}=     Http    ${Update_Application_API}     POST     {"applicationId": "${ApplicationID}","agentEmail": "abc@partnertestagency1.com","agencyName": "Partner Test Agency1","productName": "WORKERS_COMPENSATION","state": "MA","naicsCode": "457210","addressLine1": "179 Tremont St","zip": "02769","city": "Rehoboth","county": "CA","businessName": "agaro","payrollInformation": [{"classCodeWC": "7219","payrollAmount": "15000"},{"classCodeWC": "8350","payrollAmount": "25000"}],"limits": "100/100/1000"}     headers={"Authorization": "Bearer ${token}", "x-api-key": "${Api_Key}"}
     Log    ${Update_Application_Response.status}
     Log    ${Update_Application_Response.body}
     TRY
            Validate Initate/Update Application Response    ${Update_Application_Response}
     EXCEPT
            Log    API Response is not matching
     END

    ${Get_Application_Response}=        Http    ${Get_Application_API}?applicationId=${ApplicationID}     GET     headers={"Authorization": "Bearer ${token}", "x-api-key": "${Api_Key}"}
    Log    ${Get_Application_Response.status}
    Log    ${Get_Application_Response.body}
    TRY
           Validate Initate/Update Application Response    ${Get_Application_Response}
    EXCEPT
           Log    API Response is not matching
    END
    Close Browser
#=======================================================================================================================

Create application through Partner API by providing Primary Class Code
    [Tags]          Test2
    Generate Token
    ${Intiate_Application_Response}=    Http    ${Initiate_Application_API}     POST     {"agentEmail": "abc@partnertestagency1.com","agencyName": "Partner Test Agency1","productName": "WORKERS_COMPENSATION","state": "MA","naicsCode": "457210","addressLine1": "179 Tremont St","zip": "02769","city": "Rehoboth","county": "CA","businessName": "agaro","payrollInformation": [{"classCodeWC": "7219","payrollAmount": "5000"}],"limits": "100/100/1000"}      headers={"Authorization": "Bearer ${token}", "x-api-key": "${Api_Key}"}
    Log    ${Intiate_Application_Response.status}
    Log    ${Intiate_Application_Response.body}
    Validate Initate/Update Application Response    ${Intiate_Application_Response}

    ${Application_ID}=      Set Variable    ${Intiate_Application_Response.body.result.applicationId}

    ${Get_Application_Response}=        Http    ${Get_Application_API}?applicationId=${ApplicationID}     GET     headers={"Authorization": "Bearer ${token}", "x-api-key": "${Api_Key}"}
    Log    ${Get_Application_Response.status}
    Log    ${Get_Application_Response.body}
    TRY
           Validate Get Application Response    ${Get_Application_Response}
    EXCEPT
           Log    API Response is not matching
    END
    Close Browser
#=======================================================================================================================
