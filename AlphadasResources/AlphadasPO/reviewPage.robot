*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${ReviewTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${ReviewTITLE}

VerifyReviewPageHeading
    wait until page contains element  id=maincontainer
    element should contain  id=maincontainer      Please select a module from the menu above

ClickReviewData
    wait until page contains element    id=reviewdata
    click element   id=reviewdata

ClickReporting
    wait until page contains element    id=reporting
    click element   id=reporting

ClickECRF
    wait until page contains element    id=ECRF
    click element   id=ECRF

ClickCTMS
    wait until page contains element    id=ctms
    click element   id=ctms

ClickDesign
    wait until page contains element    id=design
    click element   id=design