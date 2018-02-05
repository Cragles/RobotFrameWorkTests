*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${DesignTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be      ${DesignTITLE}

VerifyDesignPageHeading
    wait until page contains element    id=maincontainer
    element should contain      id=maincontainer      Please select a module from the menu above

ClickReview
    wait until page contains element      id=review
    click element    id=review

ClickCTMS
    wait until page contains element     id=ctms
    click element      id=ctms

ClickStudyDesigner
    wait until page contains element     id=studydesigner
    click element    id=studydesigner

ClickLabelPrinting
    wait until page contains element     id=labelprinting
    click element     id=labelprinting

ClickAdministration
    wait until page contains element     id=studydesigneradministration
    click element       id=studydesigneradministration

