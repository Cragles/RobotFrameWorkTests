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

ClickEDCNew
    wait until page contains element    id=entity-
    click element   id=entity-

EnterEDCName
    [Arguments]  ${EDCname}
    wait until page contains element  id=Name
    input text  id=Name      ${EDCname}

EnterEDCHost
    [Arguments]  ${EDChost}
    wait until page contains element  id=Host
    input text  id=Host      ${EDChost}

EnterEDCUsername
    [Arguments]  ${EDCusername}
    wait until page contains element  id=UserName
    input text  id=UserName     ${EDCusername}

EnterEDCPassword
    [Arguments]  ${EDCpassword}
    wait until page contains element  id=Password
    input text  id=Password     ${EDCpassword}

SaveEDC
    wait until page contains element    //*[@id="edc-server-form"]/fieldset/div/div/button
    click element   //*[@id="edc-server-form"]/fieldset/div/div/button

RemoveEDCServer
    wait until page contains element    //*[@id="entity-4"]/img
    click element       //*[@id="entity-4"]/img

ConfirmDeletion
    wait until page contains element    //*[@id="alphadas-modal-dialog-tmpl"]/div[2]/div/button
    click element   //*[@id="alphadas-modal-dialog-tmpl"]/div[2]/div/button





    