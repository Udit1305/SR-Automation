*** Settings ***
Library                                                         Browser
Library                                                         SrCustomLib
Library                                                         Collections

*** Variables ***
#${Page_Heading}                                                xpath=//p[contains(.,'Check eligibility by answering below question')]
${StateOfPrimaryOperation_Question}                             xpath=//label[contains(@id, 'stateOfPrimaryOperation')]
#What is your state of primary operation?
${State_Question_Dropdown_Field}                                xpath=//div[contains(@class,'stateOfPrimaryOperation')]//div[contains(@class,'formio-choices') and @aria-autocomplete="list"]
${State_Question_Dropdown_Field_Expand}                         xpath=//div[contains(@class,'stateOfPrimaryOperation')]//div[contains(@class, 'formio-choices') and @role='combobox' and @aria-expanded="true"]
${State_Question_Input_Area}                                    xpath=//input[@name="search_terms" and @role="textbox" and contains(@aria-activedescendant, "stateOfPrimaryOperation")]
${State_Question_Select_Area}                                   xpath=//select[@name="data[stateOfPrimaryOperation]" and @ref="selectContainer"]
&{Select_State}                                                 AK=//div[@role="option" and @data-value="AK"]																															AL=//div[@role="option" and @data-value="AL"]																															AZ=//div[@role="option" and @data-value="AZ"]																															AR=//div[@role="option" and @data-value="AR"]																															CA=//div[@role="option" and @data-value="CA"]																															CO=//div[@role="option" and @data-value="CO"]																															CT=//div[@role="option" and @data-value="CT"]																															DE=//div[@role="option" and @data-value="DE"]																															DC=//div[@role="option" and @data-value="DC"]																															FL=//div[@role="option" and @data-value="FL"]																															GA=//div[@role="option" and @data-value="GA"]																															HI=//div[@role="option" and @data-value="HI"]																															ID=//div[@role="option" and @data-value="ID"]																															IL=//div[@role="option" and @data-value="IL"]																															IN=//div[@role="option" and @data-value="IN"]																															IA=//div[@role="option" and @data-value="IA"]																															KS=//div[@role="option" and @data-value="KS"]																															KY=//div[@role="option" and @data-value="KY"]																															LA=//div[@role="option" and @data-value="LA"]																															ME=//div[@role="option" and @data-value="ME"]																															MD=//div[@role="option" and @data-value="MD"]																															MA=//div[@role="option" and @data-value="MA"]																															MI=//div[@role="option" and @data-value="MI"]																															MN=//div[@role="option" and @data-value="MN"]																															MS=//div[@role="option" and @data-value="MS"]																															MO=//div[@role="option" and @data-value="MO"]																															MT=//div[@role="option" and @data-value="MT"]																															NE=//div[@role="option" and @data-value="NE"]																															NV=//div[@role="option" and @data-value="NV"]																															NH=//div[@role="option" and @data-value="NH"]																															NJ=//div[@role="option" and @data-value="NJ"]																															NM=//div[@role="option" and @data-value="NM"]																															NY=//div[@role="option" and @data-value="NY"]																															NC=//div[@role="option" and @data-value="NC"]																															ND=//div[@role="option" and @data-value="ND"]																															OH=//div[@role="option" and @data-value="OH"]																															OK=//div[@role="option" and @data-value="OK"]																															OR=//div[@role="option" and @data-value="OR"]																															PA=//div[@role="option" and @data-value="PA"]																															PR=//div[@role="option" and @data-value="PR"]																															RI=//div[@role="option" and @data-value="RI"]																															SC=//div[@role="option" and @data-value="SC"]																															SD=//div[@role="option" and @data-value="SD"]																															TN=//div[@role="option" and @data-value="TN"]																															TX=//div[@role="option" and @data-value="TX"]																															UT=//div[@role="option" and @data-value="UT"]																															VT=//div[@role="option" and @data-value="VT"]																															VA=//div[@role="option" and @data-value="VA"]																															VI=//div[@role="option" and @data-value="VI"]																															WA=//div[@role="option" and @data-value="WA"]																															WV=//div[@role="option" and @data-value="WV"]																		                                                    WI=//div[@role="option" and @data-value="WI"]                                                                        													WY=//div[@role="option" and @data-value="WY"]

