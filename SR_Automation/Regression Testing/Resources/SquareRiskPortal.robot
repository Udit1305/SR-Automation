*** Settings ***
Resource                                                            ../Resources/PO/SR_Login_Page.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Home_Page.robot
Resource                                                            ../Resources/PO/SR Agent Panel/CommonElements.robot
Resource                                                            ../Resources/Start_Application_Resource.robot
#Resource                                                            ../Resources/PO/SR Agent Panel/ResidentialFlood/ResFlood_ProductForm.robot
Resource                                                            ../Resources/PO/SR Agent Panel/SignProposalPage.robot
Resource                                                            ../Resources/PO/SR Agent Panel/PaymentPage.robot
Resource                                                            ../Resources/PO/SR Agent Panel/DownloadPolicyPage.robot


*** Variables ***

*** Keywords ***
Navigate to SquareRisk Admin Portal
	SR_Login_Page.Navigate to SquareRisk Admin Login page
	SR_Login_Page.Verify Page loaded

Navigate to SquareRisk Agent Portal
	SR_Login_Page.Navigate to SquareRisk Agent Login page
	SR_Login_Page.Verify Page loaded

Provide Email ID into the "Email" field
	[Arguments]                                                                                 ${email}
	SR_Login_Page.Input Email into the Email field                                              ${email}

Provide Password into the "Password" field
	[Arguments]                                                                                 ${Password}
	SR_Login_Page.Input Password into the Password field                                        ${Password}

Perform Login by providing Email & Password
    [Arguments]                                                                                 ${email}                    ${Password}
    Provide Email ID into the "Email" field                                                     ${email}
    Provide Password into the "Password" field                                                  ${password}

Click on "Login" Button
	SR_Login_Page.Click on Sign In Button

Verify User Login
	Home_Page.Verify Home Page

Click "Login" Button and Verify the user navigated the Home Page
    Click on "Login" Button
    Verify User Login

Click on Add New Button to Initiate a New Application
	Home_Page.Click on Add New Button

#Search NAICS Code:
#    [Arguments]                                                                                 ${Value}
#    Select_Industry_Page.Enter and Search NAICS Code from Dropdown                              ${Value}
#    Select_Industry_Page.Verify the Select Products section

#Select Products:
#    [Arguments]                                                                                 @{Products}
#    Select_Industry_Page.Click on Products

#click on the Check Eligibility Button:
#    Select_Industry_Page.Click on the "Check Eligibility" Button
#    Select_Industry_Page.Verify the Select Products section

#Verify Select Product Page Loaded
#	NewQuoteRequestPage.Verify Page loaded

Click on "Add New" Button and verify Select Industry Page
	Click on Add New Button to Initiate a New Application
    Start_Application_Resource.Verify Select Industry Page Loaded
#	Verify Select Product Page Loaded

Verify Indicatoin Common Form Page Loaded
	CommonElements.Verify Common Form loaded
	CommonElements.Verify Data Collection Tab Loaded

Verify Carrier Common Form Page Loaded
	CommonElements.Verify Common Form loaded
	CommonElements.Verify Prepare Application Tab Loaded

Verify Select Indication Page Loaded in case of Multi Carriers
	CommonElements.Verify Select Indication Tab Loaded
	CommonElements.Verify Select Indication Messages

Verify Select Indication Page Loaded in case of Single Carrier
	CommonElements.Verify Select Indication Tab Loaded

Verify Review Quote Page Loaded
	CommonElements.Verify Review Quote Tab Loaded

#Create a New Application for Single Product:
#	[Arguments]                                                                                 ${Product}                  ${state}
#	Click on "+ Add New" Button and verify Select Product Page
#	Sleep                                                                                       5s
#	Verify Select Product Page Loaded
#	Select Product Name                                                                         ${Product}
#	Select State From Dropdown                                                                  ${state}
#	Enter Insured Company Name for                                                              ${Product}
#	Click on "Start Application" Button

Click on "Get Indication" Button
	CommonElements.Click Get Indication Button

Click on "Get Indication" Button and verify the page "Select Inidication" gets loaded -- Multi Carriers
    Click on "Get Indication" Button
    Verify Select Indication Page Loaded in Case of Multi Carriers

Click on "Get Indication" Button and verify the page "Select Inidication" gets loaded -- Signle Carrier
    Click on "Get Indication" Button
    Verify Select Indication Page Loaded in case of Single Carrier

Click on "Submit to Quote" Button
	CommonElements.Clcik Submit to Quote Button

