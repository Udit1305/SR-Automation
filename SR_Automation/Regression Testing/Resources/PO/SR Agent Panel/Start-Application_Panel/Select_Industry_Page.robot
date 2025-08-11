*** Settings ***
Library                                                     Browser
Library                                                     Collections

*** Variables ***
#${Page_Heading}                                             xpath=//div[contains(@class, 'relative MuiBox-root')]/div[contains(.,'Select Industry')]
${Type_Industry/NAICS_Field}                                xpath=//input[@type='text' and @placeholder='Type an industry or NAICS code, then press Enter.']
${Search_Button}                                            xpath=//button[contains(.,'Search')]
#${dropdownValue}                                            xpath=//p[contains(.,'${value}')]
#${Select_Product_Text_ID}                                   xpath=//p[normalize-space()='Select Products']
#&{Select_Products}                                          Auto_Liability=//p[normalize-space()='Auto Liability']                                                                                                                  Cyber_Insurance=//p[normalize-space()='Cyber Insurance']                                                                                                                D&O=//p[normalize-space()='D&O']                                                                                                                                        E&O=//p[normalize-space()='E&O']                                                                                                                                        Earthquake_Insurance=//p[normalize-space()='Earthquake Insurance']                                                                                                      EPLI=//p[normalize-space()='EPLI']                                                                                                                                      Excess_Liability=//p[normalize-space()='Excess Liability']                                                                                                              Flood_Insurance=//p[normalize-space()=Flood Insurance']                                                                                                                 Motor_Truck_Cargo=//p[normalize-space()='Motor Truck Cargo']                                                                                                            Product_Liability=//p[normalize-space()='Product Liability']                                                                                                            Property_Insurance=//p[normalize-space()='Property Insurance']                                                                                                          Workers_Compensation=//p[normalize-space()='Workers Compensation']

&{Quick_Filters}                                            Cannabis=//div[normalize-space()='Cannabis']                                                                                                                           Contractors=//div[normalize-space()='Contractors']                                                                                                                     Real_Estate=//div[normalize-space()='Real Estate']                                                                                                                     Restaurants_Bars_&_Taverns=//div[normalize-space()='Restaurants, Bars, & Taverns']                                                                                     Wholesale=//div[normalize-space()='Wholesale']                                                                                                                         Retail=//div[normalize-space()='Retail']                                                                                                                               Professional_Services=//div[normalize-space()='Professional Services']                                                                                                 Transportation=//div[normalize-space()='Transportation']

&{Cannabis_Industries}                                      Cannabis_Growing=//div[normalize-space()='Cannabis Growing']                                                                                                           Cannabis_Cultivation=//div[normalize-space()='Cannabis Cultivation']                                                                                                   Cannabis_Manufacturering=//div[normalize-space()='Cannabis Manufacturering & Processing']                                                                              Cannabis_Dispensary=//div[normalize-space()='Cannabis Dispensary']                                                                                                     Cannabis Delivery=//div[normalize-space()='Cannabis Delivery']

