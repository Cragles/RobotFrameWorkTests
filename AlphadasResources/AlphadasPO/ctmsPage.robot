*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${CTMSTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${CTMSTITLE}

VerifyCTMSPageHeading
    wait until page contains element  id=maincontainer
    element should contain  id=maincontainer      Please select a module from the menu above

ClickReview
    wait until page contains element    id=review
    click element   id=review

ClickDesign
    wait until page contains element    id=design
    click element   id=design

ClickSlotManagement
    wait until page contains element    id=slotmanagement
    click element   id=slotmanagement

ClickVolunteerRecruitment
    wait until page contains element    id=volunteerrecruitment
    click element   id=volunteerrecruitment

ClickSubjectPayments
    wait until page contains element    id=subjectpayments
    click element   id=subjectpayments

ClickTools
    wait until page contains element    id=ctmsdata
    click element   id=ctmsdata

ClickAdministration
    wait until page contains element    id=ctmsadministration
    click element   id=ctmsadministration