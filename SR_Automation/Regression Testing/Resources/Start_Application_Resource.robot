*** Settings ***
Resource                                                            ../Resources/PO/SR Agent Panel/Start-Application_Panel/Select_Industry_Page.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Start-Application_Panel/Select_Carrier_Page.robot
Resource                                                            ../Resources/PO/SR Agent Panel/Start-Application_Panel/Check_Eligibility_Page.robot


*** Variables ***

*** Keywords ***
Verify Select Industry Page Loaded
    Select_Industry_Page.Verify Page

Search NAICS or Industry
	[Arguments]                                                                                 ${Value}
	Select_Industry_Page.Enter and Search NAICS Code from Dropdown                              ${Value}

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

Select Industry from Quick Filters
	[Arguments]                                                                                 ${Industry}
	[Documentation]     Values need to be used:
	...                 *Cannabis*, *Contractors*, *Real_Estate*, *Restaurants_Bars_&_Taverns*, *Wholesale*, *Retail*, *Professional_Services*, & *Transportation*
	Select_Industry_Page.Select Industry                                                        ${Industry}

Select NAICS from the list of selected Industry
	[Arguments]                                                                                 ${Industry}                 ${NAICS_DESC}
	[Documentation]     Values need to be used for _Cannabis_:
	...                 *Cannabis_Growing*, *Cannabis_Cultivation*, *Cannabis_Manufacturering*, *Cannabis_Dispensary*, & *Cannabis Delivery*
	...
	...                 Values need to be used for _Contractors_:
	...                 *Farming_Contractor_&_Crew_Leader*, *Farming_Contractor*, *New_Single-Family_Housing_Construction*, *New_Multifamily_Housing_Construction*, *New_Housing_For-Sale_Builders*, *Commercial_Building_Contruction*, *Water_&_Sewer_Contruction*, *Oil_&_Gas_Pipeline_Construction*, *Power_and_Communication_Line_Construction*, *Highway_Street_and_Bridge_Construction*, *Other_Heavy_and_Civil_Engineering_Construction*, *Poured_Concrete_Foundation_and_Structure_Contractors*, *Structural_Steel_and_Precast_Concrete_Contractors*, *Masonry_Contractors*, *Glass_and_Glazing_Contractors*, *Roofing_Contractors*, *Siding_Contractors*, *Other_Foundation_Structure_and_Building_Exterior_Contractors*, *Electrical_Contractors_and_Other_Wiring_Installation_Contractors*, *Plumbing_&_HVAC_Contractors*, *Other_Building_Equipment_Contractors*, *Drywall_and_Insulation_Contractors*, *Painting_and_Wall_Covering_Contractors*, & *Flooring_Contractors*
	...
	...                 Values need to be used for _Real_Estate_:
	...                 *New_Single-Family_Housing_Construction*, *New_Multifamily_Housing_Construction*, *New_Housing_For-Sale_Builders*, *Nonresidential_Property_Managers*, *Lessors_of_Nonresidential_Buildings*, *Lessors_of_Miniwarehouses_and_Self-Storage_Units*, *Lessors_of_Other_Real_Estate_Property*, *Residential_Property_Managers*, *Lessors_of_Residential_Buildings_and_Dwellings*, *Other_Services_to_Buildings_and_Dwellings*, *Residential_Remodelers*, & *Industrial_Building_Construction*
	...
	...                 Values need to be used for _Restaurants_Bars_&_Taverns_:
	...                 *Nonalcoholic_Bars*, *Bars_&_Taverns*, *Breweries*, *Full-Service_Restaurants*, *Limited-Service_Restaurants*, & *Food_Trucks_&_Mobile_Food_Services*
	...
	...                 Values need to be used for _Wholesale_:
	...                 *Alcoholic_Beverage_Wholesalers*, *Home_Furnishing_Wholesalers*, *Furniture_Wholesalers*, *Hardware_Wholesalers*, *Beer_and_Ale_Wholesalers*, *Automobile_Wholesalers*, *Grocery_Wholesalers*, *Industrial_Machinery_and_Equipment_Wholesalers*, *Medical_Dental_and_Hospital_Equipment_and_Supplies_Wholesalers*, *Computer_Equipment_and_Software_Wholesalers*, & *Farm_Product_Raw_Material_Wholesalers*
	...
	...                 Values need to be used for _Retail_:
	...                 *Convenience_Stores*, *All_Other_General_Merchandise_Retailers*, *Gasoline_Stations_with_Convenience_Stores*, *Other_Gasoline_Stations*, *Furniture_Stores*, *Reupholstery_and_Furniture_Repair*, *Home_Centers*, *Hardware_Stores*, *New_Car_Dealers*, *Used_Car_Dealers*, *Beauty_Salons*, *Barber_Shops*, *Drycleaning_and_Laundry_Services*, & *Coin-Operated_Laundries_and_Drycleaners*
	...
	...                 Values need to be used for _Professional_Services_:
	...                 *Landscape_Architectural_Services*, *Engineering_Services*, *Research_and_Development*, *Architectural_Services*, *Marketing_Consulting_Services*, *Miscellaneous_Intermediation*, *Administrative_and_General_Management_Consulting_Services*, *Other_Management_Consulting_Services*, *Tax_Preparation_Services*, *Public_Finance_Activities*, *Insurance_Agencies_and_Brokerages*, & *All_Other_Insurance_Related_Activities*
	...
	...                 Values need to be used for _Transportaion_:
	...                 *General_Freight_Trucking_Local*, *Distance_Truckload*, *Distance_Less_Than_Truckload*, *Specialized_Freight_Trucking_Local*, *Distance*, *Fuel_Dealers*, *Freight_Transportation*, *Bus_and_Other_Motor_Vehicle_Transit_Systems*, *School_and_Employee_Bus_Transportation*, *Interurban_and_Rural_Bus_Transportation*, *All_Other_Transit_and_Ground_Passenger_Transportation*, *Charter_Buses*, *Urban_Transit_Systems*, *Taxi_Service*, & *Limousine_Service*
	Select_Industry_Page.Select NAICS                                                           ${Industry}                 ${NAICS_DESC}