&{Contractors_Industries}                                   Farming_Contractor_&_Crew_Leader=//div[normalize-space()='Farming Contractors & Crew Leaders']                                                                         Farming_Contractor=//div[normalize-space()='Framing Contractors']                                                                                                      New_Single-Family_Housing_Construction=//div[normalize-space()='New Single-Family Housing Construction']                                                               New_Multifamily_Housing_Construction=//div[normalize-space()='New Multifamily Housing Construction']                                                                   New_Housing_For-Sale_Builders=//div[normalize-space()='New Housing For-Sale Builders']                                                                                 Commercial_Building_Contruction=//div[normalize-space()='Commercial Building Contruction']                                                                             Water_&_Sewer_Contruction=//div[normalize-space()='Water & Sewer Contruction']                                                                                         Oil_&_Gas_Pipeline_Construction=//div[normalize-space()='Oil & Gas Pipeline Construction']                                                                             Power_and_Communication_Line_Construction=//div[normalize-space()='Power and Communication Line Construction']                                             Highway_Street_and_Bridge_Construction=//div[normalize-space()='Highway, Street, and Bridge Construction']                                                             Other_Heavy_and_Civil_Engineering_Construction=//div[normalize-space()='Other Heavy and Civil Engineering Construction']                                             Poured_Concrete_Foundation_and_Structure_Contractors=//div[normalize-space()='Poured Concrete Foundation and Structure Contractors']                                   Structural_Steel_and_Precast_Concrete_Contractors=//div[normalize-space()='Structural Steel and Precast Concrete Contractors']                                     Masonry_Contractors=//div[normalize-space()='Masonry Contractors']                                                                                                     Glass_and_Glazing_Contractors=//div[normalize-space()='Glass and Glazing Contractors']                                                                                 Roofing_Contractors=//div[normalize-space()='Roofing Contractors']                                                                                                     Siding_Contractors=//div[normalize-space()='Siding Contractors']                                                                                                       Other_Foundation_Structure_and_Building_Exterior_Contractors=//div[normalize-space()='Other Foundation, Structure, and Building Exterior Contractors']             Electrical_Contractors_and_Other_Wiring_Installation_Contractors=//div[normalize-space()='Electrical Contractors and Other Wiring Installation Contractors']    Plumbing_&_HVAC_Contractors=//div[normalize-space()='Plumbing & HVAC Contractors']                                                                                     Other_Building_Equipment_Contractors=//div[normalize-space()='Other Building Equipment Contractors']                                                                   Drywall_and_Insulation_Contractors=//div[normalize-space()='Drywall and Insulation Contractors']                                                                       Painting_and_Wall_Covering_Contractors=//div[normalize-space()='Painting and Wall Covering Contractors']                                                               Flooring_Contractors=//div[normalize-space()='Flooring Contractors']

&{Real_Estate_Industries}                                   New_Single-Family_Housing_Construction=//div[normalize-space()='New Single-Family Housing Construction']	                                                           New_Multifamily_Housing_Construction=//div[normalize-space()='New Multifamily Housing Construction']	                                                               New_Housing_For-Sale_Builders=//div[normalize-space()='New Housing For-Sale Builders']                                                                                 Nonresidential_Property_Managers=//div[normalize-space()='Nonresidential Property Managers']                                                                           Lessors_of_Nonresidential_Buildings=//div[normalize-space()='Lessors of Nonresidential Buildings']                                                                     Lessors_of_Miniwarehouses_and_Self-Storage_Units=//div[normalize-space()='Lessors of Miniwarehouses and Self-Storage Units']	                                    Lessors_of_Other_Real_Estate_Property=//div[normalize-space()='Lessors of Other Real Estate Property']                                                                 Residential_Property_Managers=//div[normalize-space()='Residential Property Managers']                                                                                 Lessors_of_Residential_Buildings_and_Dwellings=//div[normalize-space()='Lessors of Residential Buildings and Dwellings']	                                            Other_Services_to_Buildings_and_Dwellings=//div[normalize-space()='Other Services to Buildings and Dwellings']                                                Residential_Remodelers=//div[normalize-space()='Residential Remodelers']	                                                                                           Industrial_Building_Construction=//div[normalize-space()='Industrial Building Construction']

&{Restaurants_Bars_&_Taverns_Industries}                    Nonalcoholic_Bars=//div[normalize-space()='Nonalcoholic Bars']                                                                                                         Bars_&_Taverns=//div[normalize-space()='Bars & Taverns']                                                                                                               Breweries=//div[normalize-space()='Breweries']	                                                                                                                       Full-Service_Restaurants=//div[normalize-space()='Full-Service Restaurants']                                                                                           Limited-Service_Restaurants=//div[normalize-space()='Limited-Service Restaurants']                                                                                     Food_Trucks_&_Mobile_Food_Services=//div[normalize-space()='Food Trucks & Mobile Food Services']

