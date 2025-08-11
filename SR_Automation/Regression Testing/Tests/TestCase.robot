*** Settings ***
Documentation                                                           Perform SR Testcases
Resource                                                                ../Resources/Common.robot
Resource                                                                ../Resources/SquareRiskPortal.robot
Resource                                                                ../Resources/Cyber_Resource.robot
Resource                                                                ../Resources/Check_Eligibility_Resource.robot
Resource                                                                ../Resources/Start_Application_Resource.robot
Test Setup                                                              Common.Open the Browser
#Test Teardown

*** Comments ***
robot -d results -v ENV:DEV tests/testcase.robot
robot -d results -v ENV:DEV -L Debug  tests/testcase.robot
robot -d results -v ENV:DEV -L Trace  tests/testcase.robot

 For Highview Provide Below Codes:
	Class_0005='Nurserymen, Drivers, Incidental Landscaping (Cannabis)'
	Class_0006='Farms & Drivers (Cannabis)'
	Class_0035='Florists: Cultivating or Gardening (Cannabis)'
	Class_4611='Medicine or Pharmaceutical Preparation (Cannabis)'
	Class_2172='Cannabis Products Manufacturing'
	Class_8017='Retail stores (Cannabis Dispensaries)'
	Class_8018='Wholesale stores (Cannabis wholesale)'

 For Products need to provide below codes:
	Residential_Flood=Residential_Flood
	Commercial_Flood=Commercial_Flood
	Cyber=Cyber
	Workers_Comp=Workers_Comp
	Cannabis_Workers_Comp=Cannabis_Workers_Comp
	Cannabis_Gen_L=Cannabis_Gen_L
	Cannabis_Prod_L=Cannabis_Prod_L
	Cannabis_Prop_L=Cannabis_Prop_L
	Commercial_Gen_L=Commercial_Gen_L


 For Carriers Need to provide below Codes:
	At-Bay
	Cowbell
	Dual
	Neptune
	Poulton
	Blitz
	Argo
	Brit
	Chaucer
	Chubb
	Hiscox
	Vave
	AmTrust
	CoveRisk
	Employers
	HighView
	CoverWhale
	Canngen
	Kinsale
	HartFord
	certain_A

For Cyber need to provide below values:
Coverage Deductibles:
    2500
    5000
    10000
    25000
    50000

Coverage Limits:
    100000
    500000
    750000
    1000000
    2000000
    3000000

Company Type:
    Non-Corporate
    Non-Profit
    Nonprofit
    Partnership
    Private
    Public
    Public_Sector