${PoweredUnitsCount_Question}                                   xpath=//label[contains(@id, 'poweredUnitsCount')]
#How many powered units does the insured own or operate?

${BuildingVacancyStatus_Question}                               xpath=//label[contains(@id, 'buildingVacancyStatus')]
#Is the building vacant, unoccupied, under construction, or undergoing renovations?

${PercentageOfBuildingOccupied_Question}                        xpath=//label[contains(@id, 'percentageOfBuildingOccupied')]
#What percentage of the building is occupied?

${BuildingRentalPercentage_Question}                            xpath=//label[contains(@id, 'buildingRentalPercentage')]
#What percentage of the building is rented?

${MaxAgeOfFleetVehicles_Question}                               xpath=//label[contains(@id, 'maxAgeOfFleetVehicles')]
#What is the maximum age, in years, of trailers/tractors in the insured's fleet?

${AsbestosExposurePresence_Question}                            xpath=//label[contains(@id, 'asbestosExposurePresence')]
#Is there any asbestos exposure?

${InsuredIndependentContractorsUse_Question}                    xpath=//label[contains(@id, 'insuredIndependentContractorsUse')]
#What percentage of work is performed by contractors?

${InsuredUtilizeVideoSurveillanceSystem_Question}               xpath=//label[contains(@id, 'insuredUtilizeVideoSurveillanceSystem')]
#Is your property equipped with an active video surveillance system for enhanced security and loss prevention?

${CyberLimit_Question}                                          xpath=//label[contains(@id, 'cyberLimit')]
#What is the desired Cyber coverage limit?

${CyberLimit_Question_Input_Field}                              xpath=//label[contains(@id, 'cyberLimit')]/parent::div/following-sibling::div//input[@name='data[cyberLimit]']

${IneligibleActivitiesCowbell_Question}                         xpath=//label[contains(@id, 'ineligibleActivitiesCowbell')]
#Does the insured engage in any of the following activities: Adult Entertainment, Cannabis, Cryptocurrency, Data Aggregation, Gambling, Online Trading Platforms, Payment Processing, Political Affiliation Groups, or Social Media?

&{IneligibleActivitiesCowbell_Question_Radio_Buttons}           Yes=//label[contains(@id, 'ineligibleActivitiesCowbell')]/parent::div/following-sibling::div//input[@role='radio' and @value='yes']                                                                                                                                                           No=//label[contains(@id, 'ineligibleActivitiesCowbell')]/parent::div/following-sibling::div//input[@role='radio' and @value='no']

${PropertyCondemned_Question}                                   xpath=//label[contains(@id, 'propertyCondemned')]
#Is the building condemned?

${BuildingTiv_Question}                                         xpath=//label[contains(@id, 'buildingTiv')]
#What is the property TIV?

${BuildingRenovationYear_Question}                              xpath=//label[contains(@id, 'buildingRenovationYear')]
#When was the building last renovated?

${CannabisWasteRemoval_Question}                                xpath=//label[contains(@id, 'cannabisWasteRemoval')]
#Does this company perform any cannabis waste removal services?

${CannabisDeliveryOnly_Question}                                xpath=//label[contains(@id, 'cannabisDeliveryOnly')]
#Does the insured operated solely in delivery services?

${CannabisBeverages_Question}                                   xpath=//label[contains(@id, 'cannabisBeverages')]
#Does the insured operate with cannabis or cannabis-derived beverages?

${CannabisOutdoorGrow_Question}                                 xpath=//label[contains(@id, 'cannabisOutdoorGrow')]
#Does the insured have any outdoor growing operations?