Select Industry & NAICS
	[Arguments]                                                                                 ${Industry}                 ${NAICS_DESC}
	[Documentation]     Values need to be used Industry:
	...                 *Cannabis*, *Contractors*, *Real_Estate*, *Restaurants_Bars_&_Taverns*, *Wholesale*, *Retail*, *Professional_Services*, & *Transportation*
	...
	...                 Values need to be used for NAICS:
	...                 _Cannabis_:
	...                 *Cannabis_Growing*, *Cannabis_Cultivation*, *Cannabis_Manufacturering*, *Cannabis_Dispensary*, & *Cannabis Delivery*
	...
	...                 _Contractors_:
	...                 *Farming_Contractor_&_Crew_Leader*, *Farming_Contractor*, *New_Single-Family_Housing_Construction*, *New_Multifamily_Housing_Construction*, *New_Housing_For-Sale_Builders*, *Commercial_Building_Contruction*, *Water_&_Sewer_Contruction*, *Oil_&_Gas_Pipeline_Construction*, *Power_and_Communication_Line_Construction*, *Highway_Street_and_Bridge_Construction*, *Other_Heavy_and_Civil_Engineering_Construction*, *Poured_Concrete_Foundation_and_Structure_Contractors*, *Structural_Steel_and_Precast_Concrete_Contractors*, *Masonry_Contractors*, *Glass_and_Glazing_Contractors*, *Roofing_Contractors*, *Siding_Contractors*, *Other_Foundation_Structure_and_Building_Exterior_Contractors*, *Electrical_Contractors_and_Other_Wiring_Installation_Contractors*, *Plumbing_&_HVAC_Contractors*, *Other_Building_Equipment_Contractors*, *Drywall_and_Insulation_Contractors*, *Painting_and_Wall_Covering_Contractors*, & *Flooring_Contractors*
	...
	...                 _Real_Estate_:
	...                 *New_Single-Family_Housing_Construction*, *New_Multifamily_Housing_Construction*, *New_Housing_For-Sale_Builders*, *Nonresidential_Property_Managers*, *Lessors_of_Nonresidential_Buildings*, *Lessors_of_Miniwarehouses_and_Self-Storage_Units*, *Lessors_of_Other_Real_Estate_Property*, *Residential_Property_Managers*, *Lessors_of_Residential_Buildings_and_Dwellings*, *Other_Services_to_Buildings_and_Dwellings*, *Residential_Remodelers*, & *Industrial_Building_Construction*
	...
	...                 _Restaurants_Bars_&_Taverns_:
	...                 *Nonalcoholic_Bars*, *Bars_&_Taverns*, *Breweries*, *Full-Service_Restaurants*, *Limited-Service_Restaurants*, & *Food_Trucks_&_Mobile_Food_Services*
	...
	...                 _Wholesale_:
	...                 *Alcoholic_Beverage_Wholesalers*, *Home_Furnishing_Wholesalers*, *Furniture_Wholesalers*, *Hardware_Wholesalers*, *Beer_and_Ale_Wholesalers*, *Automobile_Wholesalers*, *Grocery_Wholesalers*, *Industrial_Machinery_and_Equipment_Wholesalers*, *Medical_Dental_and_Hospital_Equipment_and_Supplies_Wholesalers*, *Computer_Equipment_and_Software_Wholesalers*, & *Farm_Product_Raw_Material_Wholesalers*
	...
	...                 _Retail_:
	...                 *Convenience_Stores*, *All_Other_General_Merchandise_Retailers*, *Gasoline_Stations_with_Convenience_Stores*, *Other_Gasoline_Stations*, *Furniture_Stores*, *Reupholstery_and_Furniture_Repair*, *Home_Centers*, *Hardware_Stores*, *New_Car_Dealers*, *Used_Car_Dealers*, *Beauty_Salons*, *Barber_Shops*, *Drycleaning_and_Laundry_Services*, & *Coin-Operated_Laundries_and_Drycleaners*
	...
	...                 _Professional_Services_:
	...                 *Landscape_Architectural_Services*, *Engineering_Services*, *Research_and_Development*, *Architectural_Services*, *Marketing_Consulting_Services*, *Miscellaneous_Intermediation*, *Administrative_and_General_Management_Consulting_Services*, *Other_Management_Consulting_Services*, *Tax_Preparation_Services*, *Public_Finance_Activities*, *Insurance_Agencies_and_Brokerages*, & *All_Other_Insurance_Related_Activities*
	...
	...                 _Transportaion_:
	...                 *General_Freight_Trucking_Local*, *Distance_Truckload*, *Distance_Less_Than_Truckload*, *Specialized_Freight_Trucking_Local*, *Distance*, *Fuel_Dealers*, *Freight_Transportation*, *Bus_and_Other_Motor_Vehicle_Transit_Systems*, *School_and_Employee_Bus_Transportation*, *Interurban_and_Rural_Bus_Transportation*, *All_Other_Transit_and_Ground_Passenger_Transportation*, *Charter_Buses*, *Urban_Transit_Systems*, *Taxi_Service*, & *Limousine_Service*
	Select Industry from Quick Filters                                                          ${Industry}
	Select NAICS from the list of selected Industry                                             ${Industry}                 ${NAICS_DESC}

