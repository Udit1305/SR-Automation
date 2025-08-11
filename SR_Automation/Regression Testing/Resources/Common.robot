*** Settings ***
Library                                 Browser
Library                                 ../../SR_Custom_Library/SrCustomLib.py

*** Variables ***
&{URLs}                                     UAT_Admin=https://uat-admin.squarerisk.net                                                                                                                             UAT_Agent=https://uat.squarerisk.net/login                                                                                                                             DEV_Admin=https://dev-admin.squarerisk.net                                                                                                                             DEV_Agent=https://dev.squarerisk.net/login

${ENV}                                      DEV
${Browser}                                  Chromium
${Headless}                                 false

&{UserCredentials}                          agent_email_UAT=uditbhati1305+789@gmail.com                                                                                                                            agent_password_UAT=SquareRisk#12                                                                                                                                       admin_email_UAT=Portal_admin@squarerisk.com                                                                                                                            admin_password_UAT=123456789                                                                                                                                           agent_email_DEV=uditbhati1305+789@gmail.com                                                                                                                            agent_password_DEV=SquareRisk#12                                                                                                                                       admin_email_DEV=Portal_admin@squarerisk.com                                                                                                                            admin_password_DEV=123456789

&{Products}                                 Res_Flood=Residential_Flood                                                                                                                                            Comm_Flood=Commercial_Flood                                                                                                                                            Cyber=Cyber                                                                                                                                                            WC=Workers_Comp                                                                                                                                                        CWC=Cannabis_Workers_Comp                                                                                                                                              CannGenL=Cannabis_Gen_L                                                                                                                                                CannProdL=Cannabis_Prod_L                                                                                                                                              CannPropL=Cannabis_Prop_L                                                                                                                                              CommGenL=Commercial_Gen_L

&{US_States}                                AL=Alabama                                                                                                                                                             AK=Alaska AZ=Arizona                                                                                                                                                   AR=Arkansas                                                                                                                                                            CA=California                                                                                                                                                          CO=Colorado                                                                                                                                                            CT=Connecticut                                                                                                                                                         DE=Delaware                                                                                                                                                            DC=District of Columbia                                                                                                                                                FL=Florida                                                                                                                                                             GA=Georgia                                                                                                                                                             HI=Hawaii                                                                                                                                                              ID=Idaho                                                                                                                                                               IL=Illinois                                                                                                                                                            IN=Indiana                                                                                                                                                             IA=Iowa                                                                                                                                                                KS=Kansas                                                                                                                                                              KY=Kentucky                                                                                                                                                            LA=Louisiana                                                                                                                                                           ME=Maine                                                                                                                                                               MD=Maryland                                                                                                                                                            MA=Massachusetts                                                                                                                                                       MI=Michigan MN=Minnesota                                                                                                                                               MS=Mississippi                                                                                                                                                         MO=Missouri                                                                                                                                                            MT=Montana                                                                                                                                                             NE=Nebraska                                                                                                                                                            NV=Nevada                                                                                                                                                              NH=New Hampshire                                                                                                                                                       NJ=New Jersey                                                                                                                                                          NM=New Mexico                                                                                                                                                          NY=New York                                                                                                                                                            NC=North Carolina                                                                                                                                                      ND=North Dakota                                                                                                                                                        OH=Ohio                                                                                                                                                                OK=Oklahoma                                                                                                                                                            OR=Oregon                                                                                                                                                              PA=Pennsylvania                                                                                                                                                        PR=Puerto Rico                                                                                                                                                         RI=Rhode Island                                                                                                                                                        SC=South Carolina                                                                                                                                                      SD=South Dakota                                                                                                                                                        TN=Tennessee                                                                                                                                                           TX=Texas                                                                                                                                                               UT=Utah                                                                                                                                                                VT=Vermont                                                                                                                                                             VA=Virginia                                                                                                                                                            VI=Virgin Islands                                                                                                                                                      WA=Washington                                                                                                                                                          WV=West Virginia                                                                                                                                                       WI=Wisconsin                                                                                                                                                           WY=Wyoming