&{Wholesale_Industries}                                     Alcoholic_Beverage_Wholesalers=//div[normalize-space()='Alcoholic Beverage Wholesalers']                                                                               Home_Furnishing_Wholesalers=//div[normalize-space()='Home Furnishing Wholesalers']                                                                                     Furniture_Wholesalers=//div[normalize-space()='Furniture Wholesalers']                                                                                                 Hardware_Wholesalers=//div[normalize-space()='Hardware Wholesalers']                                                                                                   Beer_and_Ale_Wholesalers=//div[normalize-space()='Beer and Ale Wholesalers']                                                                                           Automobile_Wholesalers=//div[normalize-space()='Automobile Wholesalers']                                                                                               Grocery_Wholesalers=//div[normalize-space()='Grocery Wholesalers']	                                                                                                   Industrial_Machinery_and_Equipment_Wholesalers=//div[normalize-space()='Industrial Machinery and Equipment Wholesalers']	                                            Medical_Dental_and_Hospital_Equipment_and_Supplies_Wholesalers=//div[normalize-space()='Medical, Dental, and Hospital Equipment and Supplies Wholesalers']	            Computer_Equipment_and_Software_Wholesalers=//div[normalize-space()='Computer Equipment and Software Wholesalers']	                                            Farm_Product_Raw_Material_Wholesalers=//div[normalize-space()='Farm Product Raw Material Wholesalers']

&{Retail_Industries}                                        Convenience_Stores=//div[normalize-space()='Convenience Stores']	                                                                                                   All_Other_General_Merchandise_Retailers=//div[normalize-space()='All Other General Merchandise Retailers']                                                             Gasoline_Stations_with_Convenience_Stores=//div[normalize-space()='Gasoline Stations with Convenience Stores']                                                   Other_Gasoline_Stations=//div[normalize-space()='Other Gasoline Stations']                                                                                             Furniture_Stores=//div[normalize-space()='Furniture Stores']                                                                                                           Reupholstery_and_Furniture_Repair=//div[normalize-space()='Reupholstery and Furniture Repair']                                                                         Home_Centers=//div[normalize-space()='Home Centers']                                                                                                                   Hardware_Stores=//div[normalize-space()='Hardware Stores']                                                                                                             New_Car_Dealers=//div[normalize-space()='New Car Dealers']                                                                                                             Used_Car_Dealers=//div[normalize-space()='Used Car Dealers']                                                                                                           Beauty_Salons=//div[normalize-space()='Beauty Salons']                                                                                                                 Barber_Shops=//div[normalize-space()='Barber Shops']                                                                                                                   Drycleaning_and_Laundry_Services=//div[normalize-space()='Drycleaning and Laundry Services (except Coin-Operated)']	                                        Coin-Operated_Laundries_and_Drycleaners=//div[normalize-space()='Coin-Operated Laundries and Drycleaners']

&{Professional_Services_Industries}                         Landscape_Architectural_Services=//div[normalize-space()='Landscape Architectural Services']	                                                                       Engineering_Services=//div[normalize-space()='Engineering Services']	                                                                                               Research_and_Development=//div[normalize-space()='Research and Development']	                                                                                       Architectural_Services=//div[normalize-space()='Architectural Services']	                                                                                           Marketing_Consulting_Services=//div[normalize-space()='Marketing Consulting Services']	                                                                               Miscellaneous_Intermediation=//div[normalize-space()='Miscellaneous Intermediation']	                                                                               Administrative_and_General_Management_Consulting_Services=//div[normalize-space()='Administrative and General Management Consulting Services']	                Other_Management_Consulting_Services=//div[normalize-space()='Other Management Consulting Services']	                                                               Tax_Preparation_Services=//div[normalize-space()='Tax Preparation Services']	                                                                                       Public_Finance_Activities=//div[normalize-space()='Public Finance Activities']	                                                                                       Insurance_Agencies_and_Brokerages=//div[normalize-space()='Insurance Agencies and Brokerages']	                                                                       All_Other_Insurance_Related_Activities=//div[normalize-space()='All Other Insurance Related Activities']

