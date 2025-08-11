*** Settings ***
Library                                         Browser

*** Variables ***
${Download_Policy_Tab}                          xpath=//p[@data-qa="Download Policy"]

*** Keywords ***
Verify Download Policy Page should get Loaded
    Wait For Elements State                                         ${Download_Policy_Tab}