*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem
#Library  Pillow

*** Variables ***
#${START_URL} =  http://10.102.0.21/AP8Reg/Pages/Default.aspx
${START_URL} =  http://10.102.0.21/AP8_2/Pages/Default.aspx
#${TITLE} =  ALPHADAS - Login


*** Keywords ***
LoadPage
    delete all cookies
    go to  ${START_URL}
   # title should be  ${TITLE}

EnterUserName
    [Arguments]  ${Username}
    wait until page contains element  id=txtUsername
    input text  id=txtUsername      ${Username}

EnterPassword
    [Arguments]  ${Password}
    wait until page contains element  id=txtPassword
    input text  id=txtPassword      ${Password}

ClickLogin
    wait until page contains element  id=btnSubmit
    click button  id=btnSubmit

DisabledError
   wait until page contains element  id=plErrorText
   element should contain   id=plErrorText     User is disabled.
   Capture Page Screenshot

DeletedError
   wait until page contains element  id=plErrorText
   element should contain   id=plErrorText     Incorrect login details - please try again.
   Capture Page Screenshot

TempDisabledError
   wait until page contains element  id=plErrorText
   element should contain   id=plErrorText     User is temporarily disabled.
   Capture Page Screenshot

ForgotPassword
    wait until page contains element    xpath=//*[@id="resetPasswordLink"]/a
    click element   xpath=//*[@id="resetPasswordLink"]/a

    #wait until page contains element  id=content
    #element should contain  id=content   Please check you have entered the details correctly and try again

#verifyloginPageHeading
 #   wait until page contains element  id=content
  #  element should contain  id=content  This is a new service – your feedback will help us to improve it.