&{US_State_Codes}                           Alabama=AL	                                                                                                                                                           Alaska=AK	                                                                                                                                                           Arizona=AZ	                                                                                                                                                           Arkansas=AR	                                                                                                                                                           California=CA	                                                                                                                                                       Colorado=CO	                                                                                                                                                           Connecticut=CT	                                                                                                                                                       Delaware=DE	                                                                                                                                                           DistrictofColumbia=DC	                                                                                                                                               Florida=FL	                                                                                                                                                           Georgia=GA	                                                                                                                                                           Hawaii=HI	                                                                                                                                                           Idaho=ID	                                                                                                                                                           Illinois=IL	                                                                                                                                                           Indiana=IN	                                                                                                                                                           Iowa=IA	                                                                                                                                                               Kansas=KS	                                                                                                                                                           Kentucky=KY	                                                                                                                                                           Louisiana=LA	                                                                                                                                                       Maine=ME	                                                                                                                                                           Maryland=MD	                                                                                                                                                           Massachusetts=MA	                                                                                                                                                   Michigan=MI	                                                                                                                                                           Minnesota=MN	                                                                                                                                                       Mississippi=MS	                                                                                                                                                       Missouri=MO	                                                                                                                                                           Montana=MT	                                                                                                                                                           Nebraska=NE	                                                                                                                                                           Nevada=NV	                                                                                                                                                           NewHampshire=NH	                                                                                                                                                       NewJersey=NJ	                                                                                                                                                       NewMexico=NM	                                                                                                                                                       NewYork=NY	                                                                                                                                                           NorthCarolina=NC	                                                                                                                                                   NorthDakota=ND	                                                                                                                                                       Ohio=OH	                                                                                                                                                               Oklahoma=OK	                                                                                                                                                           Oregon=OR	                                                                                                                                                           Pennsylvania=PA	                                                                                                                                                       PuertoRico=PR	                                                                                                                                                       RhodeIsland=RI	                                                                                                                                                       SouthCarolina=SC	                                                                                                                                                   SouthDakota=SD	                                                                                                                                                       Tennessee=TN	                                                                                                                                                       Texas=TX	                                                                                                                                                           Utah=UT	                                                                                                                                                               Vermont=VT	                                                                                                                                                           Virginia=VA	                                                                                                                                                           VirginIslands=VI	                                                                                                                                                   Washington=WA	                                                                                                                                                       WestVirginia=WV	                                                                                                                                                       Wisconsin=WI	                                                                                                                                                       Wyoming=WY

${Default_Phone_Number}                     1111111111
${Zoho_Signature_Title_ID}                  iframe[title="Sign Proposal"]
${Sameple_File_Location}                    C:/Users/Dell/OneDrive/Documents/1 - Sample Docs/sample1.pdf
${Payment_iframe_ID}                        iframe[title="Secure payment input frame"]
${Default_CreditCard_Number}                4242 4242 4242 4242
${Default_CreditCard_Expiration_Date}       05/26
${Default_CVC}                              456

*** Keywords ***
Open the Browser
    New Browser                         browser=${Browser}                              headless=${Headless}                          args=["--start-maximized"]
#    New Context                         viewport=${None}                                recordVideo={'dir': 'D:/Softwares/Pycharm/RobotFramework/SR_Automation/SR_Automation/Regression Testing/results/', 'size':{'width':1280, 'height':720}}
    New Context                         viewport=${None}

Get Credentials
    [Arguments]                         ${role}
    ${email}=                           Run Keyword If                                  '${role}' == 'Agent'    Get Agent Email       ELSE    Get Admin Email
    ${password}=                        Run Keyword If                                  '${role}' == 'Agent'    Get Agent Password    ELSE    Get Admin Password
    RETURN                              ${email}                                        ${password}

Get Email and Password of
	[Arguments]                         ${role}
	${email}    ${password}=            Get Credentials                                 ${role}
	Set Global Variable                 ${email}
	Set Global Variable                 ${password}

Get Agent Email
	IF                                  '${ENV}' == 'UAT'
	    ${userID}=                      Set Variable                                    ${UserCredentials.agent_email_UAT}
	ELSE
		${userID}=                      Set Variable                                    ${UserCredentials.agent_email_DEV}
	END
	RETURN                              ${userID}

Get Admin Email
	IF                                  '${ENV}' == 'UAT'
	    ${user_ID}=                     Set Variable                                    ${UserCredentials.admin_email_UAT}
	ELSE
		${user_ID}=                     Set Variable                                    ${UserCredentials.admin_email_DEV}
	END
    RETURN                              ${user_ID}

