*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem
#Library  Pillow

*** Variables ***
${RespassTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${RespassTITLE}

VerifyPasswordPageHeading
    wait until page contains element    id=form0
    element should contain      id=form0      Forgot your password?

EnterUserName
    [Arguments]  ${Username}
    wait until page contains element  id=UserName
    input text  id=UserName      ${Username}

ClickSendVerificationLink
    wait until page contains element  xpath=//*[@id="form0"]/div[3]/button
    click button  xpath=//*[@id="form0"]/div[3]/button

VerifyMessage
    wait until page contains element    id=container
    element should contain      id=container    You will shortly receive an e-mail with a verification link.

