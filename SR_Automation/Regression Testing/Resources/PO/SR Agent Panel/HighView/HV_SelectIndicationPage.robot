*** Settings ***
Library                                                     SeleniumLibrary
Library                                                     ../../../../../../SR_Custom_Library/SrCustomLib.py

*** Variables ***
#HighView Variables
${Image}                                                    //img[contains(@src,'highveiw.png')]
${TagValue}                                                 //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(@class,'MuiTypography-root MuiTypography-body1 css-isnbgl')]
${SelectToQuoteButton}                                      //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//button[contains(., 'Select to Quote')]
${ViewCoverages}                                            //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'View Coverages')]
${HideDetailsButton}                                        //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'Hide Details')]
${AddToProposalCheckbox}                                    //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'Add to Proposal')]/preceding-sibling::label/span[contains(@class,'MuiCheckbox-root')]
${TotalPremiumAmount}                                       //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'Total Premium')]/following-sibling::h5
${AgentCommissionAmount}                                    //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'Agent Commission')]//following-sibling::h5
${LimitPerAccidentAmount}                                   //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'limits And Deductibles')]//parent::div//following-sibling::div/p[contains(.,'Limit Per Accident')]/following-sibling::p[contains(@class,'MuiTypography-root MuiTypography-body1 css-veegds')]
${LimitPerDiseaseAmount}                                    //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'limits And Deductibles')]//parent::div//following-sibling::div/p[contains(.,'Limit Per Disease')]/following-sibling::p[contains(@class,'MuiTypography-root MuiTypography-body1 css-veegds')]
${LimitPerEmployeeAmount}                                   //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'limits And Deductibles')]//parent::div//following-sibling::div/p[contains(.,'Limit Per Employee')]/following-sibling::p[contains(@class,'MuiTypography-root MuiTypography-body1 css-veegds')]
${BasePremiumAmount}                                        //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'pricing')]//parent::div//following-sibling::div/p[contains(.,'base Premium')]/following-sibling::p[contains(@class,'MuiTypography-root MuiTypography-body1 css-veegds')]
${NetPremiumAmount}                                         //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'pricing')]//parent::div//following-sibling::div/p[contains(.,'net Premium')]/following-sibling::p[contains(@class,'MuiTypography-root MuiTypography-body1 css-veegds' )]
${PlacementFeeAmount}                                       //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'pricing')]//parent::div//following-sibling::div/p[contains(.,'placement Fee')]/following-sibling::p[contains(@class,'MuiTypography-root MuiTypography-body1 css-veegds')]
${PolicyFeeAmount}                                          //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'pricing')]//parent::div//following-sibling::div/p[contains(.,'policy Fee')]/following-sibling::p[contains(@class,'MuiTypography-root MuiTypography-body1 css-veegds')]
${TotalTaxesAmount}                                         //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'pricing')]//parent::div//following-sibling::div/p[contains(.,'total Taxes')]/following-sibling::p[contains(@class,'MuiTypography-root MuiTypography-body1 css-veegds')]
${GrandTotalAmount}                                         //img[contains(@src,'highveiw.png')]/ancestor::div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 css-16mo8fe']//p[contains(., 'pricing')]//parent::div//following-sibling::div/p[contains(.,'grand Total')]/following-sibling::p[contains(@class,'MuiTypography-root MuiTypography-body1 css-1lkiiy')]

*** Keywords ***
Verify HighView Quote Generated
	Wait Until Element Is Visible                           ${Image}

Verify Tag
	SeleniumLibrary.Element Text Should Be                  ${TagValue}                         Admitted

Click on View Coverages
	Click Element                                           ${ViewCoverages}

Verify Quote
	Verify Total Premium Amount
	Verify Agent Commission Amount
	Verify Limit Per Accident Amount
	Verify Limit Per Disease Amount
	Verify Limit Per Employee Amount
	Verify Base Premium Amount
	Verify Net Premium Amount
	Verify Placement Fee Amount
	Verify Policy Fee Amount
	Verify Total Taxes Amount
	Verify Grand Total Amount

Verify Total Premium Amount
	SeleniumLibrary.Element Text Should Be                  ${TotalPremiumAmount}               ${Total_PremiĀum}

Verify Agent Commission Amount
	SeleniumLibrary.Element Text Should Be                  ${AgentCommissionAmount}            $0.00

Verify Limit Per Accident Amount
	SeleniumLibrary.Element Text Should Be                  ${LimitPerAccidentAmount}           $500,000

Verify Limit Per Disease Amount
	SeleniumLibrary.Element Text Should Be                  ${LimitPerDiseaseAmount}            $500,000

Verify Limit Per Employee Amount
	SeleniumLibrary.Element Text Should Be                  ${LimitPerEmployeeAmount}           $100,000

Verify Base Premium Amount
	${BasePremiumAmount_Text}                               Get Text                            ${BasePremiumAmount}
	Amount Should be Equal                                  ${BasePremiumAmount_Text}           ${Net_Premium}

Verify Net Premium Amount
	${NetPremiumAmount_Text}                                Get Text                            ${NetPremiumAmount}
	Amount Should be Equal                                  ${NetPremiumAmount_Text}            ${Net_Premium}

Verify Placement Fee Amount
	SeleniumLibrary.Element Text Should Be                  ${PlacementFeeAmount}               $100.00

Verify Policy Fee Amount
	SeleniumLibrary.Element Text Should Be                  ${PolicyFeeAmount}                  $100.00

Verify Total Taxes Amount
	SeleniumLibrary.Element Text Should Be                  ${TotalTaxesAmount}                 $0.00

Verify Grand Total Amount
	SeleniumLibrary.Element Text Should Be                  ${GrandTotalAmount}                 $22038.00
	
Click on Hide Details
	Click Element                                           ${HideDetailsButton}

Click on Select To Quote button
	Click Button                                            ${SelectToQuoteButton}

Click on Add To Proposal Checkbox
	Click Element                                           ${AddToProposalCheckbox}

Get Formatted Currency
	[Arguments]                                             ${text}
	${Amount_Str}                                           Remove Char                         ${text}
	${Amount_Int}                                           Convert To Number                   ${Amount_Str}
	${Formatted_Amount}                                     Format Currency                     ${Amount_Int}
	RETURN                                                  ${Formatted_Amount}

Amount Should be Equal
	[Arguments]                                             ${Actual_Amount}                    ${Expected_Amount}
	${Formatted_Amount}                                     Get Formatted Currency              ${Actual_Amount}
	Should Be Equal                                         ${Formatted_Amount}                 ${Expected_Amount}