*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${GLOBSETTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${GLOBSETTITLE}

VerifyGlobalSettingsPageHeading
    wait until page contains element  id=maincontainer
    element should contain  id=maincontainer      Global settings

SearchForLockout
    [Arguments]      ${Search}
    wait until page contains element    xpath=//*[@id="abc_filter"]/label/input
    input text      xpath=//*[@id="abc_filter"]/label/input      ${Search}

EditLockout
    wait until page contains element    id=ed
    click element   id=ed

EditLockoutValueToTen                    #lockoutvalue length 7940 chars - any need? - bluetac attack attack - db issues?
    wait until page contains element    id=Value
    click element   id=Value
    sleep   2
    Press Key   id=Value    \\08
    sleep   2
    Press Key   id=Value    \\08
    sleep   2
    Press Key   id=Value    \\48
    sleep   2
    click element   name=btn-submit-dialog

VerifyEditContainer
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Success
    click element   xpath=//*[@id="container"]/div/a

NavigateToHome
    wait until page contains element    id=home
    click element   id=home

EditLockoutValueToOneHundredTwenty                    #lockoutvalue length 7940 chars - any need? - bluetac attack attack - db issues?
    wait until page contains element    id=Value
    click element   id=Value
    Press Key   id=Value    \\08
    sleep   2
    Press Key   id=Value    \\50
    sleep   2
    Press Key   id=Value    \\48
    sleep   2
    click element   name=btn-submit-dialog
