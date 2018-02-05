*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
Library  OperatingSystem

*** Variables ***
${VOLRECTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${VOLRECTITLE}

VerifyDataPageHeading
    wait until page contains element  xpath=//*[@id="maincontainer"]/div/div[1]/h2
    element should contain  xpath=//*[@id="maincontainer"]/div/div[1]/h2      Subject Search

ClickSearch
    click button   id=searchButton

VerifyResultsReturned
    wait until page contains element    id=results
    element should contain  id=results      Random selection from search results:

BrowseToRecruitment
    wait until page contains element    id=ui-id-2
    sleep   5
    click element   id=ui-id-2
    element should contain  id=ui-id-2  Recruitment

BrowseToTags
    wait until page contains element    id=ui-id-3
    click element    id=ui-id-3
    element should contain  id=ui-id-3      Tags

BrowseToSubjectPayments
    wait until page contains element    id=subjectpayments
    click element   id=subjectpayments

