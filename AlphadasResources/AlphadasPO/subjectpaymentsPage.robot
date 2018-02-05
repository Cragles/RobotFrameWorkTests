*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
Library  OperatingSystem

*** Variables ***
${SUBPAYTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${SUBPAYTITLE}

SelectSubject1
    wait until page contains element  xpath=//*[@id="MainContent_MainContent_ddlSubjectFilter_chzn"]/a/div/b
    click element   xpath=//*[@id="MainContent_MainContent_ddlSubjectFilter_chzn"]/a/div/b
    sleep    5
    wait until page contains element    xpath=//*[@id="MainContent_MainContent_ddlSubjectFilter_chzn_o_1"]
    click element   xpath=//*[@id="MainContent_MainContent_ddlSubjectFilter_chzn_o_1"]
    sleep   5

ClickSearch1
    click button   id=searchButton
    sleep   5

SelectGlobalPaymentsView
    wait until page contains element    id=MainContent_MainContent_ucSubjectPaymentLinks_hlSubjectPaymentsGlobal
    click element  id=MainContent_MainContent_ucSubjectPaymentLinks_hlSubjectPaymentsGlobal

SelectSubject2
    wait until page contains element  xpath=//*[@id="MainContent_MainContent_ddlSubjects_chzn"]/a/div/b
    click element   xpath=//*[@id="MainContent_MainContent_ddlSubjects_chzn"]/a/div/b
    sleep    5
    wait until page contains element    xpath=//*[@id="MainContent_MainContent_ddlSubjects_chzn_o_1"]
    click element   xpath=//*[@id="MainContent_MainContent_ddlSubjects_chzn_o_1"]
    sleep   5

ClickSearch2
    click button   id=searchButton
    sleep   5

BrowseToTools
    wait until page contains element    id=ctmsdata
    click element   id=ctmsdata
    sleep   5