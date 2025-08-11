*** Settings ***
Library                                         Browser
Resource                                        Catalogue/Industries.robot
Resource                                        Catalogue/Questions.robot

*** Variables ***
${Side_Nav_Heading_ID}                          xpath=//p[normalize-space()='MAIN MENU']
${Distribution_Option_ID}                       xpath=//p[normalize-space()='Distribution']
${Service_Request_Option_ID}                    xpath=//p[normalize-space()='Service Requests']
${Catalogue_Option_ID}                          xpath=//p[normalize-space()='Catalogue']
${Catalogue-Industries_Option_ID}               xpath=//p[normalize-space()='Industries']
${Catalogue-Questions_Option_ID}                xpath=//p[normalize-space()='Questions']
${Catalogue-Management_Option_ID}               xpath=//p[normalize-space()='Management']
${Catalogue-Products_Option_ID}                 xpath=//p[normalize-space()='Products']
${Catalogue-MGAs_Option_ID}                     xpath=//p[normalize-space()='MGAs']
${Payments_Option_ID}                           xpath=//p[normalize-space()='Payments']
${Policies_Option_ID}                           xpath=//p[normalize-space()='Policies']
${Partners_Option_ID}                           xpath=//p[normalize-space()='Partners']
${User_Access_Option_ID}                        xpath=//p[normalize-space()='User Access']
${Document_Template_Option_ID}                  xpath=//p[normalize-space()='Document Template']
${Configuration_Option_ID}                      xpath=//p[normalize-space()='Configuration']
${Logout_Option_ID}                             xpath=//h6[normalize-space()='Logout']

*** Keywords ***
Verify Side Navigation Bar Heading
    Wait For Elements State                     ${Side_Nav_Heading_ID}

Click Side Navigation >> Distribution
    Click                                       ${Distribution_Option_ID}

Click Side Navigation >> Service Request
    Click                                       ${Service_Request_Option_ID}

Click Side Navigation >> Catalogue
    Click                                       ${Catalogue_Option_ID}

Click Side Navigation >> Catalogue >> Industries
    Click                                       ${Catalogue-Industries_Option_ID}
    Industries.Verify the Industries Page loded

Click Side Navigation >> Catalogue >> Questions
    Click                                       ${Catalogue-Questions_Option_ID}
    Questions.Verify the Questions Page loded

Click Side Navigation >> Catalogue >> Management
    Click                                       ${Catalogue-Management_Option_ID}

Click Side Navigation >> Catalogue >> Products
    Click                                       ${Catalogue-Products_Option_ID}

Click Side Navigation >> Catalogue >> MGAs
    Click                                       ${Catalogue-MGAs_Option_ID}

Click Side Navigation >> Payments
    Click                                       ${Payments_Option_ID}

Click Side Navigation >> Policies
    Click                                       ${Policies_Option_ID}

Click Side Navigation >> Partners
    Click                                       ${Partners_Option_ID}

Click Side Navigation >> User Access
    Click                                       ${User_Access_Option_ID}

Click Side Navigation >> Document Template
    Click                                       ${Document_Template_Option_ID}

Click Side Navigation >> Configuration
    Click                                       ${Configuration_Option_ID}

Click Side Navigation >> Logout
    Click                                       ${Logout_Option_ID}
