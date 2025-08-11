*** Settings ***
Library                                         SeleniumLibrary
Library                                         ../../../../../../SR_Custom_Library/SrCustomLib.py

*** Variables ***
${Class_Code_ID}                                //label[normalize-space()='Class Code']/ancestor::div[@class="field-wrapper"]//div[@class="choices form-group formio-choices"]

&{Select_Class_Codes}                           Class_0005=//div[@role='listbox']/*[normalize-space() = 'Nurserymen, Drivers, Incidental Landscaping (Cannabis)']                                                     Class_0006=//div[@role='listbox']/*[normalize-space() = 'Farms & Drivers (Cannabis)']                                                                                 Class_0035=//div[@role='listbox']/*[normalize-space() = 'Florists: Cultivating or Gardening (Cannabis)']                                                              Class_4611=//div[@role='listbox']/*[normalize-space() = 'Medicine or Pharmaceutical Preparation (Cannabis)']                                                          Class_2172=//div[@role='listbox']/*[normalize-space() = 'Cannabis Products Manufacturing']                                                                            Class_8017=//div[@role='listbox']/*[normalize-space() = 'Retail stores (Cannabis Dispensaries)']                                                                      Class_8018=//div[@role='listbox']/*[normalize-space() = 'Wholesale stores (Cannabis wholesale)']

${Payroll_Amount_ID}                            //label[contains(.,'Payroll Amount')]
${Payroll_Amount_Input_ID}                      //label[contains(.,'Payroll Amount')]/ancestor::div[@class="field-wrapper"]//input[@name="data[sr_ic_payroll_amount]"]

*** Keywords ***
Select Class Code
	[Arguments]                                 ${Class_ID}
	Verify the Class Code Field is available
	Click Element                               ${Class_Code_ID}
	Sleep    2s
	Click Element                               ${Select_Class_Codes.${Class_ID}}

Provide Payroll Amount
	[Arguments]                                 ${Payroll_Amount}
	Verify the Payroll Amount ID Field is available
	Input Text                                  ${Payroll_Amount_Input_ID}                                        ${Payroll_Amount}

Verify the Class Code Field is available
	Wait Until Element Is Enabled               ${Class_Code_ID}

Verify the Payroll Amount ID Field is available
	Wait Until Element Is Enabled               ${Payroll_Amount_ID}
	Wait Until Element Is Enabled               ${Payroll_Amount_Input_ID}

