*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${ReviewDataTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${ReviewDataTITLE}

VerifyDataPageHeading
    wait until page contains element  id=header
    element should contain  id=header      Select a study

ClickFirstStudy
    wait until page contains element    xpath=//*[@id="studiesTable"]/tbody/tr[1]/td[1]/div/a
    click element   xpath=//*[@id="studiesTable"]/tbody/tr[1]/td[1]/div/a

ClickReporting
    wait until page contains element    id=reporting
    click element   id=reporting