Click on "Submit For Referral" Button
	CommonElements.Clcik Submit for Referral Button

Click on "Next" Button on the Form
    CommonElements.Click Form Next Button

Verify Data Saved Successfuly Alert
    CommonElements.Wait for Success Alert

Click on "Next Button" on the Form and verify data saved successfully Alert
    Click Form Next Button
    Verify Data Saved Successfuly Alert

Click on "Back" Button on the Form
    CommonElements.Click Form Back Button

Click on "Back" Button
    CommonElements.Click Back Button

Click on "View Coverage" Button
    CommonElements.Click on View Coverage

Click on "Hide Details" Button
    CommonElements.Click on Hide Details

Wait until all quotes get fetched on Select Indicatoin Screen
    [Arguments]                                                                                 @{QuoteCarriers}
    CommonElements.Wait until all quotes get fetched on Select Indicatoin Screen                @{QuoteCarriers}

Select Fetched Quotes and Verify
    [Arguments]                                                                                 @{QuoteCarriers}
    CommonElements.Click "Select Indication" Button and check Selected Indications              @{QuoteCarriers}

Click on the "Submit To Quote" Button
    CommonElements.Click "Submit To Quote" Button

Click on "Proceed To Quote" Button
    CommonElements.Click "Proceed To Quote" Button

Click on "Proceed To Quote" Button and verify the page "Bind Quote" gets loaded
    Click on "Proceed To Quote" Button
    Verify Bind Quote Page Loaded

Verify Bind Quote Page Loaded
    CommonElements.Verify Bind Quote Tab Loaded

Wait until all quotes get fetched on Bind Quote Screen
    [Arguments]                                                                                 @{QuoteCarriers}
    CommonElements.Wait until all quotes get fetched on Bind Quote Screen                       @{QuoteCarriers}

Click on the "Continue To Bind" Button
    [Arguments]                                                                                 ${QuoteCarrier}
    CommonElements.Click "Continue To Bind" Button                                              ${QuoteCarrier}

Verify Signature Page Loaded
	SignProposalPage.Verify Sign Proposal Screen
	SignProposalPage.Verify Signature generation messages

Wait until the Signature PDF generated
    SignProposalPage.Wait until the Signature PDF generated

Click on the "Provide Agents Signature" Button and wait for Signature window
    SignProposalPage.Highlight "Customer Has Signed the Package" Message
    SignProposalPage.Click "Provide Agents Signature" Button
    SignProposalPage.Wait for Zoho Signature Container to be visible

Click on the "Agree & Continue" Button
    SignProposalPage.Click "Agree & Continue" Button
    SignProposalPage.Wait for Zoho Signature Terms & Conditions pop-up to be visible

Click on Terms and Conditions "Agrre" Button
    SignProposalPage.Click "Agree & Continue" Button on Terms & Conditions pop-up window

Click on Signature Feild and provide Signature by clicking on OK Button
    SignProposalPage.Click Signature Feild
    SignProposalPage.Click "OK" Button

Click on the "Finish" Button to close the Signature window
    SignProposalPage.Click "Finish" Button
    SignProposalPage.Wait for Signature Process to be completed

Upload signed Signature PDF file by clicking on Browse File:
    [Arguments]                                                                                 ${Sameple_File_Location}
    SignProposalPage.Upload Signature PDF File                                                  ${Sameple_File_Location}

Click on the "Continue To Payment" Button
    SignProposalPage.Click on "Continue To Payment" Button

Verify Payment Page Loaded Successfully
    PaymentPage.Verify Payment Page should get Loaded

Select Payment Type as "SquareRisk Bill to Agent"
    PaymentPage.Click Payment Type as "SquareRisk Bill to Agent"

Select Payment Method: Credit Card
    PaymentPage.Select Payment Method as "Credit Card"

Provide Credit Card Details
    [Arguments]                                                                                 ${CreditCard_Number}        ${CreditCard_Expiration}        ${CreditCard_CVC}
    PaymentPage.Fill Credit Card Number                                                         ${CreditCard_Number}
    PaymentPage.Fill Credit Card Exipration Date                                                ${CreditCard_Expiration}
    PaymentPage.Fill Credit Card CVC                                                            ${CreditCard_CVC}

Click on "Process Bind Order" Button and verify Download Policy Page Loaded
    CommonElements.Click "Process Bind Order" Button
	DownloadPolicyPage.Verify Download Policy Page should get Loaded

