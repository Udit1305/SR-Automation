*** Settings ***
Library                                                     Browser
Library                                                     SrCustomLib
Library                                                     Collections

*** Variables ***
#${Page_Heading}                                            xpath=//div[contains(@class, 'relative MuiBox-root')]/div[contains(.,'Select Carrier')]

&{View_More_Buttons}                                        Cyber_Insurance=//div[contains(text(), 'Cyber Insurance')]/child::div[contains(., 'View')]                                                                             General_Liability=//div[contains(text(),'General Liability')]/child::div[contains(., 'View')]                                                                          Product_Liability=//div[contains(text(), 'Product Liability')]/child::div[contains(., 'View')]                                                                         Property_Insurance=//div[contains(text(), 'Property Insurance')]/child::div[contains(., 'View')]                                                                       BOP=//div[contains(text(), 'BOP')]/child::div[contains(., 'View')]                                                                                                     Workers_Compensation=//div[contains(text(), 'Workers Compensation')]/child::div[contains(., 'View')]                                                                   Flood_Insurance=//div[contains(text(), 'Flood Insurance')]/child::div[contains(., 'View')]                                                                             D&O=//div[contains(text(), 'D&O')]/child::div[contains(., 'View')]                                                                                                     Liquor_Liability=//div[contains(text(), 'Liquor Liability')]/child::div[contains(., 'View')]                                                                           Earthquake_Insurance=//div[contains(text(), 'Earthquake Insurance')]/child::div[contains(., 'View')]                                                                   Special_Events=//div[contains(text(), 'Special Events')]/child::div[contains(., 'View')]

&{Select_BOP_Carriers}                                      Hiscox=//div[contains(.,'BOP')]//label[contains(.,'Hiscox')]                                                                                                           Rainbow=//div[contains(.,'BOP')]//label[contains(.,'Rainbow')]                                                                                                         Alchemy=//div[contains(.,'BOP')]//label[contains(.,'Alchemy')]

&{Select_BR_Carriers}                                       GBLI=//div[contains(.,'Builders Risk Liability')]//label[contains(.,'GBLI')]

&{Select_Cyber_Carriers}                                    Dual=//div[contains(.,'Cyber Insurance')]//label[contains(.,'DUAL')]                                                                                                   Cowbell=//div[contains(.,'Cyber Insurance')]//label[contains(.,'Cowbell')]                                                                                             CFC-Admitted=//div[contains(.,'Cyber Insurance')]//label[contains(.,'CFC- Admitted')]                                                                                  CFC-Non-Admitted=//div[contains(.,'Cyber Insurance')]//label[contains(.,'CFC- Non-Admitted

&{Select_D&O_Carriers}                                      Coalition=//div[contains(.,'D&O')]//label[contains(.,'Coalition')]

&{Select_E&O_Carriers}                                      CFC=//div[contains(.,'E&O')]//label[contains(.,'CFC')]

&{Select_Flood_Carriers}                                    Netpune=//div[contains(.,'Flood Insurance')]//label[contains(.,'Neptune')]                                                                                             CatCoverage=//div[contains(.,'Flood Insurance')]//label[contains(.,'CatCoverage')]

&{Select_GL_Carriers}                                       Hiscox=//div[contains(.,'General Liability')]//label[contains(.,'Hiscox')]                                                                                             NECS=//div[contains(.,'General Liability')]//label[contains(.,'NEC')]                                                                                                  First_Insurance=//div[contains(.,'General Liability')]//label[contains(.,'First Insurance')]                                                                           Blitz=//div[contains(.,'General Liability')]//label[contains(.,'Blitz')]                                                                                               Talisman=//div[contains(.,'General Liability')]//label[contains(.,'Talisman Insurance Company')]

&{Select_PrdL_Carriers}                                     Blitz=//div[contains(.,'Product Liability')]//label[contains(.,'Blitz')]                                                                                               Talisman=//div[contains(.,'Product Liability')]//label[contains(.,'Talisman Insurance Company')]

&{Select_PrpL_Carriers}                                     Blitz=//div[contains(.,'Property Insurance')]//label[contains(.,'Blitz')]                                                                                              Talisman=//div[contains(.,'Property Insurance')]//label[contains(.,'Talisman Insurance Company')]

&{Select_WC_Carriers}                                       Amtrust=//div[contains(.,'Workers Compensation')]//label[contains(.,'Amtrust')]                                                                                        CoveRisk=//div[contains(.,'Workers Compensation')]//label[contains(.,'CoveRisk')]                                                                                      Employers=//div[contains(.,'Workers Compensation')]//label[contains(.,'Employers')]                                                                                    Midwestern=//div[contains(.,'Workers Compensation')]//label[contains(.,'Midwestern')]                                                                                  Markel=//div[contains(.,'Workers Compensation')]//label[contains(.,'Markel')]                                                                                          HighView=//div[contains(.,'Workers Compensation')]//label[contains(.,'HighView')]

${Continue_Button}                                          xpath=//button[normalize-space()='Continue']

*** Keywords ***
#Verify Select Carrier Page
#    Wait For Elements State                                 ${Page_Headming}

