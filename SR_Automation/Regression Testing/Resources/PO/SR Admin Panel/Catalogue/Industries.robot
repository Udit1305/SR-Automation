*** Settings ***
Library                                             Browser

*** Variables ***
${Industries_URL}                                   https://dev-admin.squarerisk.net/industries
${Select_Industry_Text1}                            Select an Industry
${Select_Industry_Text2}                            Select an industry from the industry tree on the left side to edit details
${Search_Box_ID}                                    xpath=//input[@placeholder="Search as you type" and contains(@class, "MuiInputBase-input")]
${Search_Result_Items_ID}                           xpath=//ul[@role='tree' and @aria-label="customized"]//li[contains(@class, "MuiTreeItem-root css")]
${NAICS_Code_Input_Field_ID}                        xpath=//input[@name="naicsCode"]
${NAICS_Description_Input_Field_ID}                 xpath=//input[@name="naicsDesc"]
${SIC_Code_Input_Field_ID}                          xpath=//input[@name="sicCode"]
${SIC_Description_Input_Field_ID}                   xpath=//input[@name="sicDesc"]
${Sarch_Keyword_Input_Field_ID}                     xpath=//label[normalize-space()="Search Keywords"]/ancestor::div[contains(@class,'MuiAutocomplete-root')]//input[@type="text" or @placeholder="Add Keyword"]
${Fetaured_Label_Input_Field_ID}                    xpath=//label[normalize-space()="Featured Labels"]/ancestor::div[contains(@class,'MuiAutocomplete-root')]//input[@type="text" or @placeholder="Add Keyword"]
&{Is_Featured_Radio_Field_Option_IDs}               Yes=//p[normalize-space()='Is Featured?']/parent::div//span[contains(@class,'MuiTypography-root MuiTypography-body1') and normalize-space()="Yes"]                      No=//p[normalize-space()='Is Featured?']/parent::div//span[contains(@class,'MuiTypography-root MuiTypography-body1') and normalize-space()="No"]
${Cancel_Button_ID}                                 xpath=//button[contains(.,'Cancel')]
${Update_Button_ID}                                 xpath=//button[contains(.,'Update')]


*** Keywords ***
Verify the Industries Page loded
    Wait For Navigation                             ${Industries_URL}
    Highlight Elements                              ${Select_Industry_Text1}            duration=2s
    Highlight Elements                              ${Select_Industry_Text2}

Enter Text to Search Industry
    [Arguments]                                     ${Value}
    Type Text                                       ${Search_Box_ID}                    ${Value}

Wait for Search Results to Appear
    Wait For Elements State                         ${Search_Result_Items_ID}


