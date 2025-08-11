*** Settings ***
Library                                     Browser
Library                                     ../../../../../../SR_Custom_Library/SrCustomLib.py

*** Variables ***
${Form_Name}                                xpath=//div[@class="container wizard-nav-container"]/child::div[@class="step active"]//div[contains(text(),'Cowbell')]
${Additional_Information_Panel_ID}          xpath=//span[normalize-space()='Additional Information']
${Number_Of_Employees_ID}                   xpath=//div/span[normalize-space()="Additional Information"]/ancestor::div[contains(@class, "card border")]//div/input[contains(@name, "[sr_ic_number_of_employees]")]
${Company_Type_ID}                          xpath=//select[contains(@name,"[sr_ic_companyType]")]/ancestor::div[@role='combobox']
&{Company_Type_Values}                      Non-Corporate=//div[contains(@id, 'sr_ic_companyType-item-choice') and @data-value = "nonCorporate"]                                                                    Non-Profit=//div[contains(@id, 'sr_ic_companyType-item-choice') and @data-value = "nonProfit"]                                                                          Nonprofit=//div[contains(@id, 'sr_ic_companyType-item-choice') and @data-value = "nonprofit"]                                                                           Partnership=//div[contains(@id, 'sr_ic_companyType-item-choice') and @data-value = "partnership"]                                                                       Private=//div[contains(@id, 'sr_ic_companyType-item-choice') and @data-value = "private"]                                                                               Public=//div[contains(@id, 'sr_ic_companyType-item-choice') and @data-value = "public"]                                                                                 Public_Sector=//div[contains(@id, 'sr_ic_companyType-item-choice') and @data-value = "publicSector"]

*** Keywords ***
Verify the Cowbell form loaded
    Wait For Elements State                 ${Form_Name}
    Focus                                   ${Form_Name}
    Click    selector

Verify the Form Contains Additional Information Panel
    Wait For Elements State                 ${Additional_Information_Panel_ID}

Enter Number Of Employees
    [Arguments]                             ${Number_Of_Employees}
    Fill Text                               ${Number_Of_Employees_ID}                   ${Number_Of_Employees}

Select value from Company Type dropdown
    [Arguments]                             ${Company_Type}
    Wait For Elements State                 ${Company_Type_ID}
    Click                                   ${Company_Type_ID}
    ${Company_Type_Value}                   Get From Dictionary                         ${Company_Type_Values}            ${Company_Type}
    Wait For Elements State                 ${Company_Type_Value}                       state=enabled
    Click                                   ${Company_Type_Value}