${IneligibleActivitiesGreatAmericanProfessional_Question}       xpath=//label[contains(@id, 'ineligibleActivitiesGreatAmericanProfessional')]
#Does the insured engage in any of the following activities: Abortion Clinics, Assisted Living Facilities, Correctional Care, Group Homes, Hospitals, Inpatient Hospice, Medical Transportation, Nursing Homes, Physicians, Surgery Centers, Tele-Neurology, and Tele-Radiology

${ProfessionalLimit_Question}                                   xpath=//label[contains(@id, 'professionalLimit')]
#What is the desired Professional Liability Limit?

${BopLimit_Question}                                            xpath=//label[contains(@id, 'bopLimit')]
#What is the desired BOP Limit?

${GlLimit_Question}                                             xpath=//label[contains(@id, 'glLimit')]
#What is the desired General Liability Aggregate Limit?

${UmbrellaLimit_Question}                                       xpath=//label[contains(@id, 'umbrellaLimit')]
#What is the desired Umbrella Limit?

${ProductsLimit_Question}                                       xpath=//label[contains(@id, 'productsLimit')]
#What is the desired Products Liability Limit?

${TechEOLimit_Question}                                         xpath=//label[contains(@id, 'techEOLimit')]
#What is the desired Tech E&O Limit?

${BusinessStartYear_Question}                                   xpath=//label[contains(@id, 'businessStartYear')]
#What year was the business started?

${PropertyLimit_Question}                                       xpath=//label[contains(@id, 'propertyLimit')]
#What is the desired Property Limit?

${AutoLimit_Question}                                           xpath=//label[contains(@id, 'autoLimit')]
#What is the desired Auto Liability Limit?

${InlandMarineLimit_Question}                                   xpath=//label[contains(@id, 'inlandMarineLimit')]
#What is the desired inland marine limit?

${IneligibleActivitiesRainbow_Question}                         xpath=//label[contains(@id, 'ineligibleActivitiesRainbow')]
#Does the insured engage in any of the following activities: Nightclubs, Casinos, Food Trucks, Pool Halls, Bars and Taverns with No Food Service, Adult Entertainment, and Hookah Bars?

${AlcoholPercentage_Question}                                   xpath=//label[contains(@id, 'alcoholPercentage')]
#What percentage of sales are from alcohol?

${BuildingConstructionYear_Question}                            xpath=//label[contains(@id, 'buildingConstructionYear____1')]
#What year was the building construction completed?

${PriorLosses5Years_Question}                                   xpath=//label[contains(@id, 'priorLosses5Years')]
#How many prior losses does the insured have in the past 5 years?

${NumberOfPropertyUnits_Question}                               xpath=//label[contains(@id, 'numberOfPropertyUnits')]
#How many units does the insured have?

${BuildingOccupancyPercentage_Question}                         xpath=//label[contains(@id, 'buildingOccupancyPercentage')]
#What percent of the building is opccupied?

${NumberOfEmployees_Question}                                   xpath=//label[contains(@id, 'numberOfEmployees')]
#How many employees does the insured have?

${NumberOfStories_Question}                                     xpath=//label[contains(@id, 'numberOfStories')]
#How many stories does the building have?

${PropertyValue_Question}                                       xpath=//label[contains(@id, 'propertyValue')]
#What is the highest single property value for this submission?

${CombinedPropertyValue_Question}                               xpath=//label[contains(@id, 'combinedPropertyValue')]
#What is the total property value for this submission?

${CannabisOnsiteConsumption_Question}                           xpath=//label[contains(@id, 'cannabisOnsiteConsumption')]
#Does the insured have any on site cannabis consumption?

${TripleNetLease_Question}                                      xpath=//label[contains(@id, 'tripleNetLease')]
#Does the insured property have a triple net lease?

${TribalLands_Question}                                         xpath=//label[contains(@id, 'tribalLands')]
#Is the property located on tribal lands?

${AsbestosRisk_Question}                                        xpath=//label[contains(@id, 'asbestosRisk')]
#Is there any asbestos risk in the building?

${DanceFloor_Question}                                          xpath=//label[contains(@id, 'danceFloor')]
#Does the insured have a dance floor?