&{Transportation_Services_Industries}                       General_Freight_Trucking_Local=//div[normalize-space()='General Freight Trucking, Local']                                                                              General_Freight_Trucking_Long-Distance_Truckload=//div[normalize-space()='General Freight Trucking, Long-Distance, Truckload']	                                General_Freight_Trucking_Long-Distance_Less_Than_Truckload=//div[normalize-space()='General Freight Trucking, Long-Distance, Less Than Truckload']	            Specialized_Freight_Trucking_Local=//div[normalize-space()='Specialized Freight Trucking, Local']	                                                                   Specialized_Freight_Trucking_Long-Distance=//div[normalize-space()='Specialized Freight Trucking, Long-Distance']	                                        Fuel_Dealers=//div[normalize-space()='Fuel Dealers']                                                                                                                	Freight_Transportation=//div[normalize-space()='Freight Transportation']                                                                                               Bus_and_Other_Motor_Vehicle_Transit_Systems=//div[normalize-space()='Bus and Other Motor Vehicle Transit Systems']	                                                School_and_Employee_Bus_Transportation=//div[normalize-space()='School and Employee Bus Transportation']	                                                           Interurban_and_Rural_Bus_Transportation=//div[normalize-space()='Interurban and Rural Bus Transportation']	                                                           All_Other_Transit_and_Ground_Passenger_Transportation=//div[normalize-space()='All Other Transit and Ground Passenger Transportation']	                                Charter_Buses=//div[normalize-space()='Charter Buses']	                                                                                                               Urban_Transit_Systems=//div[normalize-space()='Urban Transit Systems']	                                                                                               Taxi_Service=//div[normalize-space()='Taxi Service']	                                                                                                               Limousine_Service=//div[normalize-space()='Limousine Service']

${Continue_Button}                                          xpath=//button[normalize-space()='Continue']

*** Keywords ***
#Verify Select Industry Page
#    Wait For Elements State                                 ${Page_Heading}
    
Verify Page
	Wait For Condition      Url             contains        start-application

Enter NAICS Code/Industry
    [Arguments]                                             ${Value}
    Fill Text                                               ${Type_Industry/NAICS_Field}                                ${Value}

Press Search Button
    Click                                                   ${Search_Button}

#Select NAICS Code from Dropdown
#    [Arguments]                                             ${Value}
#    Click                                                   ${dropdownValue}

Enter and Search NAICS Code from Dropdown
    [Arguments]                                             ${Value}
    Enter NAICS Code/Industry                               ${Value}
#    Select NAICS Code from Dropdown                         ${Value}
    Press Search Button

Select Industry
	[Arguments]                                             ${Industry}
	[Documentation]                                         Values need to be used:
	...                                                     *Cannabis*, *Contractors*, *Real_Estate*, *Restaurants_Bars_&_Taverns*, *Wholesale*, *Retail*, *Professional_Services*, & *Transportation*
	${industry_ID}=            Get From Dictionary          ${Quick_Filters}                                            ${Industry}
	Wait For Elements State                                 ${industry_ID}
	Click                                                   ${industry_ID}

