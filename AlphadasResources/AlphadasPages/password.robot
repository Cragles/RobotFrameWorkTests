*** Settings ***
Resource  ../AlphadasPO/passwordPage.robot

*** Keywords ***

ChangePassword
    [Arguments]    ${Curpass}   ${Newpass}      ${Confirmpass}
    passwordPage.CorrectPage
    passwordPage.VerifyPasswordPageHeading
    passwordPage.EnterCurrentPassword       ${Curpass}
    passwordPage.EnterNewPassword       ${Newpass}
    passwordPage.ConfirmPassword        ${Confirmpass}
    passwordPage.ClickChangePassword
    passwordPage.VerifySucessContainer




