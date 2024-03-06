*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}=     https://www.timeanddate.com/worldclock/
${browser}=     Chrome
${table_data}=      //table/tbody/tr/td/a
*** Test Cases ***
Checking Data
	Open Browser    ${url}      ${browser}
	Sleep    4
	${table_rows}=      Get Webelements    xpath:${table_data}
	${table_length}=    Get Length    ${table_rows}
    FOR    ${I}     IN RANGE    1   ${table_length}
    	${columns data}=    Get Text    xpath:(//table/tbody/tr/td/a)[${I}]
    	Log To Console    ${columns data}       end=' '
    	Run Keyword If    ${I}%4 == 0    Log To Console    \n
    END