Select NAICS
	[Arguments]                                             ${Industry}                                                 ${NAICS_DESC}
	[Documentation]                                         Values need to be used for _Cannabis_:
	...                                                     *Cannabis_Growing*, *Cannabis_Cultivation*, *Cannabis_Manufacturering*, *Cannabis_Dispensary*, & *Cannabis Delivery*
	...                                                     
	...                                                     Values need to be used for _Contractors_:
	...                                                     *Farming_Contractor_&_Crew_Leader*, *Farming_Contractor*, *New_Single-Family_Housing_Construction*, *New_Multifamily_Housing_Construction*, *New_Housing_For-Sale_Builders*, *Commercial_Building_Contruction*, *Water_&_Sewer_Contruction*, *Oil_&_Gas_Pipeline_Construction*, *Power_and_Communication_Line_Construction*, *Highway_Street_and_Bridge_Construction*, *Other_Heavy_and_Civil_Engineering_Construction*, *Poured_Concrete_Foundation_and_Structure_Contractors*, *Structural_Steel_and_Precast_Concrete_Contractors*, *Masonry_Contractors*, *Glass_and_Glazing_Contractors*, *Roofing_Contractors*, *Siding_Contractors*, *Other_Foundation_Structure_and_Building_Exterior_Contractors*, *Electrical_Contractors_and_Other_Wiring_Installation_Contractors*, *Plumbing_&_HVAC_Contractors*, *Other_Building_Equipment_Contractors*, *Drywall_and_Insulation_Contractors*, *Painting_and_Wall_Covering_Contractors*, & *Flooring_Contractors*
	...                                                     
	...                                                     Values need to be used for _Real_Estate_:
	...                                                     *New_Single-Family_Housing_Construction*, *New_Multifamily_Housing_Construction*, *New_Housing_For-Sale_Builders*, *Nonresidential_Property_Managers*, *Lessors_of_Nonresidential_Buildings*, *Lessors_of_Miniwarehouses_and_Self-Storage_Units*, *Lessors_of_Other_Real_Estate_Property*, *Residential_Property_Managers*, *Lessors_of_Residential_Buildings_and_Dwellings*, *Other_Services_to_Buildings_and_Dwellings*, *Residential_Remodelers*, & *Industrial_Building_Construction*
	...                                                     
	...                                                     Values need to be used for _Restaurants_Bars_&_Taverns_:
	...                                                     *Nonalcoholic_Bars*, *Bars_&_Taverns*, *Breweries*, *Full-Service_Restaurants*, *Limited-Service_Restaurants*, & *Food_Trucks_&_Mobile_Food_Services*
	...                                                     
	...                                                     Values need to be used for _Wholesale_:
	...                                                     *Alcoholic_Beverage_Wholesalers*, *Home_Furnishing_Wholesalers*, *Furniture_Wholesalers*, *Hardware_Wholesalers*, *Beer_and_Ale_Wholesalers*, *Automobile_Wholesalers*, *Grocery_Wholesalers*, *Industrial_Machinery_and_Equipment_Wholesalers*, *Medical_Dental_and_Hospital_Equipment_and_Supplies_Wholesalers*, *Computer_Equipment_and_Software_Wholesalers*, & *Farm_Product_Raw_Material_Wholesalers*
	...                                                     
	...                                                     Values need to be used for _Retail_:
	...                                                     *Convenience_Stores*, *All_Other_General_Merchandise_Retailers*, *Gasoline_Stations_with_Convenience_Stores*, *Other_Gasoline_Stations*, *Furniture_Stores*, *Reupholstery_and_Furniture_Repair*, *Home_Centers*, *Hardware_Stores*, *New_Car_Dealers*, *Used_Car_Dealers*, *Beauty_Salons*, *Barber_Shops*, *Drycleaning_and_Laundry_Services*, & *Coin-Operated_Laundries_and_Drycleaners*
	...                                                     
	...                                                     Values need to be used for _Professional_Services_:
	...                                                     *Landscape_Architectural_Services*, *Engineering_Services*, *Research_and_Development*, *Architectural_Services*, *Marketing_Consulting_Services*, *Miscellaneous_Intermediation*, *Administrative_and_General_Management_Consulting_Services*, *Other_Management_Consulting_Services*, *Tax_Preparation_Services*, *Public_Finance_Activities*, *Insurance_Agencies_and_Brokerages*, & *All_Other_Insurance_Related_Activities*
	...                                                     
	...                                                     Values need to be used for _Transportaion_:
	...                                                     *General_Freight_Trucking_Local*, *Distance_Truckload*, *Distance_Less_Than_Truckload*, *Specialized_Freight_Trucking_Local*, *Distance*, *Fuel_Dealers*, *Freight_Transportation*, *Bus_and_Other_Motor_Vehicle_Transit_Systems*, *School_and_Employee_Bus_Transportation*, *Interurban_and_Rural_Bus_Transportation*, *All_Other_Transit_and_Ground_Passenger_Transportation*, *Charter_Buses*, *Urban_Transit_Systems*, *Taxi_Service*, & *Limousine_Service*
	IF              '${Industry}' == 'Cannabis'
	    Select Cannabis Industry NAICS                      ${NAICS_DESC}
	ELSE IF         '${Industry}' == 'Contractors'
		Select Contractors Industry NAICS                   ${NAICS_DESC}
	ELSE IF         '${Industry}' == 'Real_Estate'
		Select Real Estate Industry NAICS                   ${NAICS_DESC}
	ELSE IF         '${Industry}' == 'Restaurants_Bars_&_Taverns'
		Select Restaurant Industry NAICS                    ${NAICS_DESC}
	ELSE IF         '${Industry}' == 'Wholesale'
		Select Wholesale Industry NAICS                     ${NAICS_DESC}
	ELSE IF         '${Industry}' == 'Retail'
		Select Retail Industry NAICS                        ${NAICS_DESC}
	ELSE IF         '${Industry}' == 'Professional_Services'
		Select Professional Services Industry NAICS         ${NAICS_DESC}
	ELSE IF         '${Industry}' == 'Transportation'
		Select Transportation Services Industry NAICS       ${NAICS_DESC}
	ELSE
		Log         No NAICS Description Matched
	    Fail
	END

