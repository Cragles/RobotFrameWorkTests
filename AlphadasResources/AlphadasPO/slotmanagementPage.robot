*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${SLOTMANTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${SLOTMANTITLE}

VerifyDataPageHeading
    wait until page contains element  id=header
    element should contain  id=header      Select a study

ClickSecondStudy         #EG Reg Study CF     #tr[4]
    wait until page contains element    xpath=//*[@id="studiesTable"]/tbody/tr[2]/td[1]/div/a    #Data Parameter Comments Study
    click element   xpath=//*[@id="studiesTable"]/tbody/tr[2]/td[1]/div/a