*** Test Cases ***
#Cyber Test Case
#	Given SquareRiskPortal.Navigate to SquareRisk Agent Portal
#	When Common.Get Email and Password of                                                                           Agent
#	And Common.Get Dummy Data                                                                                       MA
#	Then SquareRiskPortal.Perform Login by providing Email & Password                                               ${email}    ${Password}
#	And SquareRiskPortal.Click "Login" Button and Verify the user navigated the Home Page
#	And SquareRiskPortal.Click on "+ Add New" Button and verify Select Product Page
#	And SquareRiskPortal.Select Product Name                                                                        Cyber
#	And SquareRiskPortal.Select State From Dropdown                                                                 MA
#	And SquareRiskPortal.Select Carriers                                                                            At-Bay      Cowbell     Dual
##	And SquareRiskPortal.Select Carriers                                                                            At-Bay      Dual
#	Given SquareRiskPortal.Enter Insured Company Name for                                                           ${Company_name}
#	When SquareRiskPortal.Click on "Start Application" Button
#    Then Cyber_Resource.Indication_Common.Verify Indication Common Information form loaded Successfully
#    Given Cyber_Resource.Indication_Common.Provide Insured Company Name                                             ${Company_name}
#    And Cyber_Resource.Indication_Common.Provide Coverage Effective Date                                            ${Effective_Date_Tomorrow}
#    And Cyber_Resource.Indication_Common.Provide Google Address                                                     ${Google_Address}
##    And Cyber_Resource.Indication_Common.Check/Uncheck Don't see your address checkbox                              Check
##    And Cyber_Resource.Indication_Common.Provide Address Details                                                    ${AddrL1}    ${AddrL2}    ${City}    Test    ${State_Abbr}    ${Zip}
#    And Cyber_Resource.Indication_Common.Select Coverage Deductible                                                 5000
#    And Cyber_Resource.Indication_Common.Select NAICS Code                                                          521110
##    And Cyber_Resource.Indication_Common.Click on Radio Button of Applicant Have a Website                          Yes
##    And Cyber_resource.Indication_Common.Click on Remove Domain Button
#    And Cyber_Resource.Indication_Common.Enter Website Detail                                                       hcvt.com
#    And Cyber_Resource.Indication_Common.Provide Last Year Revenue                                                  2000000
#    And Cyber_Resource.Indication_Common.Select Coverage Limit                                                      1000000
#    And Cyber_Resource.Indication_Common.Provide Contact Person Phone Number                                        ${Default_Phone_Number}
#    When SquareRiskPortal.Click on "Next Button" on the Form and verify data saved successfully Alert
#    Then Cyber_Resource.Cowbell_Indication_Form.Verify Cowbell form loaded successfully
#    Given Cyber_Resource.Cowbell_Indication_Form.Provide Number of Employees                                        150
#    And Cyber_Resource.Cowbell_Indication_Form.Select Company Type as                                               Partnership
#    When SquareRiskPortal.Click on "Get Indication" Button and verify the page "Select Inidication" gets loaded -- Multi Carriers
#    Then SquareRiskPortal.Wait until all quotes get fetched on Select Indicatoin Screen                             Dual      Cowbell     At-Bay
#    And SquareRiskPortal.Select Fetched Quotes and Verify                                                           Dual      Cowbell     At-Bay
#    And SquareRiskPortal.Click on the "Submit To Quote" Button
#    Then Cyber_Resource.Quote_Common.Verify Quote Common Information form loaded Successfully
#    Given Cyber_Resource.Quote_Common.Fill Contact Person Details                                                   ${First_name}    ${Last_name}    ${Default_Phone_Number}    ${Email_Address}
#    And Cyber_Resource.Quote_Common.Select Operating Countries                                                      United States
##    And Cyber_Resource.Quote_Common.Select "Does the Applicant keep offline backups?" As(Yes/No):                  Yes
##    And Cyber_Resource.Quote_Common.Select "Does the Applicant encrypt all sensitive information at rest?" As(Yes/No):       Yes
#    And Cyber_Resource.Quote_Common.Select "Does the Applicant have multi-factor authentication?" As(Yes/No):       Yes
##    And Cyber_Resource.Quote_Common.Select "Do you use cloud-based email services?" As(Yes/No):                    Yes
#    Cyber_Resource.Quote_Common.Select "Received a claim or complaint regarding privacy, data protection or network security?" As(Yes/No):           Yes
#    Cyber_Resource.Quote_Common.Provide Claim Details when Question: "Received a claim or complaint regarding privacy, data protection or network security?" is selected as "Yes":    05/10/2023    158946    Test
#    When SquareRiskPortal.Click on "Next Button" on the Form and verify data saved successfully Alert
#    Then Cyber_Resource.At-Bay_Quote_Form.Verify At-Bay Quote Carrier form loaded Successfully
##    And Cyber_Resource.At-Bay_Quote_Form.Select "Does the Applicant store or process personal, health, or credit card information of more than 500,000 individuals?" As(Yes/No):       Yes
#    And Cyber_Resource.At-Bay_Quote_Form.Select "Is the applicant engaged in any business activities related to adult content, cannabis, cryptocurrency or blockchain, debt collection, gambling, managed IT, or payment processing?" As(Yes/No):                                                      Yes
#    And Cyber_Resource.At-Bay_Quote_Form.Select "Please select all that apply:" As:                                 cryptocurrency
##    And Cyber_Resource.At-Bay_Quote_Form.Select "In the last three years, has the Applicant experienced more than $10,000 of Cyber Events, Losses, or been the subject of Claims made for Wrongful Acts that would fall within the scope of the Policy for which the Applicant is applying?" As(Yes/No):  No
#    And Cyber_Resource.At-Bay_Quote_Form.Select "Is the Applicant aware of any fact, circumstance, situation, event, or Wrongful Act which reasonably could give rise to a Cyber Event, Loss?" As(Yes/No):                                                                                              Yes
#    And Cyber_Resource.At-Bay_Quote_Form.Provide "Description of known fact, circumstance, situation, event, or Wrongful Act:" As:   Test
#    When SquareRiskPortal.Click on "Next Button" on the Form and verify data saved successfully Alert
#    Then Cyber_Resource.Cowbell_Quote_Form.Verify Cowbell Quote Carrier form loaded Successfully
#    Given Cyber_Resource.Cowbell_Quote_Form.Provide Customer Email:                                                 ${Email_Address}
#    And Cyber_Resource.Cowbell_Quote_Form.Provide Year Business Established:                                        2005
#    And Cyber_Resource.Cowbell_Quote_Form.Select "Does the policyholder agree to be the Designated Information Security Contact?" As(Yes/No):      No
#    And Cyber_Resource.Cowbell_Quote_Form.Select "Does policyholder provide mandatory information security training to all employees at least annually?" As(Yes/No):   No
#    And Cyber_Resource.Cowbell_Quote_Form.Select "Do policy holder employees authenticate funds transfer requests?" As(Yes/No):       No
#    And Cyber_Resource.Cowbell_Quote_Form.Select "Do policy holder employees prevent unauthorized employees from initiating wire transfers?" As(Yes/No):       No
#    And Cyber_Resource.Cowbell_Quote_Form.Select "Do policy holder employees verify vendor/supplier bank accounts before adding to accounts payable systems?" As(Yes/No):  No
#    When SquareRiskPortal.Click on "Next Button" on the Form and verify data saved successfully Alert
#    Then Cyber_Resource.Dual_Quote_Form.Verify Dual Quote Carrier form loaded Successfully
#    And SquareRiskPortal.Click on "Proceed To Quote" Button and verify the page "Bind Quote" gets loaded
#    Then SquareRiskPortal.Wait until all quotes get fetched on Bind Quote Screen                                    Dual      Cowbell     At-Bay
#    And SquareRiskPortal.Click on the "Continue To Bind" Button                                                     Dual
#    And SquareRiskPortal.Verify Signature Page Loaded
#    When SquareRiskPortal.Wait until the Signature PDF generated
####    And SquareRiskPortal.Click on the "Provide Agents Signature" Button and wait for Signature window
####    Then SquareRiskPortal.Click on the "Agree & Continue" Button
####    And Cyber_Resource.At-Bay.Signature.Provide Producer name, License Number, Agency Name, Email & Phone Number:    Test    Test12246    Test    ${Email_Address}    ${Default_Phone_Number}
####    And SquareRiskPortal.Click on Signature Feild and provide Signature by clicking on OK Button
####    And SquareRiskPortal.Click on the "Finish" Button to close the Signature window
#    Then SquareRiskPortal.Upload signed Signature PDF file by clicking on Browse File:                                   ${Sameple_File_Location}
#    And SquareRiskPortal.Click on the "Continue To Payment" Button
#    Then SquareRiskPortal.Verify Payment Page Loaded Successfully
#    And SquareRiskPortal.Select Payment Type as "SquareRisk Bill to Agent"
#    And SquareRiskPortal.Select Payment Method: Credit Card
#    And SquareRiskPortal.Provide Credit Card Details                                                                ${Default_CreditCard_Number}    ${Default_CreditCard_Expiration_Date}   ${Default_CVC}
#    And SquareRiskPortal.Click on "Process Bind Order" Button and verify Download Policy Page Loaded