Select Cannabis Industry NAICS
	[Arguments]                                             ${NAICS_DESC}
	[Documentation]                                         Values need to be used:
	...                                                     *Cannabis_Growing*, \\\n*Cannabis_Cultivation*, *Cannabis_Manufacturering*, *Cannabis_Dispensary*, & *Cannabis Delivery*
	${naics_ID}=            Get From Dictionary             ${Cannabis_Industries}                                      ${NAICS_DESC}
	Click                                                   ${naics_ID}

Select Contractors Industry NAICS
	[Arguments]                                             ${NAICS_DESC}
	[Documentation]                                         Values need to be used:
	...                                                     *Farming_Contractor_&_Crew_Leader*, *Farming_Contractor*, *New_Single-Family_Housing_Construction*, *New_Multifamily_Housing_Construction*, *New_Housing_For-Sale_Builders*, *Commercial_Building_Contruction*, *Water_&_Sewer_Contruction*, *Oil_&_Gas_Pipeline_Construction*, *Power_and_Communication_Line_Construction*, *Highway_Street_and_Bridge_Construction*, *Other_Heavy_and_Civil_Engineering_Construction*, *Poured_Concrete_Foundation_and_Structure_Contractors*, *Structural_Steel_and_Precast_Concrete_Contractors*, *Masonry_Contractors*, *Glass_and_Glazing_Contractors*, *Roofing_Contractors*, *Siding_Contractors*, *Other_Foundation_Structure_and_Building_Exterior_Contractors*, *Electrical_Contractors_and_Other_Wiring_Installation_Contractors*, *Plumbing_&_HVAC_Contractors*, *Other_Building_Equipment_Contractors*, *Drywall_and_Insulation_Contractors*, *Painting_and_Wall_Covering_Contractors*, & *Flooring_Contractors*
	${naics_ID}=            Get From Dictionary             ${Contractors_Industries}                                   ${NAICS_DESC}
	Click                                                   ${naics_ID}

Select Real Estate Industry NAICS
	[Arguments]                                             ${NAICS_DESC}
	[Documentation]                                         Values need to be used:
	...                                                     *New_Single-Family_Housing_Construction*, *New_Multifamily_Housing_Construction*, *New_Housing_For-Sale_Builders*, *Nonresidential_Property_Managers*, *Lessors_of_Nonresidential_Buildings*, *Lessors_of_Miniwarehouses_and_Self-Storage_Units*, *Lessors_of_Other_Real_Estate_Property*, *Residential_Property_Managers*, *Lessors_of_Residential_Buildings_and_Dwellings*, *Other_Services_to_Buildings_and_Dwellings*, *Residential_Remodelers*, & *Industrial_Building_Construction*
	${naics_ID}=            Get From Dictionary             ${Real_Estate_Industries}                                   ${NAICS_DESC}
	Click                                                   ${naics_ID}

Select Restaurant Industry NAICS
	[Arguments]                                             ${NAICS_DESC}
	[Documentation]                                         Values need to be used:
	...                                                     *Nonalcoholic_Bars*, *Bars_&_Taverns*, *Breweries*, *Full-Service_Restaurants*, *Limited-Service_Restaurants*, & *Food_Trucks_&_Mobile_Food_Services*
	${naics_ID}=            Get From Dictionary             ${Restaurants_Bars_&_Taverns_Industries}                    ${NAICS_DESC}
	Click                                                   ${naics_ID}

