*** Settings ***
Resource                                                            ../Resources/PO/SR Agent Panel/Start-Application_Panel/Check_Eligibility_Page.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Start-Application_Panel/Start_Application_Page.robot

*** Variables ***
*** Comments ***
Below are the Questions getting asked on Check Eligibility

*** Keywords ***
What was the business revenue of the past 12 months?:
    [Arguments]                                                                         ${Value}
    Check_Eligibility_Page.Provide Business Revenue                                     ${Value}

What is your state of primary operation?:
    [Arguments]                                                                         ${Value}
    [Documentation]     Provide Values:
    ...                 *AK*, *AL*, *AZ*, *AR*, *CA*, *CO*, *CT*, *DE*, *DC*, *FL*, *GA*, *HI*, *ID*, *IL*, *IN*, *IA*, *KS*, *KY*, *LA*, *ME*, *MD*, *MA*, *MI*, *MN*, *MS*, *MO*, *MT*, *NE*, *NV*, *NH*, *NJ*, *NM*, *NY*, *NC*, *ND*, *OH*, *OK*, *OR*, *PA*, *PR*, *RI*, *SC*, *SD*, *TN*, *TX*, *UT*, *VT*, *VA*, *VI*, *WA*, *WV*, *WI*, *WY*
    Check_Eligibility_Page.Select State from dropdown                                   ${Value}

What is the desired Cyber coverage limit?
	[Arguments]                                                                         ${Value}
	Check_Eligibility_Page.Provide Cyber Coverage Limit                                 ${Value}

Click on the Check Eligibility Button and Verify Start Application Page
	Check_Eligibility_Page.Click Check Eligibility Button
	Start_Application_Page.Verify Page