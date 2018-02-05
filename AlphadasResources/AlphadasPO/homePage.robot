*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${HomeTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${HomeTITLE}

VerifyLoginPageHeading
    wait until page contains element  id=maincontainer
    element should contain  id=maincontainer  Welcome John Smith1

ClickReview
    wait until page contains element    id=review
    click element   id=review

ClickCTMS
    wait until page contains element    id=ctms
    click element   id=ctms

ClickDesign
    wait until page contains element    id=design
    click element   id=design

ValidLogin
    [Arguments]  ${Username}
    wait until page contains element    xpath=//*[@id="Form1"]/div[3]/div/a
    click element        xpath=//*[@id="Form1"]/div[3]/div/a
    sleep   5
    wait until page contains element   xpath=//*[@id="useroptions"]
    element should contain  xpath=//*[@id="useroptions"]    ${Username}
    element should contain  xpath=//*[@id="useroptions"]      Last login time
    Capture Page Screenshot

Logout
    wait until page contains element    xpath=//*[@id="Form1"]/div[3]/div/a
    click element        xpath=//*[@id="Form1"]/div[3]/div/a
    wait until page contains element    xpath=//*[@id="mainMenu_lbLogout"]
    click element       xpath=//*[@id="mainMenu_lbLogout"]

UserSettings
    wait until page contains element    xpath=//*[@id="Form1"]/div[3]/div/a
    click element        xpath=//*[@id="Form1"]/div[3]/div/a
    wait until page contains element    xpath=//*[@id="account"]
    click element       xpath=//*[@id="account"]


#verifyErrMsg
   # wait until page contains element  id=login-error
    #element should contain  id=login-error  Username or password incorrect
    #wait until page contains element  id=content
    #element should contain  id=content   Please check you have entered the details correctly and try again

#verifyloginPageHeading
 #   wait until page contains element  id=content
  #  element should contain  id=content  This is a new service – your feedback will help us to improve it.