${BuildingRenovationsDuringTerm_Question}                       xpath=//label[contains(@id, 'buildingRenovationsDuringTerm')]
#Will there be any property remodeling or renovation in the next 12 months?

${CompanyRevenue_Question}                                      xpath=//label[contains(@id, 'companyRevenue')]
#What was the business revenue of the past 12 months?

${CompanyRevenue_Question_Input_Field}                          xpath=//div//input[contains(@id, 'companyRevenue')]

${WebsiteName_Question}                                         xpath=//label[contains(@id, 'websiteName')]
#If the insured has a website, please provide the URL.

${OccupancyPercentageIn_Question}                               xpath=//label[contains(@id, 'sr_ic_occupancyPercentageIn')]
#Occupancy Percentage

${CompanyOperationsYears_Question}                              xpath=//label[contains(@id, 'companyOperationsYears')]
#Years in Operation:

${EmployeeCount_Question}                                       xpath=//label[contains(@id, 'employeeCount')]
#Including yourself, how many full-time, part-time, and temporary employees does your business have? (Do not include subcontractors.)

${TotalBuildingValue_Question}                                  xpath=//label[contains(@id, 'totalBuildingValue')]
#Total Building Value

${BuildingSize_Question}                                        xpath=//label[contains(@id, 'buildingSize')]
#What is the size of the premises in square feet?

${BuildingBuiltYear_Question}                                   xpath=//label[contains(@id, 'buildingBuiltYear')]
#What year was the building built?

${HasPriorLosses_Question}                                      xpath=//label[contains(@id, 'hasPriorLosses')]
#Does the insured have any prior losses?

${Onsiteconsumptioncannabis_Question}                           xpath=//label[contains(@id, 'sr_ic_onsiteconsumptioncannabisexpandingonsiteconsumptionfuture')]
#Is there any onsite consumption of cannabis or plans of expanding to onsite consumption in the future?

${IsTripleNetLease_Question}                                    xpath=//label[contains(@id, 'isTripleNetLease____1')]
#Is this a triple net lease?

${tribal_land_Question}                                         xpath=//label[contains(@id, 'sr_ip_tribal_land')]
#Do any operations occur on tribal lands?

${MarketStrategy_Question}                                      xpath=//label[contains(@id, 'marketStrategy')]
#Market Strategy Guidance

${BuildingRoofMaterial_Question}                                xpath=//label[contains(@id, 'buildingRoofMaterial')]
#What type of roof does the building have?

${PercentOfCondoUnitsRented_Question}                           xpath=//label[contains(@id, 'percentOfCondoUnitsRented')]
#Are no more than 45% of condo units rented out?

${RoofRenovatedInLast15Years_Question}                          xpath=//label[contains(@id, 'roofRenovatedInLast15Years')]
#Has the roof been renovated in the last 15 years?

${LapseInInsuranceCoverage_Question}                            xpath=//label[contains(@id, 'lapseInInsuranceCoverage')]
#Has there been continuous insurance coverage with no lapses?

${HvacLastUpdatedYear_Question}                                 xpath=//label[contains(@id, 'hvacLastUpdatedYear')]
#Was the HVAC system updated within the last 30 years?

${Check_Eligibility_Button}                                     xpath=//button[normalize-space()='Check Eligiblity']

*** Keywords ***
Verify Page
	Wait For Condition      Url             contains            start-application?currentScreen=CheckEligibility
	Wait For Load State     domcontentloaded

#Verify Check Eligibiltiy Page
#    Wait For Elements State                                    ${Page_Heading}

Click on State Dropdown field
    Wait For Elements State    ${StateOfPrimaryOperation_Question}
    ${is_visible}=    Set Variable    False
    ${max_retries}=    Set Variable    5
    WHILE    '${is_visible}' == 'False'    limit=${max_retries}
        Click    ${State_Question_Dropdown_Field}
        Wait For Elements State    ${State_Question_Dropdown_Field_Expand}
        ${is_visible}=    Run Keyword And Return Status    Wait For Elements State    ${State_Question_Input_Area}      state=visible    timeout=2s
    END

    IF    '${is_visible}' == 'False'
        Fail    Could not open dropdown and show input after ${max_retries} retries.
    END

