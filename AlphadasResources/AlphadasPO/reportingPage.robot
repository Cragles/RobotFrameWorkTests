*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${ReportingTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${ReportingTITLE}

VerifyDesignPageHeading
    wait until page contains element  id=maincontainer
    element should contain  id=maincontainer      Crystal Reports

ClickFirstReport
    wait until page contains element    xpath=//*[@id="filterlist"]/li[1]/h2/a/span
    click element   xpath=//*[@id="filterlist"]/li[1]/h2/a/span

ClickGenerateReport
    wait until page contains element    id=MainContent_MainContent_MainContent_btnFiltered
    click element   id=MainContent_MainContent_MainContent_btnFiltered

VerifyReport
    wait until page contains element  id=crystalreportlist
    click element   id=crystalreportlist

ClickECRF
    wait until page contains element    id=ECRF
    click element   id=ECRF