Select Wholesale Industry NAICS
	[Arguments]                                             ${NAICS_DESC}
	[Documentation]                                         Values need to be used:
	...                                                     *Alcoholic_Beverage_Wholesalers*, *Home_Furnishing_Wholesalers*, *Furniture_Wholesalers*, *Hardware_Wholesalers*, *Beer_and_Ale_Wholesalers*, *Automobile_Wholesalers*, *Grocery_Wholesalers*, *Industrial_Machinery_and_Equipment_Wholesalers*, *Medical_Dental_and_Hospital_Equipment_and_Supplies_Wholesalers*, *Computer_Equipment_and_Software_Wholesalers*, & *Farm_Product_Raw_Material_Wholesalers*
	${naics_ID}=            Get From Dictionary             ${Wholesale_Industries}                                     ${NAICS_DESC}
	Click                                                   ${naics_ID}

Select Retail Industry NAICS
	[Arguments]                                             ${NAICS_DESC}
	[Documentation]                                         Values need to be used:
	...                                                     *Convenience_Stores*, *All_Other_General_Merchandise_Retailers*, *Gasoline_Stations_with_Convenience_Stores*, *Other_Gasoline_Stations*, *Furniture_Stores*, *Reupholstery_and_Furniture_Repair*, *Home_Centers*, *Hardware_Stores*, *New_Car_Dealers*, *Used_Car_Dealers*, *Beauty_Salons*, *Barber_Shops*, *Drycleaning_and_Laundry_Services*, & *Coin-Operated_Laundries_and_Drycleaners*
	${naics_ID}=            Get From Dictionary             ${Retail_Industries}                                        ${NAICS_DESC}
	Click                                                   ${naics_ID}

Select Professional Services Industry NAICS
	[Arguments]                                             ${NAICS_DESC}
	[Documentation]                                         Values need to be used:
	...                                                     *Landscape_Architectural_Services*, *Engineering_Services*, *Research_and_Development*, *Architectural_Services*, *Marketing_Consulting_Services*, *Miscellaneous_Intermediation*, *Administrative_and_General_Management_Consulting_Services*, *Other_Management_Consulting_Services*, *Tax_Preparation_Services*, *Public_Finance_Activities*, *Insurance_Agencies_and_Brokerages*, & *All_Other_Insurance_Related_Activities*
	${naics_ID}=            Get From Dictionary             ${Professional_Services_Industries}                         ${NAICS_DESC}
	Click                                                   ${naics_ID}

Select Transportation Services Industry NAICS
	[Arguments]                                             ${NAICS_DESC}
	[Documentation]                                         Values need to be used:
	...                                                     *General_Freight_Trucking_Local*, *Distance_Truckload*, *Distance_Less_Than_Truckload*, *Specialized_Freight_Trucking_Local*, *Distance*, *Fuel_Dealers*, *Freight_Transportation*, *Bus_and_Other_Motor_Vehicle_Transit_Systems*, *School_and_Employee_Bus_Transportation*, *Interurban_and_Rural_Bus_Transportation*, *All_Other_Transit_and_Ground_Passenger_Transportation*, *Charter_Buses*, *Urban_Transit_Systems*, *Taxi_Service*, & *Limousine_Service*
	${naics_ID}=            Get From Dictionary             ${Transportation_Services_Industries}                       ${NAICS_DESC}
	Click                                                   ${naics_ID}

#Verify the Select Products section
#    Wait For Elements State                                 ${Select_Product_Text_ID}

#Click on Product
#	[Arguments]                                             ${Product}
#	Scroll To Element                                       ${Select_Products.${Product}}
#	Click                                                   ${Select_Products.${Product}}

#Click on Products
#	[Arguments]                                             @{Products}
#	FOR    ${product}   IN    @{Products}
#	    ${productID}=                                       Get From Dictionary                             ${Select_Products}          ${product}
#	    Scroll To Element                                   ${productID}
#	    Click                                               ${productID}
#	END

Click Continue Button
	Click                                                   ${Continue_Button}