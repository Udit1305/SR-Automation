*** Settings ***
Library                                     Browser
Library                                     ../../../../../SR_Custom_Library/SrCustomLib.py
Library                                     Collections

*** Variables ***
${Basic_Information_Panel_ID}               xpath=//span[normalize-space()='Basic Information']
${Insured_Company_Name_ID}                  xpath=//input[@name="data[sr_ic_name]"]
${Coverage_Effective_Date_ID}               xpath=//input[@name="data[sr_ic_coverage_effectivedate]"]/following-sibling::input
${Google_Address_ID}                        xpath=//div/span[normalize-space()="Basic Information"]/ancestor::div[contains(@class, "card border")]//div/input[@name="data[sr_ic_location_google]"]
${Address_Suggestion_ID}                    css=.pac-item
${First_Address_Suggestion_ID}              css=.pac-item:nth-child(1)
${Don't_see_your_address_ID}                xpath=//div/span[normalize-space()="Basic Information"]/ancestor::div[contains(@class, "card border")]//label/input[@name="data[sr_ic_dont_see_your_location_google]"]
${Address_Line1_ID}                         xpath=//Input[@name="data[sr_ic_addr1]"]
${Address_Line2_ID}                         xpath=//Input[@name="data[sr_ic_addr2]"]
${City_ID}                                  xpath=//Input[@name="data[sr_ic_city]"]
${County_ID}                                xpath=//Input[@name="data[sr_ic_county]"]
${State_ID}                                 xpath=//div/span[normalize-space()="Basic Information"]/ancestor::div[contains(@class, "card border")]//div/select[@name="data[sr_ic_state]"]/following-sibling::div/div[@class="choices__item choices__item--selectable"]
${State_Input_ID}                           xpath=//div/span[normalize-space()="Basic Information"]/ancestor::div[contains(@class, "card border")]//div/input[@name="search_terms" and  contains(@aria-activedescendant, "sr_ic_state-item-choice")]
${Zip_ID}                                   xpath=//Input[@name="data[sr_ic_zip]"]

${General_Information_Panel_ID}             xpath=//span[normalize-space()='General Information']
${Coverage_Deductible_ID}                   xpath=//div/span[normalize-space()="General Information"]/ancestor::div[contains(@class, "card border")]//select[@name="data[sr_ic_deductible]"]/ancestor::div[@role='combobox']
&{Coverage_Deductible_Values}               2500=//div[contains(@id, 'sr_ic_deductible-item-choice') and @data-value = "2500"]                                                                                     5000=//div[contains(@id, 'sr_ic_deductible-item-choice') and @data-value = "5000"]                                                                                     10000=//div[contains(@id, 'sr_ic_deductible-item-choice') and @data-value = "10000"]                                                                                   25000=//div[contains(@id, 'sr_ic_deductible-item-choice') and @data-value = "25000"]                                                                                   50000=//div[contains(@id, 'sr_ic_deductible-item-choice') and @data-value = "50000"]

${NAICS_Code_ID}                            xpath=//select[contains(@name, "data[sr_ic_naics_code]")]/ancestor::div[@role="combobox"]
${NAICS_Code_Remove_Button_ID}              xpath=//select[@name="data[sr_ic_naics_code]"]/ancestor::div[@role="combobox"]//button[contains(@aria-label, 'Remove item')]
${NAICS_Code_Input_ID}                      xpath=//input[contains(@aria-activedescendant, 'sr_ic_naics_code-item-choice') and @name="search_terms" and @role="textbox"]
${NAICS_Code_DropDown_ID}                   xpath=//select[@name="data[sr_ic_naics_code]"]/ancestor::div[@role="combobox"]//div[contains(@class,'choices__list choices__list--dropdown')]
#${Applicant_Have_Website_ID1}               xpath=//input[contains(@name, "data[sr_cybr_applicant_has_website]")]
#${Has_Website_ID1}                          data[sr_cybr_applicant_has_website]
&{Applicant_Have_Website_ID}                Yes=//div[contains(@class, "formio-component-sr_cybr_applicant_has_website")]//input[@role="radio" and @value="yes"]                                                   No=//div[contains(@class, "formio-component-sr_cybr_applicant_has_website")]//input[@role="radio" and @value="no"]

${Domain_ID}                                xpath=//input[contains(@id,'sr_ic_website') and @name="data[sr_ic_website]"]
${Remove_Domain_ID}                         xpath=//div[contains(@class, "formio-component-sr_ic_website")]//button[@class='btn btn-secondary' and @type="button"]
${Add_Domain_ID}                            xpath=//button[@ref="addButton"]
${Last_Year_Revenue_ID}                     xpath=//input[@name="data[sr_ic_revenue_past]"]
${Coverage_Limit_ID}                        xpath=//div/span[normalize-space()="General Information"]/ancestor::div[contains(@class, "card border")]//select[@name="data[sr_ic_coverage_limit]"]/ancestor::div[@role='combobox']
&{Coverage_Limit_Values}                    100000=//div[contains(@id, 'sr_ic_coverage_limit-item-choice') and @data-value = "100000"]                                                                             500000=//div[contains(@id, 'sr_ic_coverage_limit-item-choice') and @data-value = "500000"]                                                                             750000=//div[contains(@id, 'sr_ic_coverage_limit-item-choice') and @data-value = "750000"]                                                                             1000000=//div[contains(@id, 'sr_ic_coverage_limit-item-choice') and @data-value = "1000000"]                                                                           2000000=//div[contains(@id, 'sr_ic_coverage_limit-item-choice') and @data-value = "2000000"]                                                                           3000000=//div[contains(@id, 'sr_ic_coverage_limit-item-choice') and @data-value = "3000000"]

${Contact_Person_Phone_ID}                  xpath=//input[@name="data[sr_ic_phone_number]"]


*** Keywords ***
Verify the Form Contains Basic Information Panel
    Wait For Elements State                 ${Basic_Information_Panel_ID}

Enter Insured Company Name
    [Arguments]                             ${Insured_Comp_Name}
    Fill Text                               ${Insured_Company_Name_ID}          ${Insured_Comp_Name}

Enter Coverage Effective Date
    [Arguments]                             ${Coverage_Effective_Date}
    Fill Text                               ${Coverage_Effective_Date_ID}       ${Coverage_Effective_Date}

Enter Google Address
    [Arguments]                             ${Address}
    Fill Text                               ${Google_Address_ID}                ${Address}
    Click                                   ${First_Address_Suggestion_ID}

Check Don't See Your Address Checkbox
    Check Checkbox                          ${Don't_see_your_address_ID}
    
Uncheck Don't See Your Address Checkbox
    Uncheck Checkbox                        ${Don't_see_your_address_ID}

Enter Address Line 1
    [Arguments]                             ${Address_Line1}
    Fill Text                               ${Address_Line1_ID}                 ${Address_Line1}

Enter Address Line 2
    [Arguments]                             ${Address_Line2}
    Fill Text                               ${Address_Line2_ID}                 ${Address_Line2}

Enter City
    [Arguments]                             ${City}
    Fill Text                               ${City_ID}                          ${City}

Enter County
    [Arguments]                             ${County}
    Fill Text                               ${County_ID}                        ${County}

Enter State
    [Arguments]                             ${State}
    Wait For Elements State                 ${State_ID}
    Click                                   ${State_ID}
    Fill Text                               ${State_Input_ID}                   ${State}

Enter Zip
    [Arguments]                             ${Zip}
    Fill Text                               ${Zip_ID}                           ${Zip}

Fill Address Details
    [Arguments]                             ${Address_Line1}                    ${Address_Line2}                    ${City}             ${County}             ${State}               ${Zip}
    Enter Address Line 1                    ${Address_Line1}
    Enter Address Line 2                    ${Address_Line2}
    Enter City                              ${City}
    Enter County                            ${County}
    Enter State                             ${State}
    Enter Zip                               ${Zip}

Verify the Form Contains General Information Panel
    Wait For Elements State                 ${General_Information_Panel_ID}

Select value from Coverage Deductible dropdown
    [Arguments]                             ${Coverage_Deductible}
    Wait For Elements State                 ${Coverage_Deductible_ID}           state=enabled
    Click                                   ${Coverage_Deductible_ID}
    ${Coverage_Deductible_Value}            Get From Dictionary                 ${Coverage_Deductible_Values}       ${Coverage_Deductible}
    Wait For Elements State                 ${Coverage_Deductible_Value}        state=enabled
    Click                                   ${Coverage_Deductible_Value}

Select value from NAICS Code dropdown
    [Arguments]                             ${NAICS_Code}
#    Click                                   ${NAICS_Code_Remove_Button_ID}
    Click                                   ${NAICS_Code_ID}
    Wait For Elements State                 ${NAICS_Code_DropDown_ID}
    Type Text                               ${NAICS_Code_Input_ID}              ${NAICS_Code}
    Keyboard Key                            Press                               Enter

Select Applicant Have a Website
    [Arguments]                             ${Has_Website}
    ${Has_Website_ID}                       Get From Dictionary                 ${Applicant_Have_Website_ID}        ${Has_Website}
    Click                                   ${Has_Website_ID}

Enter Domain
    [Arguments]                             ${Domain}
    Wait For Elements State                 ${Domain_ID}                        state=enabled
    Fill Text                               ${Domain_ID}                        ${Domain}

Click Add Domain Button
    Click                                   ${Add_Domain_ID}

Click Remove Domain Button
    Wait For Elements State                 ${Remove_Domain_ID}                 state=enabled
    Click                                   ${Remove_Domain_ID}                 clickCount=2

Enter Last Year Revenue
    [Arguments]                             ${Last_Year_Revenue}
    Fill Text                               ${Last_Year_Revenue_ID}             ${Last_Year_Revenue}

Enter Contact Person Phone Number
    [Arguments]                             ${Contact_Person_Phone}
    Focus                                   ${Contact_Person_Phone_ID}
    Fill Text                               ${Contact_Person_Phone_ID}          ${Contact_Person_Phone}

Select value from Coverage Limit dropdown
    [Arguments]                             ${Coverage_Limit}
    Wait For Elements State                 ${Coverage_Limit_ID}                state=enabled
    click                                   ${Coverage_Limit_ID}
    ${Coverage_Limit_Value}                 Get From Dictionary                 ${Coverage_Limit_Values}            ${Coverage_Limit}
    Wait For Elements State                 ${Coverage_Limit_Value}             state=enabled
    Click                                   ${Coverage_Limit_Value}

