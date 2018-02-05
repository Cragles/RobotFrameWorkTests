*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${CTMSADMINTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${CTMSADMINTITLE}

ClickClinicalSites
    wait until page contains element    xpath=//*[@id="section-nav"]/li[2]/a
    click element   xpath=//*[@id="section-nav"]/li[2]/a
    element should contain  xpath=//*[@id="section-nav"]/li[2]/a      Clinical sites

ClickCommunicationInformation
    wait until page contains element    xpath=//*[@id="section-nav"]/li[3]/a
    click element   xpath=//*[@id="section-nav"]/li[3]/a
    element should contain  xpath=//*[@id="section-nav"]/li[3]/a      Communication information

ClickCommunicationTypes
    wait until page contains element    xpath=//*[@id="section-nav"]/li[4]/a
    click element   xpath=//*[@id="section-nav"]/li[4]/a
    element should contain  xpath=//*[@id="section-nav"]/li[4]/a      Communication types

ClickConfigurationImport
    wait until page contains element    xpath=//*[@id="section-nav"]/li[5]/a
    click element   xpath=//*[@id="section-nav"]/li[5]/a
    element should contain  xpath=//*[@id="section-nav"]/li[5]/a      Configuration

ClickEthnicityInformation
    wait until page contains element    xpath=//*[@id="section-nav"]/li[6]/a
    click element   xpath=//*[@id="section-nav"]/li[6]/a
    element should contain  xpath=//*[@id="section-nav"]/li[6]/a      Ethnicity information


ClickExtraData
    wait until page contains element    xpath=//*[@id="section-nav"]/li[7]/a
    click element   xpath=//*[@id="section-nav"]/li[7]/a
    element should contain  xpath=//*[@id="section-nav"]/li[7]/a      Extra data

ClickGlobalSettingsSite1
    wait until page contains element    xpath=//*[@id="section-nav"]/li[8]/a
    click element   xpath=//*[@id="section-nav"]/li[8]/a
    element should contain  xpath=//*[@id="section-nav"]/li[8]/a      Global settings

ClickGlobalSettingsSite2
    wait until page contains element    xpath=//*[@id="section-nav"]/li[8]/a
    click element   xpath=//*[@id="section-nav"]/li[8]/a
    element should contain  xpath=//*[@id="section-nav"]/li[8]/a      Global settings

ClickHearAboutUs
    wait until page contains element    xpath=//*[@id="section-nav"]/li[9]/a
    click element   xpath=//*[@id="section-nav"]/li[9]/a
    element should contain  xpath=//*[@id="section-nav"]/li[9]/a      Hear about us

ClickMedicalInformation
    wait until page contains element    xpath=//*[@id="section-nav"]/li[10]/a
    click element   xpath=//*[@id="section-nav"]/li[10]/a
    element should contain  xpath=//*[@id="section-nav"]/li[10]/a      Medical information

ClickNicotineTypes
    wait until page contains element    xpath=//*[@id="section-nav"]/li[11]/a
    click element   xpath=//*[@id="section-nav"]/li[11]/a
    element should contain  xpath=//*[@id="section-nav"]/li[11]/a      Nicotine types

ClickPaymentSettings
    wait until page contains element    xpath=//*[@id="section-nav"]/li[12]/a
    click element   xpath=//*[@id="section-nav"]/li[12]/a
    element should contain  xpath=//*[@id="section-nav"]/li[12]/a      Payment settings

ClickPaymentTypes
    wait until page contains element    xpath=//*[@id="section-nav"]/li[13]/a
    click element   xpath=//*[@id="section-nav"]/li[13]/a
    element should contain  xpath=//*[@id="section-nav"]/li[13]/a      Payment types

ClickReviewLevels
    wait until page contains element    xpath=//*[@id="section-nav"]/li[14]/a
    click element   xpath=//*[@id="section-nav"]/li[14]/a
    element should contain  xpath=//*[@id="section-nav"]/li[14]/a      Review levels

ClickSubjectStatuses
    wait until page contains element    xpath=//*[@id="section-nav"]/li[15]/a
    click element   xpath=//*[@id="section-nav"]/li[15]/a
    element should contain  xpath=//*[@id="section-nav"]/li[15]/a      Subject statuses

ClickVariableInforation
    wait until page contains element    xpath=//*[@id="section-nav"]/li[16]/a
    click element   xpath=//*[@id="section-nav"]/li[16]/a
    element should contain  xpath=//*[@id="section-nav"]/li[16]/a      Variable information

ClickVolunteerSettings
    wait until page contains element    xpath=//*[@id="section-nav"]/li[17]/a
    click element   xpath=//*[@id="section-nav"]/li[17]/a
    element should contain  xpath=//*[@id="section-nav"]/li[17]/a      Volunteer settings

ClickDesign
    wait until page contains element    id=design
    click element   id=design