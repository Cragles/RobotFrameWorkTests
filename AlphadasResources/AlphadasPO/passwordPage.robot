*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${PassTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${PassTITLE}

VerifyPasswordPageHeading
    wait until page contains element    id=maincontainer
    element should contain      id=maincontainer      Password Change

EnterCurrentPassword
    [Arguments]  ${Curpass}
    wait until page contains element  id=txtPasswordCurrent
    input text  id=txtPasswordCurrent      ${Curpass}

EnterNewPassword
    [Arguments]  ${Newpass}
    wait until page contains element  id=txtPasswordNew
    input text  id=txtPasswordNew     ${NewPass}

ConfirmPassword
    [Arguments]  ${Confirmpass}
    wait until page contains element  id=txtPasswordNewConfirm
    input text  id=txtPasswordNewConfirm     ${Confirmpass}

ClickChangePassword
    wait until page contains element  id=MainContent_MainContent_btnSubmit
    click button  id=MainContent_MainContent_btnSubmit

VerifySucessContainer
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Success
    click element   xpath=//*[@id="container"]/div/a