Get Agent Password
	IF                                  '${ENV}' == 'UAT'
	    ${password}=                    Set Variable                                    ${UserCredentials.agent_password_UAT}
	ELSE
		${password}=                    Set Variable                                    ${UserCredentials.agent_password_DEV}
	END
    RETURN                              ${password}

Get Admin Password
	IF                                  '${ENV}' == 'UAT'
	    ${password}=                    Set Variable                                    ${UserCredentials.admin_password_UAT}
	ELSE
		${password}=                    Set Variable                                    ${UserCredentials.admin_password_DEV}
	END
    RETURN                              ${password}

Get Next Date
	${next_day_date}=                   Get Next Day
	RETURN                              ${next_day_date}

Get Current Date
    ${current_day_date}=                Get Current Day
    RETURN                              ${current_day_date}

Get Random Company Name
	${company_name}=                    Generate Random Company Name
	RETURN                              ${company_name}

Get Random Address String
	${address}=                         Generate Random Us Address String
	RETURN                              ${address}

Get Random Address String By State
    [Arguments]                         ${state}
	${address}=                         Generate Random Us Address String By State      ${state}
	RETURN                              ${address}

Get Random Address
	${address1}     ${address2}         ${city}         ${state}        ${postal_code}=      Generate Random Us Address
	RETURN                              ${address1}     ${address2}     ${city}        ${state}    ${postal_code}


Get Random Address by State
	[Arguments]                         ${state}
	${address1}     ${address2}         ${city}         ${state}        ${postal_code}=      Generate Random Us Address By State    ${state}
	RETURN                              ${address1}     ${address2}     ${city}        ${state}    ${postal_code}

Get Bank Routing Number
	${bank_routing_number}              Generate Bank Routing Number
	RETURN                              ${bank_routing_number}

Get Fake First & Last Name
    ${First_name}   ${Last_Name}=       Generate Fake First And Last Name
    RETURN                              ${First_name}      ${Last_Name}

Get Fake Email
    ${Email}                            Generate Fake Email
    RETURN                              ${Email}

Get Dummy Data
    [Arguments]                         ${state}
    ${Today's_Date}                     Get Current Date
    ${Tommorrow's_Date}                 Get Next Date
    ${Comp_Name}                        Get Random Company Name
    ${Google_Addr}                      Get Random Address String By State          ${state}
    ${address1}     ${address2}     ${city}        ${state}    ${postal_code}       Get Random Address by State                 ${state}
    ${fname}    ${lname}                Get Fake First & Last Name
    ${Routing_Number}                   Get Bank Routing Number
    ${Email_Addr}                       Get Fake Email
    Set Global Variable                 ${Effective_Date_Today}                     ${Today's_Date}
    Set Global Variable                 ${Effective_Date_Tomorrow}                  ${Tommorrow's_Date}
    Set Global Variable                 ${Company_name}                             ${Comp_Name}
    Set Global Variable                 ${Google_Address}                           ${Google_Addr}
    Set Global Variable                 ${AddrL1}                                   ${address1}
    Set Global Variable                 ${AddrL2}                                   ${address2}
    Set Global Variable                 ${City}                                     ${city}
    Set Global Variable                 ${State}                                    ${state}
    Set Global Variable                 ${Zip}                                      ${postal_code}
    Set Global Variable                 ${First_name}                               ${fname}
    Set Global Variable                 ${Last_Name}                                ${lname}
    Set Global Variable                 ${Bank_Route_Number}                        ${Routing_Number}
    Set Global Variable                 ${Email_Address}                            ${Email_Addr}
    Set Global Variable                 ${State_Abbr}                               ${US_States.${state}}


Calculate HighView Premium Amount
	[Arguments]                         ${Payroll_Amount}       ${Class_Code}        ${State}
	${stateCode_Key}                    Remove Char                                  ${State}
	${state_Code}                       Set Variable                                 ${US_State_Codes.${stateCode_Key}}
	${net_Premium}  ${total_Premium}=	Calculate HighView Premium                   ${Payroll_Amount}       ${Class_Code}        ${state_Code}
	${Formatted_Net_Premium}            Format Currency                              ${net_Premium}
	${Formatted_Total_Premium}          Format Currency                              ${total_Premium}
	Set Global Variable                 ${Net_Premium}                               ${Formatted_Net_Premium}
	Set Global Variable                 ${Total_Premium}                             ${Formatted_Total_Premium}

Close the Browser Session
    Close Browser