#Cyber Test Case -- DUAL
#	Given SquareRiskPortal.Navigate to SquareRisk Agent Portal
#	When Common.Get Email and Password of                                                                           Agent
#	And Common.Get Dummy Data                                                                                       MA
#	Then SquareRiskPortal.Perform Login by providing Email & Password                                               ${email}    ${Password}
#	And SquareRiskPortal.Click "Login" Button and Verify the user navigated the Home Page
#	And SquareRiskPortal.Click on "+ Add New" Button and verify Select Product Page
#	And SquareRiskPortal.Select Product Name                                                                        Cyber
#	And SquareRiskPortal.Select State From Dropdown                                                                 MA
#	And SquareRiskPortal.Select Carriers                                                                            Dual
#	Given SquareRiskPortal.Enter Insured Company Name for                                                           ${Company_name}
#	When SquareRiskPortal.Click on "Start Application" Button
#    Then Cyber_Resource.Indication_Common.Verify Indication Common Information form loaded Successfully
#    Given Cyber_Resource.Indication_Common.Provide Insured Company Name                                             ${Company_name}
#    And Cyber_Resource.Indication_Common.Provide Coverage Effective Date                                            ${Effective_Date_Tomorrow}
#    And Cyber_Resource.Indication_Common.Provide Google Address                                                     ${Google_Address}
#    And Cyber_Resource.Indication_Common.Select Coverage Deductible                                                 5000
#    And Cyber_Resource.Indication_Common.Select NAICS Code                                                          521110
#    And Cyber_Resource.Indication_Common.Enter Website Detail                                                       hcvt.com
#    And Cyber_Resource.Indication_Common.Provide Last Year Revenue                                                  2000000
#    And Cyber_Resource.Indication_Common.Select Coverage Limit                                                      1000000
#    And Cyber_Resource.Indication_Common.Provide Contact Person Phone Number                                        ${Default_Phone_Number}
#    When SquareRiskPortal.Click on "Get Indication" Button and verify the page "Select Inidication" gets loaded -- Signle Carrier
#    Then SquareRiskPortal.Wait until all quotes get fetched on Select Indicatoin Screen                             Dual
#    And SquareRiskPortal.Click on the "Submit To Quote" Button
#    Then Cyber_Resource.Quote_Common.Verify Quote Common Information form loaded Successfully
#    Given Cyber_Resource.Quote_Common.Fill Contact Person Details                                                   ${First_name}    ${Last_name}    ${Default_Phone_Number}    ${Email_Address}
#    And Cyber_Resource.Quote_Common.Select Operating Countries                                                      United States
#    And Cyber_Resource.Quote_Common.Select "Does the Applicant have multi-factor authentication?" As(Yes/No):       Yes
#    And Cyber_Resource.Quote_Common.Select "Received a claim or complaint regarding privacy, data protection or network security?" As(Yes/No):           Yes
#    And Cyber_Resource.Quote_Common.Provide Claim Details when Question: "Received a claim or complaint regarding privacy, data protection or network security?" is selected as "Yes":    05/10/2023    158946    Test
#    When SquareRiskPortal.Click on "Next Button" on the Form and verify data saved successfully Alert
#    Then Cyber_Resource.Dual_Quote_Form.Verify Dual Quote Carrier form loaded Successfully
#    And SquareRiskPortal.Click on "Proceed To Quote" Button and verify the page "Bind Quote" gets loaded
#    Then SquareRiskPortal.Wait until all quotes get fetched on Bind Quote Screen                                    Dual
#    When SquareRiskPortal.Click on the "Continue To Bind" Button                                                    Dual
##    Then SquareRiskPortal.Verify Signature Page Loaded
##    AND SquareRiskPortal.Wait until the Signature PDF generated
##    AND SquareRiskPortal.Upload signed Signature PDF file by clicking on Browse File:                              ${Sameple_File_Location}
##    When SquareRiskPortal.Click on the "Continue To Payment" Button
#    Then SquareRiskPortal.Verify Payment Page Loaded Successfully
#    And SquareRiskPortal.Select Payment Type as "SquareRisk Bill to Agent"
#    And SquareRiskPortal.Select Payment Method: Credit Card
#    And SquareRiskPortal.Provide Credit Card Details                                                               ${Default_CreditCard_Number}    ${Default_CreditCard_Expiration_Date}   ${Default_CVC}
#    And SquareRiskPortal.Click on "Process Bind Order" Button and verify Download Policy Page Loaded