Click on BOP Carriers
    [Arguments]                                             @{Carriers}
    [Documentation]                                         Provide Carrier Names: *Alchemy*, *Hiscox*, *Rainbow*
    FOR    ${Carrier}    IN    @{Carriers}
        Log    >>> Processing Carrier: ${Carrier}
        ${carrierID}=                                       Get From Dictionary                             ${Select_BOP_Carriers}      ${Carrier}
	    Scroll To Element                                   ${carrierID}
	    Click                                               ${carrierID}
    END

Click on Builders Risk Carriers
    [Arguments]                                             @{Carriers}
    [Documentation]                                         Provide Carrier Names: *GBLI*
    FOR    ${Carrier}    IN    @{Carriers}
        Log    >>> Processing Carrier: ${Carrier}
        ${carrierID}=                                       Get From Dictionary                             ${Select_BR_Carriers}      ${Carrier}
	    Scroll To Element                                   ${carrierID}
	    Click                                               ${carrierID}
    END

Click on Cyber Carriers
    [Arguments]                                             @{Carriers}
    [Documentation]                                         Provide Carrier Names: *Dual*, *Cowbell*, *CFC-Admitted*, *CFC-Non-Admitted*
    FOR    ${Carrier}    IN    @{Carriers}
        Log    >>> Processing Carrier: ${Carrier}
        ${carrierID}=                                       Get From Dictionary                             ${Select_Cyber_Carriers}      ${Carrier}
	    Scroll To Element                                   ${carrierID}
	    Click                                               ${carrierID}
    END

Click on D&O Carriers
    [Arguments]                                             @{Carriers}
    [Documentation]                                         Provide Carrier Names: *Coalition*
    FOR    ${Carrier}    IN    @{Carriers}
        Log    >>> Processing Carrier: ${Carrier}
        ${carrierID}=                                       Get From Dictionary                             ${Select_D&O_Carriers}      ${Carrier}
	    Scroll To Element                                   ${carrierID}
	    Click                                               ${carrierID}
    END

Click on E&O Carriers
    [Arguments]                                             @{Carriers}
    [Documentation]                                         Provide Carrier Names: *CFC*
    FOR    ${Carrier}    IN    @{Carriers}
        Log    >>> Processing Carrier: ${Carrier}
        ${carrierID}=                                       Get From Dictionary                             ${Select_E&O_Carriers}      ${Carrier}
	    Scroll To Element                                   ${carrierID}
	    Click                                               ${carrierID}
    END

Click on Flood Insurance Carriers
    [Arguments]                                             @{Carriers}
    [Documentation]                                         Provide Carrier Names: *Netpune*, *CatCoverage*
    FOR    ${Carrier}    IN    @{Carriers}
        Log    >>> Processing Carrier: ${Carrier}
        ${carrierID}=                                       Get From Dictionary                             ${Select_Flood_Carriers}      ${Carrier}
	    Scroll To Element                                   ${carrierID}
	    Click                                               ${carrierID}
    END

Click on General Liability Carriers
    [Arguments]                                             @{Carriers}
    [Documentation]                                         Provide Carrier Names: *Hiscox*, *First_Insurance*, *Blitz*, *Talisman*
    FOR    ${Carrier}    IN    @{Carriers}
        Log    >>> Processing Carrier: ${Carrier}
        ${carrierID}=                                       Get From Dictionary                             ${Select_GL_Carriers}      ${Carrier}
	    Scroll To Element                                   ${carrierID}
	    Click                                               ${carrierID}
    END

Click on Product Liability Carriers
    [Arguments]                                             @{Carriers}
    [Documentation]                                         Provide Carrier Names: *Blitz*, *Talisman*
    FOR    ${Carrier}    IN    @{Carriers}
        Log    >>> Processing Carrier: ${Carrier}
        ${carrierID}=                                       Get From Dictionary                             ${Select_PrdL_Carriers}      ${Carrier}
	    Scroll To Element                                   ${carrierID}
	    Click                                               ${carrierID}
    END

Click on Property Liability Carriers
    [Arguments]                                             @{Carriers}
    [Documentation]                                         Provide Carrier Names: *Blitz*, *Talisman*
    FOR    ${Carrier}    IN    @{Carriers}
        Log    >>> Processing Carrier: ${Carrier}
        ${carrierID}=                                       Get From Dictionary                             ${Select_PrpL_Carriers}      ${Carrier}
	    Scroll To Element                                   ${carrierID}
	    Click                                               ${carrierID}
    END

Click on Workers Comp Carriers
    [Arguments]                                             @{Carriers}
    [Documentation]                                         Provide Carrier Names: *Amtrust*, *CoveRisk*, *Employers*, *Midwestern*, *Markel*, *HighView*
    FOR    ${Carrier}    IN    @{Carriers}
        Log    >>> Processing Carrier: ${Carrier}
        ${carrierID}=                                       Get From Dictionary                             ${Select_WC_Carriers}      ${Carrier}
	    Scroll To Element                                   ${carrierID}
	    Click                                               ${carrierID}
    END

Click on the View More Button of Product
	[Arguments]                                             @{Products}
	FOR    ${Product}    IN    @{Products}
        Log    >>> fetching View More Button ID for: ${Product}
		${viewMoreButton_ID}=       Get From Dictionary     ${View_More_Buttons}                            ${Product}
		Scroll To Element                                   ${viewMoreButton_ID}
		Click                                               ${viewMoreButton_ID}
	END

Click on the Continue Button
	Click                                                   ${Continue_Button}