Select BOP Carriers:
	[Arguments]                                                                                 @{Carriers}
    [Documentation]     Provide Carrier Names: *Alchemy*, *Hiscox*, *Rainbow*
	Select_Carrier_Page.Click on BOP Carriers                                                   @{Carriers}

Select Builders Risk Carriers:
	[Arguments]                                                                                 @{Carriers}
    [Documentation]     Provide Carrier Names: *GBLI*
	Select_Carrier_Page.Click on Builders Risk Carriers                                         @{Carriers}

Select Cyber Carriers:
	[Arguments]                                                                                 @{Carriers}
    [Documentation]     Provide Carrier Names: *Dual*, *Cowbell*, *CFC-Admitted*, *CFC-Non-Admitted*
	Select_Carrier_Page.Click on Cyber Carriers                                                 @{Carriers}

Select D&O Carriers:
	[Arguments]                                                                                 @{Carriers}
    [Documentation]     Provide Carrier Names: *Coalition*
	Select_Carrier_Page.Click on D&O Carriers                                                   @{Carriers}

Select E&O Carriers:
	[Arguments]                                                                                 @{Carriers}
    [Documentation]     Provide Carrier Names: *CFC*
	Select_Carrier_Page.Click on E&O Carriers                                                   @{Carriers}

Select Flood Insurance Carriers:
	[Arguments]                                                                                 @{Carriers}
    [Documentation]     Provide Carrier Names: *Netpune*, *CatCoverage*
	Select_Carrier_Page.Click on Flood Insurance Carriers                                       @{Carriers}

Select General Liability Carriers:
	[Arguments]                                                                                 @{Carriers}
    [Documentation]     Provide Carrier Names: *Hiscox*, *First_Insurance*, *Blitz*, *Talisman*
	Select_Carrier_Page.Click on General Liability Carriers                                     @{Carriers}

Select Product Liability Carriers:
	[Arguments]                                                                                 @{Carriers}
    [Documentation]     Provide Carrier Names: *Blitz*, *Talisman*
	Select_Carrier_Page.Click on Product Liability Carriers                                     @{Carriers}

Select Property Liability Carriers:
	[Arguments]                                                                                 @{Carriers}
    [Documentation]     Provide Carrier Names: *Blitz*, *Talisman*
	Select_Carrier_Page.Click on Property Liability Carriers                                    @{Carriers}

Select Workers Comp Carriers:
	[Arguments]                                                                                 @{Carriers}
    [Documentation]     Provide Carrier Names: *Amtrust*, *CoveRisk*, *Employers*, *Midwestern*, *Markel*, *HighView*
	Select_Carrier_Page.Click on Workers Comp Carriers                                          @{Carriers}

Click on Continue Button on the Select Carrier Page and verify Check Eligibility Page
	Select_Carrier_Page.Click on the Continue Button
	Check_Eligibility_Page.Verify Page

#Select Product Name
#	[Arguments]                                                                                 ${Product}
#	NewQuoteRequestPage.Select Product                                                          ${Product}
#	NewQuoteRequestPage.Verify Initiate Application Section Loaded

#Select Multiple Products
#	[Arguments]                                                                                 @{Products}
#	NewQuoteRequestPage.Select Multiple Products                                                @{Products}

#Select State From Dropdown
#	[Arguments]                                                                                 ${state}
#	NewQuoteRequestPage.Open State Dropdown and select State                                    ${state}

#Select Carriers
#	[Arguments]                                                                                 @{Carriers}
#	NewQuoteRequestPage.Select Carriers                                                         @{Carriers}

#Enter Insured Company Name for
#	[Arguments]                                                                                 ${Comp_Name}
#	NewQuoteRequestPage.Enter Insured Company Name                                              ${Comp_Name}

#Click on "Start Application" Button
#	NewQuoteRequestPage.Click Start Application