#Cyber Test - Cowbell
#	Given SquareRiskPortal.Navigate to SquareRisk Agent Portal
#	When Common.Get Email and Password of                                                                           Agent
#	And Common.Get Dummy Data                                                                                       MA
#	Then SquareRiskPortal.Perform Login by providing Email & Password                                               ${email}    ${Password}
#	And SquareRiskPortal.Click "Login" Button and Verify the user navigated the Home Page
#	And SquareRiskPortal.Click on "+ Add New" Button and verify Select Product Page
#	And SquareRiskPortal.Select Product Name                                                                        Cyber
#	And SquareRiskPortal.Select State From Dropdown                                                                 AL
#	And SquareRiskPortal.Select Carriers                                                                            Cowbell
#	Given SquareRiskPortal.Enter Insured Company Name for                                                           ${Company_name}
#	When SquareRiskPortal.Click on "Start Application" Button
#    Then Cyber_Resource.Indication_Common.Verify Indication Common Information form loaded Successfully
#    Given Cyber_Resource.Indication_Common.Provide Insured Company Name                                             ${Company_name}
#    And Cyber_Resource.Indication_Common.Provide Coverage Effective Date                                            ${Effective_Date_Tomorrow}
#    And Cyber_Resource.Indication_Common.Provide Google Address                                                     ${Google_Address}
#    And Cyber_Resource.Indication_Common.Select Coverage Deductible                                                 5000
#    And Cyber_Resource.Indication_Common.Select NAICS Code                                                          521110
#    And Cyber_Resource.Indication_Common.Enter Website Detail                                                       hcvt.com
#    And Cyber_Resource.Indication_Common.Provide Last Year Revenue                                                  2000000
#    And Cyber_Resource.Indication_Common.Select Coverage Limit                                                      1000000
#    And Cyber_Resource.Indication_Common.Provide Contact Person Phone Number                                        ${Default_Phone_Number}
#    When SquareRiskPortal.Click on "Next Button" on the Form and verify data saved successfully Alert
#    Then Cyber_Resource.Cowbell_Indication_Form.Verify Cowbell form loaded successfully
#    Given Cyber_Resource.Cowbell_Indication_Form.Provide Number of Employees                                        150
#    And Cyber_Resource.Cowbell_Indication_Form.Select Company Type as                                               Partnership
#    When SquareRiskPortal.Click on "Get Indication" Button and verify the page "Select Inidication" gets loaded -- Multi Carriers
#    Then SquareRiskPortal.Wait until all quotes get fetched on Select Indicatoin Screen                             Cowbell
#    And SquareRiskPortal.Click on the "Submit To Quote" Button
#    Then Cyber_Resource.Quote_Common.Verify Quote Common Information form loaded Successfully
#    Given Cyber_Resource.Quote_Common.Fill Contact Person Details                                                   ${First_name}    ${Last_name}    ${Default_Phone_Number}    ${Email_Address}
#    And Cyber_Resource.Quote_Common.Select Operating Countries                                                      United States
#    And Cyber_Resource.Quote_Common.Select "Does the Applicant have multi-factor authentication?" As(Yes/No):       Yes
#    Cyber_Resource.Quote_Common.Select "Received a claim or complaint regarding privacy, data protection or network security?" As(Yes/No):           Yes
#    Cyber_Resource.Quote_Common.Provide Claim Details when Question: "Received a claim or complaint regarding privacy, data protection or network security?" is selected as "Yes":    05/10/2023    158946    Test
#    When SquareRiskPortal.Click on "Next Button" on the Form and verify data saved successfully Alert
#    Then Cyber_Resource.Cowbell_Quote_Form.Verify Cowbell Quote Carrier form loaded Successfully
#    Given Cyber_Resource.Cowbell_Quote_Form.Provide Customer Email:                                                 ${Email_Address}
#    And Cyber_Resource.Cowbell_Quote_Form.Provide Year Business Established:                                        2005
#    And Cyber_Resource.Cowbell_Quote_Form.Select "Does the policyholder agree to be the Designated Information Security Contact?" As(Yes/No):      No
#    And Cyber_Resource.Cowbell_Quote_Form.Select "Does policyholder provide mandatory information security training to all employees at least annually?" As(Yes/No):   No
#    And Cyber_Resource.Cowbell_Quote_Form.Select "Do policy holder employees authenticate funds transfer requests?" As(Yes/No):       No
#    And Cyber_Resource.Cowbell_Quote_Form.Select "Do policy holder employees prevent unauthorized employees from initiating wire transfers?" As(Yes/No):       No
#    And Cyber_Resource.Cowbell_Quote_Form.Select "Do policy holder employees verify vendor/supplier bank accounts before adding to accounts payable systems?" As(Yes/No):  No
#    And SquareRiskPortal.Click on "Proceed To Quote" Button and verify the page "Bind Quote" gets loaded
#    Then SquareRiskPortal.Wait until all quotes get fetched on Bind Quote Screen                                    Cowbell
#    And SquareRiskPortal.Click on the "Continue To Bind" Button                                                     Cowbell
#    And SquareRiskPortal.Verify Signature Page Loaded
#    When SquareRiskPortal.Wait until the Signature PDF generated
#    Then SquareRiskPortal.Upload signed Signature PDF file by clicking on Browse File:                              ${Sameple_File_Location}
#    And SquareRiskPortal.Click on the "Continue To Payment" Button
#    Then SquareRiskPortal.Verify Payment Page Loaded Successfully
#    And SquareRiskPortal.Select Payment Type as "SquareRisk Bill to Agent"
#    And SquareRiskPortal.Select Payment Method: Credit Card
#    And SquareRiskPortal.Provide Credit Card Details                                                                ${Default_CreditCard_Number}    ${Default_CreditCard_Expiration_Date}   ${Default_CVC}
#    And SquareRiskPortal.Click on "Process Bind Order" Button and verify Download Policy Page Loaded

Test1
	Given SquareRiskPortal.Navigate to SquareRisk Agent Portal
	When Common.Get Email and Password of                                                                           Agent
	And Common.Get Dummy Data                                                                                       MA
	Then SquareRiskPortal.Perform Login by providing Email & Password                                               ${email}    ${Password}
	And SquareRiskPortal.Click "Login" Button and Verify the user navigated the Home Page
	And SquareRiskPortal.Click on "Add New" Button and verify Select Industry Page
	Then Start_Application_Resource.Select Industry & NAICS                                                         Restaurants_Bars_&_Taverns    Full-Service_Restaurants
#	Then SquareRiskPortal.Search NAICS or Industry                                                                   722511
	Start_Application_Resource.Select Cyber Carriers:                                                               Dual   #Cowbell
	Start_Application_Resource.Click on Continue Button on the Select Carrier Page and verify Check Eligibility Page
	Check_Eligibility_Resource.What was the business revenue of the past 12 months?:                                $150000
	Check_Eligibility_Resource.What is your state of primary operation?:                                            MA
	Check_Eligibility_Resource.What is the desired Cyber coverage limit?                                            $15000
	Check_Eligibility_Resource.Click on the Check Eligibility Button and Verify Start Application Page