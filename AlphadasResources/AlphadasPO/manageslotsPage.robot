*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
Library  OperatingSystem

*** Variables ***
${MANSLOTTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${MANSLOTTITLE}

VerifyDataPageHeading
    wait until page contains element  xpath=//*[@id="maincontainer"]/div[1]/div[1]/h2
    element should contain  xpath=//*[@id="maincontainer"]/div[1]/div[1]/h2      Manage Slots for

ClickSecondStudy
    wait until page contains element      xpath=//*[@id="visitList"]/div[3]/div[1]    #is div 2:1 not 3:1:3
    click element    xpath=//*[@id="visitList"]/div[3]/div[1]

ClickViewSlots
    wait until page contains element    xpath=//*[@id="2262"]/td[7]/a           #id=5271
    click element   xpath=//*[@id="2262"]/td[7]/a

Click AssignVolunteer
    wait until page contains element      xpath=//*[@id="MainContent_MainContent_slotListView_SlotsResultsTable"]/tbody/tr[3]/td[7]   # tr[2]
    click element        xpath=//*[@id="MainContent_MainContent_slotListView_SlotsResultsTable"]/tbody/tr[3]/td[7]

AppointmentInThePastOk
    Handle Alert

AssignVolunteer
    wait until page contains element    xpath=//*[@id="tblVolunteers"]/tbody/tr[1]/td[4]/a
    click element   xpath=//*[@id="tblVolunteers"]/tbody/tr[1]/td[4]/a

VerifyAddContainer
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Volunteer was assigned.
    click element   xpath=//*[@id="container"]/div/a

RemoveVolunteer
    wait until page contains element    xpath=//*[@id="imgRemoveVolonteer"]
    click element   xpath=//*[@id="imgRemoveVolonteer"]

ConfirmRemoveOk
    Handle Alert

VerifyRemoveContainer
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Volunteer was removed from slot.
    click element   xpath=//*[@id="container"]/div/a

ClickVolunteerRecruitment
    wait until page contains element    id=volunteerrecruitment
    click element   id=volunteerrecruitment