Select State from dropdown
    [Arguments]    ${Value}
    [Documentation]    Provide values like: *AK*, *AL*, *AZ*, ...
    Click on State Dropdown field
    Fill Text    ${State_Question_Input_Area}    ${Value}
    ${State_ID}=    Get From Dictionary    ${Select_State}    ${Value}
    Wait For Elements State    ${State_ID}    state=visible    timeout=10s
    Click    ${State_ID}
    Sleep    5s

#Cick on State Dropdown field
#	Wait For Elements State                                     ${StateOfPrimaryOperation_Question}
#	${is_visible}=          Set Variable                        False
#    ${max_retries}=         Set Variable                        5
#    WHILE    '${is_visible}' == 'False'    limit=${max_retries}
#        Click                                                       ${State_Question_Dropdown_Field}
#        ${is_visible}=      Run Keyword And Return Status       Wait For Elements State     ${State_Question_Input_Area}    state=visible       timeout=5s
#    END
#    IF    '${is_visible}' == 'False'
#        Fail    Could not open dropdown and show input after ${max_retries} retries
#    END
#
#Select State from dropdown
#    [Arguments]                                                 ${Value}
#    [Documentation]     Provide Values:
#    ...                 *AK*, *AL*, *AZ*, *AR*, *CA*, *CO*, *CT*, *DE*, *DC*, *FL*, *GA*, *HI*, *ID*, *IL*, *IN*, *IA*, *KS*, *KY*, *LA*, *ME*, *MD*, *MA*, *MI*, *MN*, *MS*, *MO*, *MT*, *NE*, *NV*, *NH*, *NJ*, *NM*, *NY*, *NC*, *ND*, *OH*, *OK*, *OR*, *PA*, *PR*, *RI*, *SC*, *SD*, *TN*, *TX*, *UT*, *VT*, *VA*, *VI*, *WA*, *WV*, *WI*, *WY*
#	Cick on State Dropdown field
##    Sleep    3s
#    Fill Text                                                   ${State_Question_Input_Area}                                ${Value}
#    ${State_ID}=            Get From Dictionary                 ${Select_State}                                             ${Value}
##    Scroll To Element                                           ${State_ID}
#    Wait For Elements State                                     ${State_ID}                                                 state=visible       timeout=10s
#    Click                                                       ${State_ID}

Provide Business Revenue
    [Arguments]                                                 ${Value}
    [Documentation]     Provide *Numeric* Values only
    Wait For Elements State                                     ${CompanyRevenue_Question}
#    Click                                                       ${CompanyRevenue_Question_Input_Field}
#    Clear Text                                                  ${CompanyRevenue_Question_Input_Field}
    Type Text                                                   ${CompanyRevenue_Question_Input_Field}                      ${Value}            delay=2s
    Press Keys                                                  ${CompanyRevenue_Question_Input_Field}                      Tab
#    ${value}=     Get Property                                  ${CompanyRevenue_Question_Input_Field}                      value
#    Log           Final value in input: ${value}

Provide Cyber Coverage Limit
    [Arguments]                                                 ${Value}
    [Documentation]     Provide *Numeric* Values only
    Wait For Elements State                                     ${CyberLimit_Question}
    Fill Text                                                   ${CyberLimit_Question_Input_Field}                          ${Value}

Cowbell: Select Radio button of Ineligible Activity Question
	[Arguments]                                                 ${Value}
	[Documentation]     Provide value as: Yes or NO
	Wait For Elements State                                     ${IneligibleActivitiesCowbell_Question}
	Click                                                       ${IneligibleActivitiesCowbell_Question_Radio_Buttons.${Value}}

Click Check Eligibility Button
    Click                                                       ${Check_Eligibility_Button}
