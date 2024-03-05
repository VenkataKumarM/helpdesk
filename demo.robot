*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}=     https://demo.automationtesting.in/DynamicData.html
${browser}=     Chrome

*** Test Cases ***
landing page
	opening browser
dynamic data button cheking
	dynamic data button
chekcing image URl
	getting image url and text
    Close Browser
*** Keywords ***
opening browser
	Open Browser    ${url}      ${browser}
	Maximize Browser Window
	Sleep    4
dynamic data button
	Click Element    xpath://button[@id="save"]
	Sleep    6
getting image url and text
	${image data}=      Get Element Attribute    xpath://img[contains(@src,"https://randomuser.me/api/portraits")]  src
	Log To Console    sorce of image is:${image data}
	${da}=      Get Text    xpath:(//div[@id='loading']/br)
	Log To Console    text is :${da}
	Log To Console    data found

