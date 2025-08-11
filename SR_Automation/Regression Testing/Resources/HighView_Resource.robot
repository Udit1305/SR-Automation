*** Settings ***
#HighView Resources:
Resource                                                            ../Resources/PO/SR Agent Panel/HighView/Product Form/HV_ProductForm.robot
Resource                                                            ../Resources/PO/SR Agent Panel/HighView/HV_SelectIndicationPage.robot
Resource                                                            ../Resources/PO/SR Agent Panel/HighView/Carrier Form/HV_AgencyContactInformationForm.robot
Resource                                                            ../Resources/PO/SR Agent Panel/HighView/Carrier Form/HV_GeneralInformationForm.robot

*** Variables ***

*** Keywords ***
HighView - Select Class Code
	[Arguments]                                                                                 ${Class_ID}
	HV_ProductForm.Select Class Code                                                            ${Class_ID}

HighView - Provide Payroll Amount
	[Arguments]                                                                                 ${Payroll_Amount}
	HV_ProductForm.Provide Payroll Amount                                                       ${Payroll_Amount}

Fill the HighView Product Form
	[Arguments]                                                                                 ${Payroll_Amount}       ${Class_ID}
	HighView - Select Class Code                                                                ${Class_ID}
	HighView - Provide Payroll Amount                                                           ${Payroll_Amount}

HighView - Verify HighView Quote Generated
	HV_SelectIndicationPage.Verify HighView Quote Generated

HighView - Verify Tag
	HV_SelectIndicationPage.Verify Tag

HighView - Click on View Coverages
	HV_SelectIndicationPage.Click on View Coverages

HighView - Verify Quote
	HV_SelectIndicationPage.Verify Quote

HighView - Click on Hide Details
	HV_SelectIndicationPage.Click on Hide Details

HighView - Click on Select To Quote button
	HV_SelectIndicationPage.Click on Select To Quote button

HighView - Click on Add To Proposal Checkbox
	HV_SelectIndicationPage.Click on Add To Proposal Checkbox

HighView - Verify HighView Quote
	HighView - Verify HighView Quote Generated
	HighView - Verify Tag
	HighView - Click on View Coverages
	HighView - Verify Quote

