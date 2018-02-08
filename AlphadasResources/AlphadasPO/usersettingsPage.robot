*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${UsesetTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${UsesetTITLE}

VerifyUserSettingsPageHeading
    wait until page contains element    id=maincontainer
    element should contain      id=maincontainer      Update personal information


NavigateToPasswordChange
    wait until page contains element  id=userpasswordchange
    click element  id=userpasswordchange

AmendEmailAddress
    [Arguments]      ${Email}
    wait until page contains element    id=MainContent_MainContent_txtEmail
    click element   id=MainContent_MainContent_txtEmail
    sleep   2
    repeat keyword  10  Press Key   id=MainContent_MainContent_txtEmail   \\08
    input text  id=MainContent_MainContent_txtEmail      ${Email}

AmendMobileNumber
    [Arguments]      ${Mobile}
    wait until page contains element    id=MainContent_MainContent_txtMobileNumber
    click element   id=MainContent_MainContent_txtMobileNumber
    sleep   2
    repeat keyword  10   Press Key     id=MainContent_MainContent_txtMobileNumber    \\08
    input text  id=MainContent_MainContent_txtMobileNumber      ${Mobile}

SaveChanges
    wait until page contains element    id=MainContent_MainContent_btnSubmit
    click element   id=MainContent_MainContent_btnSubmit

NavigateToHome
    wait until page contains element    id=home
    click element   id=home

VerifyUserSettings              
    wait until page contains element    id=MainContent_MainContent_txtEmail
    text field should contain      id=MainContent_MainContent_txtEmail         craig.smith@instem.com
    wait until page contains element    id=MainContent_MainContent_txtMobileNumber
    text field should contain     id=MainContent_MainContent_txtMobileNumber      01234567890


