*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${DESADMINTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${DESADMINTITLE}

ClickEDCServers
    wait until page contains element    xpath=//*[@id="section-nav"]/li[2]/a
    click element   xpath=//*[@id="section-nav"]/li[2]/a
    element should contain  xpath=//*[@id="section-nav"]/li[2]/a      EDC servers

ClickLabelPrinterConfiguration
    wait until page contains element    xpath=//*[@id="section-nav"]/li[3]/a
    click element   xpath=//*[@id="section-nav"]/li[3]/a
    element should contain  xpath=//*[@id="section-nav"]/li[3]/a      Label Printer Configuration

ClickLabelTemplateManagement
    wait until page contains element    xpath=//*[@id="section-nav"]/li[4]/a
    click element   xpath=//*[@id="section-nav"]/li[4]/a
    element should contain  xpath=//*[@id="section-nav"]/li[4]/a      Label template management

ClickNotificationTemplates
    wait until page contains element    xpath=//*[@id="section-nav"]/li[5]/a
    click element   xpath=//*[@id="section-nav"]/li[5]/a
    element should contain  xpath=//*[@id="section-nav"]/li[5]/a      Notification templates

ClickSettings
    wait until page contains element    xpath=//*[@id="section-nav"]/li[6]/a
    click element   xpath=//*[@id="section-nav"]/li[6]/a
    element should contain  xpath=//*[@id="section-nav"]/li[6]/a      Settings

ClickSites
    wait until page contains element    xpath=//*[@id="section-nav"]/li[7]/a
    click element   xpath=//*[@id="section-nav"]/li[7]/a
    element should contain  xpath=//*[@id="section-nav"]/li[7]/a      Sites

ClickSlotStatuses
    wait until page contains element    xpath=//*[@id="section-nav"]/li[8]/a
    click element   xpath=//*[@id="section-nav"]/li[8]/a
    element should contain  xpath=//*[@id="section-nav"]/li[8]/a      Slot statuses

ClickStudyTypes
    wait until page contains element    xpath=//*[@id="section-nav"]/li[9]/a
    click element   xpath=//*[@id="section-nav"]/li[9]/a
    element should contain  xpath=//*[@id="section-nav"]/li[9]/a      Study types