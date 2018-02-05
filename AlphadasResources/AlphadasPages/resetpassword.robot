*** Settings ***
Resource  ../AlphadasPO/resetpasswordPage.robot

*** Keywords ***
ResetPassword
    [Arguments]     ${UserName}
    resetpasswordPage.CorrectPage
    resetpasswordPage.VerifyPasswordPageHeading
    resetpasswordPage.EnterUserName      ${UserName}
    resetpasswordPage.ClickSendVerificationLink
    resetpasswordPage.VerifyMessage
