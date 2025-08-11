*** Settings ***
Library                                             Browser

*** Variables ***
${Questions_URL}                                   https://dev-admin.squarerisk.net/questions
${Heading_Text}                                    Manage your Questions
${Add_New_Button_ID}                               xpath=//button[normalize-space()='+ Add New']
${Add_New_Question_Window_ID}                      xpath=//h2[@id='customized-dialog-title']
${Add_New_Question_Heading1}                       Add New Question
${Add_New_Question_Heading2}                       That will help you to know more about customer
${Name_Input_Field_ID}                             xpath=//input[@name="name"]
${Label_Input_Field_ID}                            xpath=//input[@name="label"]
${Type_Input_Field_ID}                             xpath=//label[normalize-space()="Type"]
&{Type_DropdDown_Options_ID}                       Checkbox=//li[@data-value='CHECKBOX']                                                                                                                                   Radio=//li[@data-value='RADIO']                                                                                                                                         Number=//li[@data-value='NUMBER']                                                                                                                                       Text=//li[@data-value='TEXT']
${Options_Input_Field_ID}                          xpath=//input[@id='tags-outlined' and @type="text" and @placeholder="Enter Options"]
${Cancel_Button_ID}                                xpath=//button[normalize-space()='Cancel']
${Add_Button_ID}                                   xpath=//button[normalize-space()='Add']

*** Keywords ***
Verify the Questions Page loded
    Wait For Navigation                             ${Questions_URL}
    Highlight Elements                              ${Heading_Text}                     duration=2s
